; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_mark.c_ebt_mark_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_mark.c_ebt_mark_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { %struct.ebt_mark_t_info* }
%struct.ebt_mark_t_info = type { i32, i32 }

@MARK_SET_VALUE = common dso_local global i32 0, align 4
@MARK_OR_VALUE = common dso_local global i32 0, align 4
@MARK_AND_VALUE = common dso_local global i32 0, align 4
@EBT_VERDICT_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @ebt_mark_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_mark_tg(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_target_param*, align 8
  %5 = alloca %struct.ebt_mark_t_info*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %4, align 8
  %7 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %7, i32 0, i32 0
  %9 = load %struct.ebt_mark_t_info*, %struct.ebt_mark_t_info** %8, align 8
  store %struct.ebt_mark_t_info* %9, %struct.ebt_mark_t_info** %5, align 8
  %10 = load %struct.ebt_mark_t_info*, %struct.ebt_mark_t_info** %5, align 8
  %11 = getelementptr inbounds %struct.ebt_mark_t_info, %struct.ebt_mark_t_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, -16
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MARK_SET_VALUE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.ebt_mark_t_info*, %struct.ebt_mark_t_info** %5, align 8
  %19 = getelementptr inbounds %struct.ebt_mark_t_info, %struct.ebt_mark_t_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MARK_OR_VALUE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.ebt_mark_t_info*, %struct.ebt_mark_t_info** %5, align 8
  %29 = getelementptr inbounds %struct.ebt_mark_t_info, %struct.ebt_mark_t_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %56

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MARK_AND_VALUE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.ebt_mark_t_info*, %struct.ebt_mark_t_info** %5, align 8
  %41 = getelementptr inbounds %struct.ebt_mark_t_info, %struct.ebt_mark_t_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %55

47:                                               ; preds = %35
  %48 = load %struct.ebt_mark_t_info*, %struct.ebt_mark_t_info** %5, align 8
  %49 = getelementptr inbounds %struct.ebt_mark_t_info, %struct.ebt_mark_t_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47, %39
  br label %56

56:                                               ; preds = %55, %27
  br label %57

57:                                               ; preds = %56, %17
  %58 = load %struct.ebt_mark_t_info*, %struct.ebt_mark_t_info** %5, align 8
  %59 = getelementptr inbounds %struct.ebt_mark_t_info, %struct.ebt_mark_t_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @EBT_VERDICT_BITS, align 4
  %62 = xor i32 %61, -1
  %63 = or i32 %60, %62
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
