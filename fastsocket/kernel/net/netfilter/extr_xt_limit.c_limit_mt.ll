; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_limit.c_limit_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_limit.c_limit_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.xt_rateinfo* }
%struct.xt_rateinfo = type { i64, i64, %struct.xt_limit_priv* }
%struct.xt_limit_priv = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@limit_lock = common dso_local global i32 0, align 4
@CREDITS_PER_JIFFY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @limit_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @limit_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.xt_rateinfo*, align 8
  %7 = alloca %struct.xt_limit_priv*, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %9 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %9, i32 0, i32 0
  %11 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %10, align 8
  store %struct.xt_rateinfo* %11, %struct.xt_rateinfo** %6, align 8
  %12 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %6, align 8
  %13 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %12, i32 0, i32 2
  %14 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %13, align 8
  store %struct.xt_limit_priv* %14, %struct.xt_limit_priv** %7, align 8
  %15 = load i64, i64* @jiffies, align 8
  store i64 %15, i64* %8, align 8
  %16 = call i32 @spin_lock_bh(i32* @limit_lock)
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %19 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @xchg(i32* %19, i64 %20)
  %22 = sub i64 %17, %21
  %23 = load i64, i64* @CREDITS_PER_JIFFY, align 8
  %24 = mul i64 %22, %23
  %25 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %26 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %30 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %6, align 8
  %33 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %6, align 8
  %38 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %41 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %2
  %43 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %44 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %6, align 8
  %47 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %6, align 8
  %52 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %55 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = call i32 @spin_unlock_bh(i32* @limit_lock)
  store i32 1, i32* %3, align 4
  br label %61

59:                                               ; preds = %42
  %60 = call i32 @spin_unlock_bh(i32* @limit_lock)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %50
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @xchg(i32*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
