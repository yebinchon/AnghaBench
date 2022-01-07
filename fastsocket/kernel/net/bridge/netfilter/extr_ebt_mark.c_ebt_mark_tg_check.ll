; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_mark.c_ebt_mark_tg_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_mark.c_ebt_mark_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.ebt_mark_t_info* }
%struct.ebt_mark_t_info = type { i32 }

@EBT_VERDICT_BITS = common dso_local global i32 0, align 4
@BASE_CHAIN = common dso_local global i64 0, align 8
@EBT_RETURN = common dso_local global i32 0, align 4
@NUM_STANDARD_TARGETS = common dso_local global i32 0, align 4
@MARK_SET_VALUE = common dso_local global i32 0, align 4
@MARK_OR_VALUE = common dso_local global i32 0, align 4
@MARK_AND_VALUE = common dso_local global i32 0, align 4
@MARK_XOR_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @ebt_mark_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_mark_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.ebt_mark_t_info*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 0
  %8 = load %struct.ebt_mark_t_info*, %struct.ebt_mark_t_info** %7, align 8
  store %struct.ebt_mark_t_info* %8, %struct.ebt_mark_t_info** %4, align 8
  %9 = load %struct.ebt_mark_t_info*, %struct.ebt_mark_t_info** %4, align 8
  %10 = getelementptr inbounds %struct.ebt_mark_t_info, %struct.ebt_mark_t_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @EBT_VERDICT_BITS, align 4
  %13 = xor i32 %12, -1
  %14 = or i32 %11, %13
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* @BASE_CHAIN, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EBT_RETURN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %55

22:                                               ; preds = %17, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NUM_STANDARD_TARGETS, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %22
  store i32 0, i32* %2, align 4
  br label %55

31:                                               ; preds = %27
  %32 = load %struct.ebt_mark_t_info*, %struct.ebt_mark_t_info** %4, align 8
  %33 = getelementptr inbounds %struct.ebt_mark_t_info, %struct.ebt_mark_t_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EBT_VERDICT_BITS, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MARK_SET_VALUE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @MARK_OR_VALUE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @MARK_AND_VALUE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MARK_XOR_VALUE, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %55

54:                                               ; preds = %49, %45, %41, %31
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %53, %30, %21
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
