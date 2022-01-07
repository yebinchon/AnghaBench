; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/econet/extr_af_econet.c_econet_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/econet/extr_af_econet.c_econet_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.ec_device* }
%struct.ec_device = type { i64 }
%struct.notifier_block = type { i32 }

@init_net = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@net2dev_map = common dso_local global %struct.net_device** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @econet_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @econet_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ec_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %8, align 8
  %13 = call i32 @dev_net(%struct.net_device* %12)
  %14 = call i32 @net_eq(i32 %13, i32* @init_net)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  switch i64 %19, label %46 [
    i64 128, label %20
  ]

20:                                               ; preds = %18
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load %struct.ec_device*, %struct.ec_device** %22, align 8
  store %struct.ec_device* %23, %struct.ec_device** %9, align 8
  %24 = load %struct.ec_device*, %struct.ec_device** %9, align 8
  %25 = icmp ne %struct.ec_device* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.net_device**, %struct.net_device*** @net2dev_map, align 8
  %28 = getelementptr inbounds %struct.net_device*, %struct.net_device** %27, i64 0
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = icmp eq %struct.net_device* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.net_device**, %struct.net_device*** @net2dev_map, align 8
  %34 = getelementptr inbounds %struct.net_device*, %struct.net_device** %33, i64 0
  store %struct.net_device* null, %struct.net_device** %34, align 8
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.net_device**, %struct.net_device*** @net2dev_map, align 8
  %37 = load %struct.ec_device*, %struct.ec_device** %9, align 8
  %38 = getelementptr inbounds %struct.ec_device, %struct.ec_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.net_device*, %struct.net_device** %36, i64 %39
  store %struct.net_device* null, %struct.net_device** %40, align 8
  %41 = load %struct.ec_device*, %struct.ec_device** %9, align 8
  %42 = call i32 @kfree(%struct.ec_device* %41)
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  store %struct.ec_device* null, %struct.ec_device** %44, align 8
  br label %45

45:                                               ; preds = %35, %20
  br label %46

46:                                               ; preds = %18, %45
  %47 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.ec_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
