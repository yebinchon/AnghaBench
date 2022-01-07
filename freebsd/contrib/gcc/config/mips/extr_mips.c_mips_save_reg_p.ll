; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_save_reg_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_save_reg_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GLOBAL_POINTER_REGNUM = common dso_local global i32 0, align 4
@TARGET_ABICALLS = common dso_local global i64 0, align 8
@TARGET_NEWABI = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@regs_ever_live = common dso_local global i64* null, align 8
@call_used_regs = common dso_local global i32* null, align 8
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i64 0, align 8
@GP_REG_FIRST = common dso_local global i32 0, align 4
@TARGET_MIPS16 = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i32 0, align 4
@mips16_hard_float = common dso_local global i64 0, align 8
@MODE_FLOAT = common dso_local global i64 0, align 8
@UNITS_PER_FPVALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mips_save_reg_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_save_reg_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @GLOBAL_POINTER_REGNUM, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load i64, i64* @TARGET_ABICALLS, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load i64, i64* @TARGET_NEWABI, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %14, %11, %8
  %23 = phi i1 [ false, %11 ], [ false, %8 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %107

25:                                               ; preds = %1
  %26 = load i64*, i64** @regs_ever_live, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32*, i32** @call_used_regs, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %107

40:                                               ; preds = %32, %25
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64, i64* @frame_pointer_needed, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %107

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @GP_REG_FIRST, align 4
  %51 = add nsw i32 %50, 31
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i64*, i64** @regs_ever_live, align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %107

61:                                               ; preds = %53, %48
  %62 = load i64, i64* @TARGET_MIPS16, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %106

64:                                               ; preds = %61
  %65 = load i32, i32* @current_function_decl, align 4
  %66 = call i32 @DECL_RESULT(i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @GP_REG_FIRST, align 4
  %69 = add nsw i32 %68, 18
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load i64*, i64** @regs_ever_live, align 8
  %73 = load i32, i32* %3, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %107

79:                                               ; preds = %71, %64
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @GP_REG_FIRST, align 4
  %82 = add nsw i32 %81, 31
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %79
  %85 = load i64, i64* @mips16_hard_float, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @current_function_decl, align 4
  %90 = call i32 @aggregate_value_p(i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @DECL_MODE(i32 %93)
  %95 = call i64 @GET_MODE_CLASS(i32 %94)
  %96 = load i64, i64* @MODE_FLOAT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @DECL_MODE(i32 %99)
  %101 = call i64 @GET_MODE_SIZE(i32 %100)
  %102 = load i64, i64* @UNITS_PER_FPVALUE, align 8
  %103 = icmp sle i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 1, i32* %2, align 4
  br label %107

105:                                              ; preds = %98, %92, %87, %84, %79
  br label %106

106:                                              ; preds = %105, %61
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %104, %78, %60, %47, %39, %22
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @DECL_RESULT(i32) #1

declare dso_local i32 @aggregate_value_p(i32, i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @DECL_MODE(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
