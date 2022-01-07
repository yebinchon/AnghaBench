; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_statistic.c_statistic_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_statistic.c_statistic_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.xt_statistic_info* }
%struct.xt_statistic_info = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@XT_STATISTIC_INVERT = common dso_local global i32 0, align 4
@nth_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @statistic_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @statistic_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_match_param*, align 8
  %5 = alloca %struct.xt_statistic_info*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %4, align 8
  %7 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %7, i32 0, i32 0
  %9 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %8, align 8
  store %struct.xt_statistic_info* %9, %struct.xt_statistic_info** %5, align 8
  %10 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %5, align 8
  %11 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @XT_STATISTIC_INVERT, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %5, align 8
  %16 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %58 [
    i32 128, label %18
    i32 129, label %33
  ]

18:                                               ; preds = %2
  %19 = call i32 (...) @net_random()
  %20 = and i32 %19, 2147483647
  %21 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %5, align 8
  %22 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %27, %18
  br label %58

33:                                               ; preds = %2
  %34 = call i32 @spin_lock_bh(i32* @nth_lock)
  %35 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %5, align 8
  %36 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %5, align 8
  %42 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %39, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %33
  %48 = load %struct.xt_statistic_info*, %struct.xt_statistic_info** %5, align 8
  %49 = getelementptr inbounds %struct.xt_statistic_info, %struct.xt_statistic_info* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %47, %33
  %57 = call i32 @spin_unlock_bh(i32* @nth_lock)
  br label %58

58:                                               ; preds = %2, %56, %32
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @net_random(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
