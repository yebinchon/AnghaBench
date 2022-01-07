; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_redirect.c_ebt_redirect_tg_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_redirect.c_ebt_redirect_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, i32, %struct.ebt_redirect_info* }
%struct.ebt_redirect_info = type { i64 }

@BASE_CHAIN = common dso_local global i64 0, align 8
@EBT_RETURN = common dso_local global i64 0, align 8
@NF_BR_NUMHOOKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nat\00", align 1
@NF_BR_PRE_ROUTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"broute\00", align 1
@NF_BR_BROUTING = common dso_local global i32 0, align 4
@INVALID_TARGET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @ebt_redirect_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_redirect_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.ebt_redirect_info*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 2
  %8 = load %struct.ebt_redirect_info*, %struct.ebt_redirect_info** %7, align 8
  store %struct.ebt_redirect_info* %8, %struct.ebt_redirect_info** %4, align 8
  %9 = load i64, i64* @BASE_CHAIN, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.ebt_redirect_info*, %struct.ebt_redirect_info** %4, align 8
  %13 = getelementptr inbounds %struct.ebt_redirect_info, %struct.ebt_redirect_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EBT_RETURN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %57

18:                                               ; preds = %11, %1
  %19 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %20 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %27 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @NF_BR_PRE_ROUTING, align 4
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31, %18
  %39 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %40 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @strcmp(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @NF_BR_BROUTING, align 4
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %38
  store i32 0, i32* %2, align 4
  br label %57

52:                                               ; preds = %44, %31
  %53 = load i64, i64* @INVALID_TARGET, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %57

56:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55, %51, %17
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
