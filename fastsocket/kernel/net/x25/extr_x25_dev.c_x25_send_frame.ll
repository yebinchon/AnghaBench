; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_dev.c_x25_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_dev.c_x25_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.x25_neigh = type { %struct.TYPE_2__* }

@ETH_P_X25 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x25_send_frame(%struct.sk_buff* %0, %struct.x25_neigh* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.x25_neigh*, align 8
  %5 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.x25_neigh* %1, %struct.x25_neigh** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call i32 @skb_reset_network_header(%struct.sk_buff* %6)
  %8 = load %struct.x25_neigh*, %struct.x25_neigh** %4, align 8
  %9 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %17 [
    i32 128, label %13
  ]

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i8* @skb_push(%struct.sk_buff* %14, i32 1)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  store i8 0, i8* %16, align 1
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32 @kfree_skb(%struct.sk_buff* %18)
  br label %32

20:                                               ; preds = %13
  %21 = load i32, i32* @ETH_P_X25, align 4
  %22 = call i32 @htons(i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.x25_neigh*, %struct.x25_neigh** %4, align 8
  %26 = getelementptr inbounds %struct.x25_neigh, %struct.x25_neigh* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %29, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call i32 @dev_queue_xmit(%struct.sk_buff* %30)
  br label %32

32:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
