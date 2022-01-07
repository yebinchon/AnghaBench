; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_rcvqueue_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_rcvqueue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.slic_rcvqueue }
%struct.slic_rcvqueue = type { i64, %struct.sk_buff*, i32* }
%struct.sk_buff = type { %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @slic_rcvqueue_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_rcvqueue_free(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.slic_rcvqueue*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  store %struct.slic_rcvqueue* %6, %struct.slic_rcvqueue** %3, align 8
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %9 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %8, i32 0, i32 1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %14 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %13, i32 0, i32 1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %4, align 8
  %16 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %17 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %16, i32 0, i32 1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %21 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %22 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %21, i32 0, i32 1
  store %struct.sk_buff* %20, %struct.sk_buff** %22, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @dev_kfree_skb(%struct.sk_buff* %23)
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %27 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %29 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %28, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %29, align 8
  %30 = load %struct.slic_rcvqueue*, %struct.slic_rcvqueue** %3, align 8
  %31 = getelementptr inbounds %struct.slic_rcvqueue, %struct.slic_rcvqueue* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  ret void
}

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
