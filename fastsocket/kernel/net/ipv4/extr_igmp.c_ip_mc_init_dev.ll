; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_init_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { i32, i32, i32, i32, i64, i64, i32, i64, i32* }

@IGMP_Unsolicited_Report_Count = common dso_local global i32 0, align 4
@igmp_gq_timer_expire = common dso_local global i32 0, align 4
@igmp_ifc_timer_expire = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_mc_init_dev(%struct.in_device* %0) #0 {
  %2 = alloca %struct.in_device*, align 8
  store %struct.in_device* %0, %struct.in_device** %2, align 8
  %3 = call i32 (...) @ASSERT_RTNL()
  %4 = load %struct.in_device*, %struct.in_device** %2, align 8
  %5 = getelementptr inbounds %struct.in_device, %struct.in_device* %4, i32 0, i32 8
  store i32* null, i32** %5, align 8
  %6 = load %struct.in_device*, %struct.in_device** %2, align 8
  %7 = getelementptr inbounds %struct.in_device, %struct.in_device* %6, i32 0, i32 1
  %8 = call i32 @rwlock_init(i32* %7)
  %9 = load %struct.in_device*, %struct.in_device** %2, align 8
  %10 = getelementptr inbounds %struct.in_device, %struct.in_device* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_init(i32* %10)
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
