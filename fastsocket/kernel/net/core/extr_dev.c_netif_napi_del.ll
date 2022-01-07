; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netif_napi_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_netif_napi_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i64, %struct.sk_buff*, i32 }
%struct.sk_buff = type { %struct.sk_buff* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netif_napi_del(%struct.napi_struct* %0) #0 {
  %2 = alloca %struct.napi_struct*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %2, align 8
  %5 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %6 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %5, i32 0, i32 2
  %7 = call i32 @list_del_init(i32* %6)
  %8 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %9 = call i32 @napi_free_frags(%struct.napi_struct* %8)
  %10 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %11 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %10, i32 0, i32 1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %3, align 8
  br label %13

13:                                               ; preds = %24, %1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %21, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call i32 @kfree_skb(%struct.sk_buff* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %3, align 8
  br label %13

26:                                               ; preds = %13
  %27 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %28 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %27, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %28, align 8
  %29 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %30 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @napi_free_frags(%struct.napi_struct*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
