; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_latch_dominating_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_latch_dominating_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.df_ref = type { %struct.df_ref* }
%struct.df_reg_info = type { %struct.df_ref* }
%struct.df_rd_bb_info = type { i32 }

@df = common dso_local global i32 0, align 4
@current_loop = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.df_ref**)* @latch_dominating_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latch_dominating_def(i32 %0, %struct.df_ref** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.df_ref**, align 8
  %6 = alloca %struct.df_ref*, align 8
  %7 = alloca %struct.df_ref*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.df_reg_info*, align 8
  %10 = alloca %struct.df_rd_bb_info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.df_ref** %1, %struct.df_ref*** %5, align 8
  store %struct.df_ref* null, %struct.df_ref** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @REGNO(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @df, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.df_reg_info* @DF_REG_DEF_GET(i32 %13, i32 %14)
  store %struct.df_reg_info* %15, %struct.df_reg_info** %9, align 8
  %16 = load i32, i32* @df, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_loop, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.df_rd_bb_info* @DF_RD_BB_INFO(i32 %16, i32 %19)
  store %struct.df_rd_bb_info* %20, %struct.df_rd_bb_info** %10, align 8
  %21 = load %struct.df_reg_info*, %struct.df_reg_info** %9, align 8
  %22 = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %21, i32 0, i32 0
  %23 = load %struct.df_ref*, %struct.df_ref** %22, align 8
  store %struct.df_ref* %23, %struct.df_ref** %7, align 8
  br label %24

24:                                               ; preds = %49, %2
  %25 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %26 = icmp ne %struct.df_ref* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  %28 = load %struct.df_rd_bb_info*, %struct.df_rd_bb_info** %10, align 8
  %29 = getelementptr inbounds %struct.df_rd_bb_info, %struct.df_rd_bb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %32 = call i32 @DF_REF_ID(%struct.df_ref* %31)
  %33 = call i32 @bitmap_bit_p(i32 %30, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %49

36:                                               ; preds = %27
  %37 = load %struct.df_ref*, %struct.df_ref** %6, align 8
  %38 = icmp ne %struct.df_ref* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %56

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_loop, align 8
  %42 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %43 = call i32 @DF_REF_BB(%struct.df_ref* %42)
  %44 = call i32 @just_once_each_iteration_p(%struct.TYPE_3__* %41, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %56

47:                                               ; preds = %40
  %48 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  store %struct.df_ref* %48, %struct.df_ref** %6, align 8
  br label %49

49:                                               ; preds = %47, %35
  %50 = load %struct.df_ref*, %struct.df_ref** %7, align 8
  %51 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %50, i32 0, i32 0
  %52 = load %struct.df_ref*, %struct.df_ref** %51, align 8
  store %struct.df_ref* %52, %struct.df_ref** %7, align 8
  br label %24

53:                                               ; preds = %24
  %54 = load %struct.df_ref*, %struct.df_ref** %6, align 8
  %55 = load %struct.df_ref**, %struct.df_ref*** %5, align 8
  store %struct.df_ref* %54, %struct.df_ref** %55, align 8
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %46, %39
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @REGNO(i32) #1

declare dso_local %struct.df_reg_info* @DF_REG_DEF_GET(i32, i32) #1

declare dso_local %struct.df_rd_bb_info* @DF_RD_BB_INFO(i32, i32) #1

declare dso_local i32 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @DF_REF_ID(%struct.df_ref*) #1

declare dso_local i32 @just_once_each_iteration_p(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @DF_REF_BB(%struct.df_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
