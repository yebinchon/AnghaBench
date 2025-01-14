; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_send_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_send_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"could not send %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_send_sync(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.sk_buff* @alloc_skb(i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = icmp eq %struct.sk_buff* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dccp_packet_name(i32 %18)
  %20 = call i32 @DCCP_CRIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %40

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @skb_reserve(%struct.sk_buff* %22, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i32 @dccp_transmit_skb(%struct.sock* %37, %struct.sk_buff* %38)
  br label %40

40:                                               ; preds = %21, %17
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @DCCP_CRIT(i8*, i32) #1

declare dso_local i32 @dccp_packet_name(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_4__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_transmit_skb(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
