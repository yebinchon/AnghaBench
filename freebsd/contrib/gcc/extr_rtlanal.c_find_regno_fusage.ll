; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_regno_fusage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_regno_fusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_regno_fusage(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @CALL_P(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %62

20:                                               ; preds = %15
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @CALL_INSN_FUNCTION_USAGE(i64 %21)
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %58, %20
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @XEXP(i64 %27, i32 0)
  store i64 %28, i64* %10, align 8
  %29 = call i32 @GET_CODE(i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %26
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @XEXP(i64 %33, i32 0)
  store i64 %34, i64* %11, align 8
  %35 = call i64 @REG_P(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @REGNO(i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ule i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = load i32**, i32*** @hard_regno_nregs, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i64 @GET_MODE(i64 %49)
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %43, %52
  %54 = load i32, i32* %7, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %62

57:                                               ; preds = %42, %37, %32, %26
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @XEXP(i64 %59, i32 1)
  store i64 %60, i64* %8, align 8
  br label %23

61:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %56, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @CALL_P(i64) #1

declare dso_local i64 @CALL_INSN_FUNCTION_USAGE(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
