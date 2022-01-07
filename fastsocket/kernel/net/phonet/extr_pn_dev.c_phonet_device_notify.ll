; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pn_dev.c_phonet_device_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pn_dev.c_phonet_device_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.phonet_net = type { i32 }

@phonet_net_id = common dso_local global i32 0, align 4
@ARPHRD_PHONET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @phonet_device_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phonet_device_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.phonet_net*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %8, align 8
  %13 = call i32 @dev_net(%struct.net_device* %12)
  %14 = load i32, i32* @phonet_net_id, align 4
  %15 = call %struct.phonet_net* @net_generic(i32 %13, i32 %14)
  store %struct.phonet_net* %15, %struct.phonet_net** %9, align 8
  %16 = load %struct.phonet_net*, %struct.phonet_net** %9, align 8
  %17 = icmp ne %struct.phonet_net* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  switch i64 %20, label %34 [
    i64 129, label %21
    i64 128, label %31
  ]

21:                                               ; preds = %19
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ARPHRD_PHONET, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = call i32 @phonet_device_autoconf(%struct.net_device* %28)
  br label %30

30:                                               ; preds = %27, %21
  br label %34

31:                                               ; preds = %19
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = call i32 @phonet_device_destroy(%struct.net_device* %32)
  br label %34

34:                                               ; preds = %19, %31, %30
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.phonet_net* @net_generic(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @phonet_device_autoconf(%struct.net_device*) #1

declare dso_local i32 @phonet_device_destroy(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
