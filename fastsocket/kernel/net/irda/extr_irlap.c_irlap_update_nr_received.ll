; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap.c_irlap_update_nr_received.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap.c_irlap_update_nr_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irlap_cb = type { i32, i32, i32, i64, i64 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irlap_update_nr_received(%struct.irlap_cb* %0, i32 %1) #0 {
  %3 = alloca %struct.irlap_cb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.irlap_cb* %0, %struct.irlap_cb** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %9 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %18, %12
  %14 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %15 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %14, i32 0, i32 2
  %16 = call %struct.sk_buff* @skb_dequeue(i32* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %5, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @dev_kfree_skb(%struct.sk_buff* %19)
  br label %13

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %25 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %58

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %42, %26
  %28 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %29 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %28, i32 0, i32 2
  %30 = call i32* @skb_peek(i32* %29)
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %34 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = srem i32 %36, 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %37, %38
  br label %40

40:                                               ; preds = %32, %27
  %41 = phi i1 [ false, %27 ], [ %39, %32 ]
  br i1 %41, label %42, label %57

42:                                               ; preds = %40
  %43 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %44 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %43, i32 0, i32 2
  %45 = call %struct.sk_buff* @skb_dequeue(i32* %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @dev_kfree_skb(%struct.sk_buff* %46)
  %48 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %49 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  %52 = srem i32 %51, 8
  %53 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %54 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %27

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %21
  %59 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %60 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %63 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %62, i32 0, i32 2
  %64 = call i64 @skb_queue_len(i32* %63)
  %65 = sub nsw i64 %61, %64
  %66 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %67 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %66, i32 0, i32 4
  store i64 %65, i64* %67, align 8
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32* @skb_peek(i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
