; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_callback_txdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_callback_txdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { %struct.sock* }
%struct.sock = type { i64, i32 (%struct.sock*)* }
%struct.iucv_message = type { i32 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.sk_buff_head = type { i32, %struct.sk_buff* }
%struct.TYPE_2__ = type { %struct.sk_buff_head }

@CB_TAG_LEN = common dso_local global i32 0, align 4
@IUCV_CLOSING = common dso_local global i64 0, align 8
@IUCV_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_path*, %struct.iucv_message*)* @iucv_callback_txdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_callback_txdone(%struct.iucv_path* %0, %struct.iucv_message* %1) #0 {
  %3 = alloca %struct.iucv_path*, align 8
  %4 = alloca %struct.iucv_message*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  store %struct.iucv_path* %0, %struct.iucv_path** %3, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %4, align 8
  %10 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %11 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.TYPE_2__* @iucv_sk(%struct.sock* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.sk_buff_head* %15, %struct.sk_buff_head** %7, align 8
  %16 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %17 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %16, i32 0, i32 1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = call i32 @bh_lock_sock(%struct.sock* %19)
  %21 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %22 = call i64 @skb_queue_empty(%struct.sk_buff_head* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %68, label %24

24:                                               ; preds = %2
  %25 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %26 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %44, %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %32 = bitcast %struct.sk_buff_head* %31 to %struct.sk_buff*
  %33 = icmp ne %struct.sk_buff* %30, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.iucv_message*, %struct.iucv_message** %4, align 8
  %36 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %35, i32 0, i32 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = call i32 @CB_TAG(%struct.sk_buff* %37)
  %39 = load i32, i32* @CB_TAG_LEN, align 4
  %40 = call i32 @memcmp(i32* %36, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %6, align 8
  br label %48

44:                                               ; preds = %34
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %8, align 8
  br label %29

48:                                               ; preds = %42, %29
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %54 = call i32 @__skb_unlink(%struct.sk_buff* %52, %struct.sk_buff_head* %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %57 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %56, i32 0, i32 0
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call i32 @kfree_skb(%struct.sk_buff* %63)
  %65 = load %struct.sock*, %struct.sock** %5, align 8
  %66 = call i32 @iucv_sock_wake_msglim(%struct.sock* %65)
  br label %67

67:                                               ; preds = %62, %55
  br label %68

68:                                               ; preds = %67, %2
  %69 = load %struct.sock*, %struct.sock** %5, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IUCV_CLOSING, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load %struct.sock*, %struct.sock** %5, align 8
  %76 = call %struct.TYPE_2__* @iucv_sk(%struct.sock* %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i64 @skb_queue_empty(%struct.sk_buff_head* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load i64, i64* @IUCV_CLOSED, align 8
  %82 = load %struct.sock*, %struct.sock** %5, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.sock*, %struct.sock** %5, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 1
  %86 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %85, align 8
  %87 = load %struct.sock*, %struct.sock** %5, align 8
  %88 = call i32 %86(%struct.sock* %87)
  br label %89

89:                                               ; preds = %80, %74
  br label %90

90:                                               ; preds = %89, %68
  %91 = load %struct.sock*, %struct.sock** %5, align 8
  %92 = call i32 @bh_unlock_sock(%struct.sock* %91)
  ret void
}

declare dso_local %struct.TYPE_2__* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @CB_TAG(%struct.sk_buff*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @iucv_sock_wake_msglim(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
