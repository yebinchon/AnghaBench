; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_get_reaching_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_get_reaching_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { i32 }
%struct.TYPE_2__ = type { %struct.df_ref*, i64 }

@GRD_INVALID = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i64 0, align 8
@df = common dso_local global i32 0, align 4
@GRD_INVARIANT = common dso_local global i32 0, align 4
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@GRD_SINGLE_DOM = common dso_local global i32 0, align 4
@current_loop = common dso_local global i32 0, align 4
@GRD_MAYBE_BIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.df_ref**)* @iv_get_reaching_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iv_get_reaching_def(i32 %0, i32 %1, %struct.df_ref** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.df_ref**, align 8
  %8 = alloca %struct.df_ref*, align 8
  %9 = alloca %struct.df_ref*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.df_ref** %2, %struct.df_ref*** %7, align 8
  %14 = load %struct.df_ref**, %struct.df_ref*** %7, align 8
  store %struct.df_ref* null, %struct.df_ref** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @simple_reg_p(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @GRD_INVALID, align 4
  store i32 %19, i32* %4, align 4
  br label %97

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @GET_CODE(i32 %21)
  %23 = load i64, i64* @SUBREG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @SUBREG_REG(i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @REG_P(i32 %29)
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load i32, i32* @df, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.df_ref* @df_find_use(i32 %32, i32 %33, i32 %34)
  store %struct.df_ref* %35, %struct.df_ref** %8, align 8
  %36 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %37 = icmp ne %struct.df_ref* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @gcc_assert(i32 %38)
  %40 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %41 = call %struct.TYPE_2__* @DF_REF_CHAIN(%struct.df_ref* %40)
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %28
  %44 = load i32, i32* @GRD_INVARIANT, align 4
  store i32 %44, i32* %4, align 4
  br label %97

45:                                               ; preds = %28
  %46 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %47 = call %struct.TYPE_2__* @DF_REF_CHAIN(%struct.df_ref* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @GRD_INVALID, align 4
  store i32 %52, i32* %4, align 4
  br label %97

53:                                               ; preds = %45
  %54 = load %struct.df_ref*, %struct.df_ref** %8, align 8
  %55 = call %struct.TYPE_2__* @DF_REF_CHAIN(%struct.df_ref* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.df_ref*, %struct.df_ref** %56, align 8
  store %struct.df_ref* %57, %struct.df_ref** %9, align 8
  %58 = load %struct.df_ref*, %struct.df_ref** %9, align 8
  %59 = call i32 @DF_REF_INSN(%struct.df_ref* %58)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.df_ref*, %struct.df_ref** %9, align 8
  %61 = call i64 @DF_REF_BB(%struct.df_ref* %60)
  store i64 %61, i64* %10, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @BLOCK_FOR_INSN(i32 %62)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %53
  %68 = load i32, i32* @df, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @DF_INSN_LUID(i32 %68, i32 %69)
  %71 = load i32, i32* @df, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @DF_INSN_LUID(i32 %71, i32 %72)
  %74 = icmp slt i64 %70, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %13, align 4
  br label %81

76:                                               ; preds = %53
  %77 = load i32, i32* @CDI_DOMINATORS, align 4
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @dominated_by_p(i32 %77, i64 %78, i64 %79)
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %76, %67
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.df_ref*, %struct.df_ref** %9, align 8
  %86 = load %struct.df_ref**, %struct.df_ref*** %7, align 8
  store %struct.df_ref* %85, %struct.df_ref** %86, align 8
  %87 = load i32, i32* @GRD_SINGLE_DOM, align 4
  store i32 %87, i32* %4, align 4
  br label %97

88:                                               ; preds = %81
  %89 = load i32, i32* @current_loop, align 4
  %90 = load i64, i64* %10, align 8
  %91 = call i64 @just_once_each_iteration_p(i32 %89, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @GRD_MAYBE_BIV, align 4
  store i32 %94, i32* %4, align 4
  br label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @GRD_INVALID, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %93, %84, %51, %43, %18
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @simple_reg_p(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local %struct.df_ref* @df_find_use(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @DF_REF_CHAIN(%struct.df_ref*) #1

declare dso_local i32 @DF_REF_INSN(%struct.df_ref*) #1

declare dso_local i64 @DF_REF_BB(%struct.df_ref*) #1

declare dso_local i64 @BLOCK_FOR_INSN(i32) #1

declare dso_local i64 @DF_INSN_LUID(i32, i32) #1

declare dso_local i32 @dominated_by_p(i32, i64, i64) #1

declare dso_local i64 @just_once_each_iteration_p(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
