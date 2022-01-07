; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_enable_filters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_enable_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sock = type { i32 }
%struct.can_filter = type { i32, i32 }

@raw_rcv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sock*, %struct.can_filter*, i32)* @raw_enable_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_enable_filters(%struct.net_device* %0, %struct.sock* %1, %struct.can_filter* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.can_filter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.can_filter* %2, %struct.can_filter** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %58, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load %struct.can_filter*, %struct.can_filter** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %17, i64 %19
  %21 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.can_filter*, %struct.can_filter** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %23, i64 %25
  %27 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @raw_rcv, align 4
  %30 = load %struct.sock*, %struct.sock** %6, align 8
  %31 = call i32 @can_rx_register(%struct.net_device* %16, i32 %22, i32 %28, i32 %29, %struct.sock* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %39, %34
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %10, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = load %struct.can_filter*, %struct.can_filter** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %41, i64 %43
  %45 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.can_filter*, %struct.can_filter** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %47, i64 %49
  %51 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @raw_rcv, align 4
  %54 = load %struct.sock*, %struct.sock** %6, align 8
  %55 = call i32 @can_rx_unregister(%struct.net_device* %40, i32 %46, i32 %52, i32 %53, %struct.sock* %54)
  br label %35

56:                                               ; preds = %35
  br label %61

57:                                               ; preds = %15
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %11

61:                                               ; preds = %56, %11
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @can_rx_register(%struct.net_device*, i32, i32, i32, %struct.sock*, i8*) #1

declare dso_local i32 @can_rx_unregister(%struct.net_device*, i32, i32, i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
