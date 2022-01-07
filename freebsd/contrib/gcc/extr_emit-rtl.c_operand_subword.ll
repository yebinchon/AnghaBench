; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_operand_subword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_operand_subword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @operand_subword(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @VOIDmode, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @GET_MODE(i32 %15)
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %14, %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @VOIDmode, align 4
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @gcc_assert(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @BLKmode, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @GET_MODE_SIZE(i32 %27)
  %29 = load i32, i32* @UNITS_PER_WORD, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %87

32:                                               ; preds = %26, %17
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @BLKmode, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, 1
  %39 = load i32, i32* @UNITS_PER_WORD, align 4
  %40 = mul i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @GET_MODE_SIZE(i32 %41)
  %43 = icmp ugt i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @const0_rtx, align 4
  store i32 %45, i32* %5, align 4
  br label %87

46:                                               ; preds = %36, %32
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @MEM_P(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @word_mode, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @UNITS_PER_WORD, align 4
  %55 = mul i32 %53, %54
  %56 = call i32 @adjust_address_nv(i32 %51, i32 %52, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %87

61:                                               ; preds = %50
  %62 = load i64, i64* @reload_completed, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* @word_mode, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @XEXP(i32 %66, i32 0)
  %68 = call i32 @strict_memory_address_p(i32 %65, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %87

71:                                               ; preds = %64
  br label %77

72:                                               ; preds = %61
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @XEXP(i32 %74, i32 0)
  %76 = call i32 @replace_equiv_address(i32 %73, i32 %75)
  store i32 %76, i32* %5, align 4
  br label %87

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78, %46
  %80 = load i32, i32* @word_mode, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @UNITS_PER_WORD, align 4
  %85 = mul i32 %83, %84
  %86 = call i32 @simplify_gen_subreg(i32 %80, i32 %81, i32 %82, i32 %85)
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %79, %72, %70, %59, %44, %31
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @adjust_address_nv(i32, i32, i32) #1

declare dso_local i32 @strict_memory_address_p(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @replace_equiv_address(i32, i32) #1

declare dso_local i32 @simplify_gen_subreg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
