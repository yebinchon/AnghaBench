; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_destroy_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_destroy_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { i32, i32, %struct.ip_mc_list* }
%struct.ip_mc_list = type { %struct.ip_mc_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_mc_destroy_dev(%struct.in_device* %0) #0 {
  %2 = alloca %struct.in_device*, align 8
  %3 = alloca %struct.ip_mc_list*, align 8
  store %struct.in_device* %0, %struct.in_device** %2, align 8
  %4 = call i32 (...) @ASSERT_RTNL()
  %5 = load %struct.in_device*, %struct.in_device** %2, align 8
  %6 = call i32 @ip_mc_down(%struct.in_device* %5)
  %7 = load %struct.in_device*, %struct.in_device** %2, align 8
  %8 = getelementptr inbounds %struct.in_device, %struct.in_device* %7, i32 0, i32 0
  %9 = call i32 @write_lock_bh(i32* %8)
  br label %10

10:                                               ; preds = %15, %1
  %11 = load %struct.in_device*, %struct.in_device** %2, align 8
  %12 = getelementptr inbounds %struct.in_device, %struct.in_device* %11, i32 0, i32 2
  %13 = load %struct.ip_mc_list*, %struct.ip_mc_list** %12, align 8
  store %struct.ip_mc_list* %13, %struct.ip_mc_list** %3, align 8
  %14 = icmp ne %struct.ip_mc_list* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load %struct.ip_mc_list*, %struct.ip_mc_list** %3, align 8
  %17 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %16, i32 0, i32 0
  %18 = load %struct.ip_mc_list*, %struct.ip_mc_list** %17, align 8
  %19 = load %struct.in_device*, %struct.in_device** %2, align 8
  %20 = getelementptr inbounds %struct.in_device, %struct.in_device* %19, i32 0, i32 2
  store %struct.ip_mc_list* %18, %struct.ip_mc_list** %20, align 8
  %21 = load %struct.in_device*, %struct.in_device** %2, align 8
  %22 = getelementptr inbounds %struct.in_device, %struct.in_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.in_device*, %struct.in_device** %2, align 8
  %26 = getelementptr inbounds %struct.in_device, %struct.in_device* %25, i32 0, i32 0
  %27 = call i32 @write_unlock_bh(i32* %26)
  %28 = load %struct.ip_mc_list*, %struct.ip_mc_list** %3, align 8
  %29 = call i32 @ip_mc_clear_src(%struct.ip_mc_list* %28)
  %30 = load %struct.ip_mc_list*, %struct.ip_mc_list** %3, align 8
  %31 = call i32 @ip_ma_put(%struct.ip_mc_list* %30)
  %32 = load %struct.in_device*, %struct.in_device** %2, align 8
  %33 = getelementptr inbounds %struct.in_device, %struct.in_device* %32, i32 0, i32 0
  %34 = call i32 @write_lock_bh(i32* %33)
  br label %10

35:                                               ; preds = %10
  %36 = load %struct.in_device*, %struct.in_device** %2, align 8
  %37 = getelementptr inbounds %struct.in_device, %struct.in_device* %36, i32 0, i32 0
  %38 = call i32 @write_unlock_bh(i32* %37)
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @ip_mc_down(%struct.in_device*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @ip_mc_clear_src(%struct.ip_mc_list*) #1

declare dso_local i32 @ip_ma_put(%struct.ip_mc_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
