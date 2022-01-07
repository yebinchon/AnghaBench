; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pn_dev.c_phonet_device_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pn_dev.c_phonet_device_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.phonet_device_list = type { i32 }
%struct.phonet_device = type { i32, i32 }

@RTM_DELADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @phonet_device_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phonet_device_destroy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.phonet_device_list*, align 8
  %4 = alloca %struct.phonet_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @dev_net(%struct.net_device* %6)
  %8 = call %struct.phonet_device_list* @phonet_device_list(i32 %7)
  store %struct.phonet_device_list* %8, %struct.phonet_device_list** %3, align 8
  %9 = call i32 (...) @ASSERT_RTNL()
  %10 = load %struct.phonet_device_list*, %struct.phonet_device_list** %3, align 8
  %11 = getelementptr inbounds %struct.phonet_device_list, %struct.phonet_device_list* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.phonet_device* @__phonet_get(%struct.net_device* %13)
  store %struct.phonet_device* %14, %struct.phonet_device** %4, align 8
  %15 = load %struct.phonet_device*, %struct.phonet_device** %4, align 8
  %16 = icmp ne %struct.phonet_device* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.phonet_device*, %struct.phonet_device** %4, align 8
  %19 = getelementptr inbounds %struct.phonet_device, %struct.phonet_device* %18, i32 0, i32 1
  %20 = call i32 @list_del(i32* %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.phonet_device_list*, %struct.phonet_device_list** %3, align 8
  %23 = getelementptr inbounds %struct.phonet_device_list, %struct.phonet_device_list* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_bh(i32* %23)
  %25 = load %struct.phonet_device*, %struct.phonet_device** %4, align 8
  %26 = icmp ne %struct.phonet_device* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load %struct.phonet_device*, %struct.phonet_device** %4, align 8
  %29 = getelementptr inbounds %struct.phonet_device, %struct.phonet_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @find_first_bit(i32 %30, i32 64)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %40, %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 64
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32, i32* @RTM_DELADDR, align 4
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @phonet_address_notify(i32 %36, %struct.net_device* %37, i32 %38)
  br label %40

40:                                               ; preds = %35
  %41 = load %struct.phonet_device*, %struct.phonet_device** %4, align 8
  %42 = getelementptr inbounds %struct.phonet_device, %struct.phonet_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 1, %44
  %46 = call i32 @find_next_bit(i32 %43, i32 64, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.phonet_device*, %struct.phonet_device** %4, align 8
  %49 = call i32 @kfree(%struct.phonet_device* %48)
  br label %50

50:                                               ; preds = %47, %21
  ret void
}

declare dso_local %struct.phonet_device_list* @phonet_device_list(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.phonet_device* @__phonet_get(%struct.net_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @phonet_address_notify(i32, %struct.net_device*, i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.phonet_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
