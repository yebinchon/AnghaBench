; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_globalize_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_globalize_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fixed_regs = common dso_local global i32* null, align 8
@no_global_reg_vars = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"global register variable follows a function definition\00", align 1
@global_regs = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"register used for two global register variables\00", align 1
@call_used_regs = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"call-clobbered register used for global register variable\00", align 1
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@regs_invalidated_by_call = common dso_local global i32 0, align 4
@call_fixed_regs = common dso_local global i32* null, align 8
@fixed_reg_set = common dso_local global i32 0, align 4
@call_used_reg_set = common dso_local global i32 0, align 4
@call_fixed_reg_set = common dso_local global i32 0, align 4
@call_really_used_regs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @globalize_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** @fixed_regs, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %3, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i64, i64* @no_global_reg_vars, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %9, %1
  %15 = load i32*, i32** @global_regs, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @warning(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %81

23:                                               ; preds = %14
  %24 = load i32*, i32** @call_used_regs, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load i32*, i32** @fixed_regs, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = call i32 @warning(i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %30, %23
  %40 = load i32*, i32** @global_regs, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @regs_invalidated_by_call, align 4
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @SET_HARD_REG_BIT(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %39
  %52 = load i32*, i32** @fixed_regs, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %81

59:                                               ; preds = %51
  %60 = load i32*, i32** @call_fixed_regs, align 8
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 1, i32* %63, align 4
  %64 = load i32*, i32** @call_used_regs, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 1, i32* %67, align 4
  %68 = load i32*, i32** @fixed_regs, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* @fixed_reg_set, align 4
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @SET_HARD_REG_BIT(i32 %72, i32 %73)
  %75 = load i32, i32* @call_used_reg_set, align 4
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @SET_HARD_REG_BIT(i32 %75, i32 %76)
  %78 = load i32, i32* @call_fixed_reg_set, align 4
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @SET_HARD_REG_BIT(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %59, %58, %21
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
