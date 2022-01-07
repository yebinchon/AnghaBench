; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_in.c_nr_queue_rx_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_in.c_nr_queue_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.nr_sock = type { i64, i32 }

@NR_NETWORK_LEN = common dso_local global i64 0, align 8
@NR_TRANSPORT_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @nr_queue_rx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nr_queue_rx_frame(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nr_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %9, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.nr_sock* @nr_sk(%struct.sock* %12)
  store %struct.nr_sock* %13, %struct.nr_sock** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = load i64, i64* @NR_NETWORK_LEN, align 8
  %16 = load i64, i64* @NR_TRANSPORT_LEN, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @skb_pull(%struct.sk_buff* %14, i64 %17)
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = call i32 @nr_start_idletimer(%struct.sock* %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %28 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %32 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %31, i32 0, i32 1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @skb_queue_tail(i32* %32, %struct.sk_buff* %33)
  store i32 0, i32* %4, align 4
  br label %90

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %86, label %38

38:                                               ; preds = %35
  %39 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %40 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %38
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %48 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %52 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %51, i32 0, i32 1
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i32 @skb_queue_tail(i32* %52, %struct.sk_buff* %53)
  %55 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %56 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call %struct.sk_buff* @alloc_skb(i64 %57, i32 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %9, align 8
  %60 = icmp eq %struct.sk_buff* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %90

62:                                               ; preds = %43
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = call i32 @skb_reset_transport_header(%struct.sk_buff* %63)
  br label %65

65:                                               ; preds = %70, %62
  %66 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %67 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %66, i32 0, i32 1
  %68 = call %struct.sk_buff* @skb_dequeue(i32* %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %8, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @skb_put(%struct.sk_buff* %72, i64 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %71, i32 %76, i64 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = call i32 @kfree_skb(%struct.sk_buff* %81)
  br label %65

83:                                               ; preds = %65
  %84 = load %struct.nr_sock*, %struct.nr_sock** %10, align 8
  %85 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %38, %35
  %87 = load %struct.sock*, %struct.sock** %5, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = call i32 @sock_queue_rcv_skb(%struct.sock* %87, %struct.sk_buff* %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %61, %23
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @nr_start_idletimer(%struct.sock*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
