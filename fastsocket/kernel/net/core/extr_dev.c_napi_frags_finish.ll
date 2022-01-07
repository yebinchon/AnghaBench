; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_napi_frags_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_napi_frags_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.sk_buff = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @napi_frags_finish(%struct.napi_struct* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.napi_struct*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %38 [
    i32 128, label %8
    i32 131, label %8
    i32 132, label %30
    i32 129, label %33
    i32 130, label %37
  ]

8:                                                ; preds = %3, %3
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %11 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @__eth_type_trans_no_dev_change(%struct.sk_buff* %9, i32 %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 131
  br i1 %17, label %18, label %23

18:                                               ; preds = %8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load i32, i32* @ETH_HLEN, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32 @skb_gro_pull(%struct.sk_buff* %19, i32 %21)
  br label %29

23:                                               ; preds = %8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @netif_receive_skb(%struct.sk_buff* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 132, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %23
  br label %29

29:                                               ; preds = %28, %18
  br label %38

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @kfree_skb(%struct.sk_buff* %31)
  br label %38

33:                                               ; preds = %3
  %34 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32 @napi_reuse_skb(%struct.napi_struct* %34, %struct.sk_buff* %35)
  br label %38

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %3, %37, %33, %30, %29
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @__eth_type_trans_no_dev_change(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_gro_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @napi_reuse_skb(%struct.napi_struct*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
