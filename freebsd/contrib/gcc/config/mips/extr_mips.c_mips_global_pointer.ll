; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_global_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_global_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_ABICALLS = common dso_local global i32 0, align 4
@GLOBAL_POINTER_REGNUM = common dso_local global i32 0, align 4
@TARGET_EXPLICIT_RELOCS = common dso_local global i32 0, align 4
@current_function_profile = common dso_local global i64 0, align 8
@current_function_has_nonlocal_goto = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i32* null, align 8
@current_function_uses_const_pool = common dso_local global i32 0, align 4
@TARGET_NEWABI = common dso_local global i64 0, align 8
@current_function_is_leaf = common dso_local global i64 0, align 8
@GP_REG_FIRST = common dso_local global i32 0, align 4
@GP_REG_LAST = common dso_local global i32 0, align 4
@call_used_regs = common dso_local global i64* null, align 8
@fixed_regs = common dso_local global i32* null, align 8
@PIC_FUNCTION_ADDR_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mips_global_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_global_pointer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @TARGET_ABICALLS, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @GLOBAL_POINTER_REGNUM, align 4
  store i32 %6, i32* %1, align 4
  br label %82

7:                                                ; preds = %0
  %8 = load i32, i32* @TARGET_EXPLICIT_RELOCS, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @GLOBAL_POINTER_REGNUM, align 4
  store i32 %11, i32* %1, align 4
  br label %82

12:                                               ; preds = %7
  %13 = load i64, i64* @current_function_profile, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @GLOBAL_POINTER_REGNUM, align 4
  store i32 %16, i32* %1, align 4
  br label %82

17:                                               ; preds = %12
  %18 = load i64, i64* @current_function_has_nonlocal_goto, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @GLOBAL_POINTER_REGNUM, align 4
  store i32 %21, i32* %1, align 4
  br label %82

22:                                               ; preds = %17
  %23 = load i32*, i32** @regs_ever_live, align 8
  %24 = load i32, i32* @GLOBAL_POINTER_REGNUM, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @current_function_uses_const_pool, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = call i32 (...) @mips_function_has_gp_insn()
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %82

36:                                               ; preds = %32, %29, %22
  %37 = load i64, i64* @TARGET_NEWABI, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %36
  %40 = load i64, i64* @current_function_is_leaf, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %39
  %43 = load i32, i32* @GP_REG_FIRST, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %76, %42
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @GP_REG_LAST, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %44
  %49 = load i32*, i32** @regs_ever_live, align 8
  %50 = load i32, i32* %2, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %48
  %56 = load i64*, i64** @call_used_regs, align 8
  %57 = load i32, i32* %2, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load i32*, i32** @fixed_regs, align 8
  %64 = load i32, i32* %2, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @PIC_FUNCTION_ADDR_REGNUM, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %2, align 4
  store i32 %74, i32* %1, align 4
  br label %82

75:                                               ; preds = %69, %62, %55, %48
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %2, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %2, align 4
  br label %44

79:                                               ; preds = %44
  br label %80

80:                                               ; preds = %79, %39, %36
  %81 = load i32, i32* @GLOBAL_POINTER_REGNUM, align 4
  store i32 %81, i32* %1, align 4
  br label %82

82:                                               ; preds = %80, %73, %35, %20, %15, %10, %5
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @mips_function_has_gp_insn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
