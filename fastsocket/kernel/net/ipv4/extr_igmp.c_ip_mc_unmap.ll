; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { %struct.ip_mc_list* }
%struct.ip_mc_list = type { %struct.ip_mc_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_mc_unmap(%struct.in_device* %0) #0 {
  %2 = alloca %struct.in_device*, align 8
  %3 = alloca %struct.ip_mc_list*, align 8
  store %struct.in_device* %0, %struct.in_device** %2, align 8
  %4 = call i32 (...) @ASSERT_RTNL()
  %5 = load %struct.in_device*, %struct.in_device** %2, align 8
  %6 = getelementptr inbounds %struct.in_device, %struct.in_device* %5, i32 0, i32 0
  %7 = load %struct.ip_mc_list*, %struct.ip_mc_list** %6, align 8
  store %struct.ip_mc_list* %7, %struct.ip_mc_list** %3, align 8
  br label %8

8:                                                ; preds = %14, %1
  %9 = load %struct.ip_mc_list*, %struct.ip_mc_list** %3, align 8
  %10 = icmp ne %struct.ip_mc_list* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.ip_mc_list*, %struct.ip_mc_list** %3, align 8
  %13 = call i32 @igmp_group_dropped(%struct.ip_mc_list* %12)
  br label %14

14:                                               ; preds = %11
  %15 = load %struct.ip_mc_list*, %struct.ip_mc_list** %3, align 8
  %16 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %15, i32 0, i32 0
  %17 = load %struct.ip_mc_list*, %struct.ip_mc_list** %16, align 8
  store %struct.ip_mc_list* %17, %struct.ip_mc_list** %3, align 8
  br label %8

18:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @igmp_group_dropped(%struct.ip_mc_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
