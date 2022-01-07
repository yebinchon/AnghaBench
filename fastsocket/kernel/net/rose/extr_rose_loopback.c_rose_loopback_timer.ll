; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_loopback.c_rose_loopback_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_loopback.c_rose_loopback_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.net_device = type { i32 }
%struct.sock = type { i32 }

@loopback_queue = common dso_local global i32 0, align 4
@rose_loopback_neigh = common dso_local global i32 0, align 4
@ROSE_CALL_REQUEST = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rose_loopback_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rose_loopback_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  br label %10

10:                                               ; preds = %85, %56, %1
  %11 = call %struct.sk_buff* @skb_dequeue(i32* @loopback_queue)
  store %struct.sk_buff* %11, %struct.sk_buff** %3, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %13, label %86

13:                                               ; preds = %10
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 8
  %20 = and i32 %19, 3840
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 0
  %27 = and i32 %26, 255
  %28 = add nsw i32 %20, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %7, align 2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  store i32* %38, i32** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sub i32 4095, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = call i32 @skb_reset_transport_header(%struct.sk_buff* %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @rose_loopback_neigh, align 4
  %45 = call %struct.sock* @rose_find_socket(i32 %43, i32 %44)
  store %struct.sock* %45, %struct.sock** %6, align 8
  %46 = load %struct.sock*, %struct.sock** %6, align 8
  %47 = icmp ne %struct.sock* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %13
  %49 = load %struct.sock*, %struct.sock** %6, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = call i64 @rose_process_rx_frame(%struct.sock* %49, %struct.sk_buff* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  br label %56

56:                                               ; preds = %53, %48
  br label %10

57:                                               ; preds = %13
  %58 = load i16, i16* %7, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16, i16* @ROSE_CALL_REQUEST, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load i32*, i32** %5, align 8
  %65 = call %struct.net_device* @rose_dev_get(i32* %64)
  store %struct.net_device* %65, %struct.net_device** %4, align 8
  %66 = icmp ne %struct.net_device* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = load i32, i32* @rose_loopback_neigh, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @rose_rx_call_request(%struct.sk_buff* %68, %struct.net_device* %69, i32 %70, i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  br label %77

77:                                               ; preds = %74, %67
  br label %81

78:                                               ; preds = %63
  %79 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  br label %81

81:                                               ; preds = %78, %77
  br label %85

82:                                               ; preds = %57
  %83 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %84 = call i32 @kfree_skb(%struct.sk_buff* %83)
  br label %85

85:                                               ; preds = %82, %81
  br label %10

86:                                               ; preds = %10
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.sock* @rose_find_socket(i32, i32) #1

declare dso_local i64 @rose_process_rx_frame(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @rose_dev_get(i32*) #1

declare dso_local i64 @rose_rx_call_request(%struct.sk_buff*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
