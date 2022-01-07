; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_find_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_find_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { %struct.df_ref* }
%struct.df = type { i32 }
%struct.TYPE_2__ = type { %struct.df_ref* }

@SUBREG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.df_ref* @df_find_use(%struct.df* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.df_ref*, align 8
  %5 = alloca %struct.df*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.df_ref*, align 8
  store %struct.df* %0, %struct.df** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = load i64, i64* @SUBREG, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @SUBREG_REG(i32 %15)
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @REG_P(i32 %18)
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @INSN_UID(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.df*, %struct.df** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.TYPE_2__* @DF_INSN_UID_GET(%struct.df* %23, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.df_ref*, %struct.df_ref** %26, align 8
  store %struct.df_ref* %27, %struct.df_ref** %9, align 8
  br label %28

28:                                               ; preds = %40, %17
  %29 = load %struct.df_ref*, %struct.df_ref** %9, align 8
  %30 = icmp ne %struct.df_ref* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.df_ref*, %struct.df_ref** %9, align 8
  %33 = call i32 @DF_REF_REAL_REG(%struct.df_ref* %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @rtx_equal_p(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.df_ref*, %struct.df_ref** %9, align 8
  store %struct.df_ref* %38, %struct.df_ref** %4, align 8
  br label %45

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.df_ref*, %struct.df_ref** %9, align 8
  %42 = getelementptr inbounds %struct.df_ref, %struct.df_ref* %41, i32 0, i32 0
  %43 = load %struct.df_ref*, %struct.df_ref** %42, align 8
  store %struct.df_ref* %43, %struct.df_ref** %9, align 8
  br label %28

44:                                               ; preds = %28
  store %struct.df_ref* null, %struct.df_ref** %4, align 8
  br label %45

45:                                               ; preds = %44, %37
  %46 = load %struct.df_ref*, %struct.df_ref** %4, align 8
  ret %struct.df_ref* %46
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local %struct.TYPE_2__* @DF_INSN_UID_GET(%struct.df*, i32) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @DF_REF_REAL_REG(%struct.df_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
