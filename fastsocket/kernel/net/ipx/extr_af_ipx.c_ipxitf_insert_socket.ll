; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_insert_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipxitf_insert_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipx_interface = type { i32, i32 }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { %struct.ipx_interface* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipx_interface*, %struct.sock*)* @ipxitf_insert_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipxitf_insert_socket(%struct.ipx_interface* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.ipx_interface*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.ipx_interface* %0, %struct.ipx_interface** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %5 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %6 = call i32 @ipxitf_hold(%struct.ipx_interface* %5)
  %7 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %8 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.TYPE_2__* @ipx_sk(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ipx_interface* %10, %struct.ipx_interface** %13, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %16 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %15, i32 0, i32 1
  %17 = call i32 @sk_add_node(%struct.sock* %14, i32* %16)
  %18 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %19 = getelementptr inbounds %struct.ipx_interface, %struct.ipx_interface* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_bh(i32* %19)
  %21 = load %struct.ipx_interface*, %struct.ipx_interface** %3, align 8
  %22 = call i32 @ipxitf_put(%struct.ipx_interface* %21)
  ret void
}

declare dso_local i32 @ipxitf_hold(%struct.ipx_interface*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.TYPE_2__* @ipx_sk(%struct.sock*) #1

declare dso_local i32 @sk_add_node(%struct.sock*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ipxitf_put(%struct.ipx_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
