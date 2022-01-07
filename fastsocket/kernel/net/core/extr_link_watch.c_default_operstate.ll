; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_link_watch.c_default_operstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_link_watch.c_default_operstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i64 }

@IF_OPER_LOWERLAYERDOWN = common dso_local global i8 0, align 1
@IF_OPER_DOWN = common dso_local global i8 0, align 1
@IF_OPER_DORMANT = common dso_local global i8 0, align 1
@IF_OPER_UP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.net_device*)* @default_operstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @default_operstate(%struct.net_device* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %4 = load %struct.net_device*, %struct.net_device** %3, align 8
  %5 = call i32 @netif_carrier_ok(%struct.net_device* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load i8, i8* @IF_OPER_LOWERLAYERDOWN, align 1
  %17 = zext i8 %16 to i32
  br label %21

18:                                               ; preds = %7
  %19 = load i8, i8* @IF_OPER_DOWN, align 1
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %17, %15 ], [ %20, %18 ]
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %2, align 1
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i64 @netif_dormant(%struct.net_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i8, i8* @IF_OPER_DORMANT, align 1
  store i8 %29, i8* %2, align 1
  br label %32

30:                                               ; preds = %24
  %31 = load i8, i8* @IF_OPER_UP, align 1
  store i8 %31, i8* %2, align 1
  br label %32

32:                                               ; preds = %30, %28, %21
  %33 = load i8, i8* %2, align 1
  ret i8 %33
}

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @netif_dormant(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
