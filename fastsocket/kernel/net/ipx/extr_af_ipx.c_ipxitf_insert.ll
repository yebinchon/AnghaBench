; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipx_interface = type { i32 }

@ipx_interfaces_lock = common dso_local global i32 0, align 4
@ipx_interfaces = common dso_local global i32 0, align 4
@ipxcfg_auto_select_primary = common dso_local global i64 0, align 8
@ipx_primary_net = common dso_local global %struct.ipx_interface* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipx_interface*)* @ipxitf_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipxitf_insert(%struct.ipx_interface* %0) #0 {
  %2 = alloca %struct.ipx_interface*, align 8
  store %struct.ipx_interface* %0, %struct.ipx_interface** %2, align 8
  %3 = call i32 @spin_lock_bh(i32* @ipx_interfaces_lock)
  %4 = load %struct.ipx_interface*, %struct.ipx_interface** %2, align 8
  %5 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %4, i32 0, i32 0
  %6 = call i32 @list_add_tail(i32* %5, i32* @ipx_interfaces)
  %7 = call i32 @spin_unlock_bh(i32* @ipx_interfaces_lock)
  %8 = load i64, i64* @ipxcfg_auto_select_primary, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.ipx_interface*, %struct.ipx_interface** @ipx_primary_net, align 8
  %12 = icmp ne %struct.ipx_interface* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load %struct.ipx_interface*, %struct.ipx_interface** %2, align 8
  store %struct.ipx_interface* %14, %struct.ipx_interface** @ipx_primary_net, align 8
  br label %15

15:                                               ; preds = %13, %10, %1
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
