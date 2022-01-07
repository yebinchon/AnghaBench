; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_in.c_x25_queue_rx_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_in.c_x25_queue_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*, i32)*, i32 }
%struct.sk_buff = type { i32 }
%struct.x25_sock = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@X25_EXT_MIN_LEN = common dso_local global i32 0, align 4
@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @x25_queue_rx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_queue_rx_frame(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.x25_sock*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %9, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.x25_sock* @x25_sk(%struct.sock* %13)
  store %struct.x25_sock* %14, %struct.x25_sock** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %22 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %26 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %25, i32 0, i32 2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @skb_queue_tail(i32* %26, %struct.sk_buff* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = call i32 @skb_set_owner_r(%struct.sk_buff* %29, %struct.sock* %30)
  store i32 0, i32* %4, align 4
  br label %134

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %112, label %35

35:                                               ; preds = %32
  %36 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %37 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %112

40:                                               ; preds = %35
  %41 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %42 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.sk_buff* @alloc_skb(i32 %48, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %9, align 8
  %51 = icmp eq %struct.sk_buff* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  store i32 1, i32* %4, align 4
  br label %134

55:                                               ; preds = %40
  %56 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %57 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %56, i32 0, i32 2
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 @skb_queue_tail(i32* %57, %struct.sk_buff* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = call i32 @skb_reset_transport_header(%struct.sk_buff* %60)
  %62 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %63 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %62, i32 0, i32 2
  %64 = call %struct.sk_buff* @skb_dequeue(i32* %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %8, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @skb_put(%struct.sk_buff* %66, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %65, i32 %70, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  br label %77

77:                                               ; preds = %94, %55
  %78 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %79 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %78, i32 0, i32 2
  %80 = call %struct.sk_buff* @skb_dequeue(i32* %79)
  store %struct.sk_buff* %80, %struct.sk_buff** %8, align 8
  %81 = icmp ne %struct.sk_buff* %80, null
  br i1 %81, label %82, label %109

82:                                               ; preds = %77
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %85 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @X25_EXT_MIN_LEN, align 4
  br label %94

92:                                               ; preds = %82
  %93 = load i32, i32* @X25_STD_MIN_LEN, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = call i32 @skb_pull(%struct.sk_buff* %83, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @skb_put(%struct.sk_buff* %98, i32 %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %97, i32 %102, i32 %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = call i32 @kfree_skb(%struct.sk_buff* %107)
  br label %77

109:                                              ; preds = %77
  %110 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %111 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %35, %32
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = load %struct.sock*, %struct.sock** %5, align 8
  %115 = call i32 @skb_set_owner_r(%struct.sk_buff* %113, %struct.sock* %114)
  %116 = load %struct.sock*, %struct.sock** %5, align 8
  %117 = getelementptr inbounds %struct.sock, %struct.sock* %116, i32 0, i32 1
  %118 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %119 = call i32 @skb_queue_tail(i32* %117, %struct.sk_buff* %118)
  %120 = load %struct.sock*, %struct.sock** %5, align 8
  %121 = load i32, i32* @SOCK_DEAD, align 4
  %122 = call i32 @sock_flag(%struct.sock* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %112
  %125 = load %struct.sock*, %struct.sock** %5, align 8
  %126 = getelementptr inbounds %struct.sock, %struct.sock* %125, i32 0, i32 0
  %127 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %126, align 8
  %128 = load %struct.sock*, %struct.sock** %5, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 %127(%struct.sock* %128, i32 %131)
  br label %133

133:                                              ; preds = %124, %112
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %52, %17
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
