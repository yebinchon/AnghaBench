; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { %struct.ip_mc_list* }
%struct.ip_mc_list = type { %struct.ip_mc_list* }

@IGMP_ALL_HOSTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_mc_up(%struct.in_device* %0) #0 {
  %2 = alloca %struct.in_device*, align 8
  %3 = alloca %struct.ip_mc_list*, align 8
  store %struct.in_device* %0, %struct.in_device** %2, align 8
  %4 = call i32 (...) @ASSERT_RTNL()
  %5 = load %struct.in_device*, %struct.in_device** %2, align 8
  %6 = load i32, i32* @IGMP_ALL_HOSTS, align 4
  %7 = call i32 @ip_mc_inc_group(%struct.in_device* %5, i32 %6)
  %8 = load %struct.in_device*, %struct.in_device** %2, align 8
  %9 = getelementptr inbounds %struct.in_device, %struct.in_device* %8, i32 0, i32 0
  %10 = load %struct.ip_mc_list*, %struct.ip_mc_list** %9, align 8
  store %struct.ip_mc_list* %10, %struct.ip_mc_list** %3, align 8
  br label %11

11:                                               ; preds = %17, %1
  %12 = load %struct.ip_mc_list*, %struct.ip_mc_list** %3, align 8
  %13 = icmp ne %struct.ip_mc_list* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.ip_mc_list*, %struct.ip_mc_list** %3, align 8
  %16 = call i32 @igmp_group_added(%struct.ip_mc_list* %15)
  br label %17

17:                                               ; preds = %14
  %18 = load %struct.ip_mc_list*, %struct.ip_mc_list** %3, align 8
  %19 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %18, i32 0, i32 0
  %20 = load %struct.ip_mc_list*, %struct.ip_mc_list** %19, align 8
  store %struct.ip_mc_list* %20, %struct.ip_mc_list** %3, align 8
  br label %11

21:                                               ; preds = %11
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @ip_mc_inc_group(%struct.in_device*, i32) #1

declare dso_local i32 @igmp_group_added(%struct.ip_mc_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
