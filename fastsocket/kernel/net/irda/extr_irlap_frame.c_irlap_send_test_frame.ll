; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_send_test_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap_frame.c_irlap_send_test_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irlap_cb = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.test_frame = type { i32, i64, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@CBROADCAST = common dso_local global i64 0, align 8
@LAP_ADDR_HEADER = common dso_local global i32 0, align 4
@LAP_CTRL_HEADER = common dso_local global i32 0, align 4
@TEST_RSP = common dso_local global i32 0, align 4
@PF_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irlap_send_test_frame(%struct.irlap_cb* %0, i64 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.irlap_cb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.test_frame*, align 8
  %11 = alloca i64*, align 8
  store %struct.irlap_cb* %0, %struct.irlap_cb** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 32
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.sk_buff* @alloc_skb(i32 %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %77

23:                                               ; preds = %4
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @CBROADCAST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = call i64* @skb_put(%struct.sk_buff* %28, i32 32)
  %30 = bitcast i64* %29 to %struct.test_frame*
  store %struct.test_frame* %30, %struct.test_frame** %10, align 8
  %31 = load %struct.irlap_cb*, %struct.irlap_cb** %5, align 8
  %32 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.test_frame*, %struct.test_frame** %10, align 8
  %36 = getelementptr inbounds %struct.test_frame, %struct.test_frame* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %struct.test_frame*, %struct.test_frame** %10, align 8
  %40 = getelementptr inbounds %struct.test_frame, %struct.test_frame* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %48

41:                                               ; preds = %23
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = load i32, i32* @LAP_ADDR_HEADER, align 4
  %44 = load i32, i32* @LAP_CTRL_HEADER, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i64* @skb_put(%struct.sk_buff* %42, i32 %45)
  %47 = bitcast i64* %46 to %struct.test_frame*
  store %struct.test_frame* %47, %struct.test_frame** %10, align 8
  br label %48

48:                                               ; preds = %41, %27
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.test_frame*, %struct.test_frame** %10, align 8
  %51 = getelementptr inbounds %struct.test_frame, %struct.test_frame* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @TEST_RSP, align 4
  %53 = load i32, i32* @PF_BIT, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.test_frame*, %struct.test_frame** %10, align 8
  %56 = getelementptr inbounds %struct.test_frame, %struct.test_frame* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64* @skb_put(%struct.sk_buff* %57, i32 %60)
  store i64* %61, i64** %11, align 8
  %62 = load i64*, i64** %11, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memcpy(i64* %62, i32 %65, i32 %68)
  %70 = load %struct.irlap_cb*, %struct.irlap_cb** %5, align 8
  %71 = load %struct.irlap_cb*, %struct.irlap_cb** %5, align 8
  %72 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %71, i32 0, i32 0
  %73 = call i32 @irlap_wait_min_turn_around(%struct.irlap_cb* %70, i32* %72)
  %74 = load %struct.irlap_cb*, %struct.irlap_cb** %5, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = call i32 @irlap_queue_xmit(%struct.irlap_cb* %74, %struct.sk_buff* %75)
  br label %77

77:                                               ; preds = %48, %22
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @irlap_wait_min_turn_around(%struct.irlap_cb*, i32*) #1

declare dso_local i32 @irlap_queue_xmit(%struct.irlap_cb*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
