; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_limit.c_ebt_limit_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_limit.c_ebt_limit_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i64 }
%struct.ebt_limit_info = type { i64, i64, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@limit_lock = common dso_local global i32 0, align 4
@CREDITS_PER_JIFFY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @ebt_limit_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_limit_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.ebt_limit_info*, align 8
  %7 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %8 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %9 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.ebt_limit_info*
  store %struct.ebt_limit_info* %12, %struct.ebt_limit_info** %6, align 8
  %13 = load i64, i64* @jiffies, align 8
  store i64 %13, i64* %7, align 8
  %14 = call i32 @spin_lock_bh(i32* @limit_lock)
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %6, align 8
  %17 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %16, i32 0, i32 3
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @xchg(i32* %17, i64 %18)
  %20 = sub i64 %15, %19
  %21 = load i64, i64* @CREDITS_PER_JIFFY, align 8
  %22 = mul i64 %20, %21
  %23 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %6, align 8
  %24 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %6, align 8
  %28 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %6, align 8
  %31 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %6, align 8
  %36 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %6, align 8
  %39 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %2
  %41 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %6, align 8
  %42 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %6, align 8
  %45 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %6, align 8
  %50 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ebt_limit_info*, %struct.ebt_limit_info** %6, align 8
  %53 = getelementptr inbounds %struct.ebt_limit_info, %struct.ebt_limit_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = call i32 @spin_unlock_bh(i32* @limit_lock)
  store i32 1, i32* %3, align 4
  br label %59

57:                                               ; preds = %40
  %58 = call i32 @spin_unlock_bh(i32* @limit_lock)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %48
  %60 = load i32, i32* %3, align 4
  ret i32 %60
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
