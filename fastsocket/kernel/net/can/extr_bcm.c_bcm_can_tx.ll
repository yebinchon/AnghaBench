; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_can_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_can_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_op = type { i64, i64, i32, i32, i32, %struct.can_frame* }
%struct.can_frame = type { i32 }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@init_net = common dso_local global i32 0, align 4
@CFSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_op*)* @bcm_can_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_can_tx(%struct.bcm_op* %0) #0 {
  %2 = alloca %struct.bcm_op*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.can_frame*, align 8
  store %struct.bcm_op* %0, %struct.bcm_op** %2, align 8
  %6 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %7 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %6, i32 0, i32 5
  %8 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %9 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %10 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %8, i64 %11
  store %struct.can_frame* %12, %struct.can_frame** %5, align 8
  %13 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %14 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %72

18:                                               ; preds = %1
  %19 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %20 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i32 %21)
  store %struct.net_device* %22, %struct.net_device** %4, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %72

26:                                               ; preds = %18
  %27 = load i32, i32* @CFSIZ, align 4
  %28 = call i32 (...) @gfp_any()
  %29 = call %struct.sk_buff* @alloc_skb(i32 %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %3, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %69

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = load i32, i32* @CFSIZ, align 4
  %36 = call i32 @skb_put(%struct.sk_buff* %34, i32 %35)
  %37 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %38 = load i32, i32* @CFSIZ, align 4
  %39 = call i32 @memcpy(i32 %36, %struct.can_frame* %37, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  store %struct.net_device* %40, %struct.net_device** %42, align 8
  %43 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %44 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call i32 @can_send(%struct.sk_buff* %48, i32 1)
  %50 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %51 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %55 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %59 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %62 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp uge i64 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %33
  %66 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %67 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %33
  br label %69

69:                                               ; preds = %68, %32
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = call i32 @dev_put(%struct.net_device* %70)
  br label %72

72:                                               ; preds = %69, %25, %17
  ret void
}

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @gfp_any(...) #1

declare dso_local i32 @memcpy(i32, %struct.can_frame*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @can_send(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
