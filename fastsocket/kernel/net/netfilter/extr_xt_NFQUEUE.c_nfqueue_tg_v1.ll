; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_NFQUEUE.c_nfqueue_tg_v1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_NFQUEUE.c_nfqueue_tg_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { %struct.TYPE_2__*, %struct.xt_NFQ_info_v1* }
%struct.TYPE_2__ = type { i64 }
%struct.xt_NFQ_info_v1 = type { i32, i64 }

@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@NFPROTO_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @nfqueue_tg_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfqueue_tg_v1(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_target_param*, align 8
  %5 = alloca %struct.xt_NFQ_info_v1*, align 8
  %6 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %4, align 8
  %7 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %7, i32 0, i32 1
  %9 = load %struct.xt_NFQ_info_v1*, %struct.xt_NFQ_info_v1** %8, align 8
  store %struct.xt_NFQ_info_v1* %9, %struct.xt_NFQ_info_v1** %5, align 8
  %10 = load %struct.xt_NFQ_info_v1*, %struct.xt_NFQ_info_v1** %5, align 8
  %11 = getelementptr inbounds %struct.xt_NFQ_info_v1, %struct.xt_NFQ_info_v1* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.xt_NFQ_info_v1*, %struct.xt_NFQ_info_v1** %5, align 8
  %14 = getelementptr inbounds %struct.xt_NFQ_info_v1, %struct.xt_NFQ_info_v1* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %19 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NFPROTO_IPV4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i32 @hash_v4(%struct.sk_buff* %26)
  %28 = load %struct.xt_NFQ_info_v1*, %struct.xt_NFQ_info_v1** %5, align 8
  %29 = getelementptr inbounds %struct.xt_NFQ_info_v1, %struct.xt_NFQ_info_v1* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = srem i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %32, %33
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %25, %17
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @NF_QUEUE_NR(i64 %37)
  ret i32 %38
}

declare dso_local i32 @hash_v4(%struct.sk_buff*) #1

declare dso_local i32 @NF_QUEUE_NR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
