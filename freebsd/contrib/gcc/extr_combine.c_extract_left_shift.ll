; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_extract_left_shift.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_extract_left_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @extract_left_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_left_shift(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @GET_CODE(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @GET_MODE(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %84 [
    i32 133, label %14
    i32 131, label %38
    i32 130, label %38
    i32 129, label %51
    i32 132, label %51
    i32 128, label %51
    i32 134, label %51
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @XEXP(i32 %15, i32 1)
  %17 = call i32 @GET_CODE(i32 %16)
  %18 = load i32, i32* @CONST_INT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @XEXP(i32 %21, i32 1)
  %23 = call i32 @INTVAL(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load i32, i32* @NULL_RTX, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @XEXP(i32 %29, i32 0)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @XEXP(i32 %31, i32 1)
  %33 = call i32 @INTVAL(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @simplify_shift_const(i32 %27, i32 133, i32 %28, i32 %30, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %86

37:                                               ; preds = %20, %14
  br label %85

38:                                               ; preds = %2, %2
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @XEXP(i32 %39, i32 0)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @extract_left_shift(i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @simplify_gen_unary(i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %86

50:                                               ; preds = %38
  br label %85

51:                                               ; preds = %2, %2, %2, %2
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @XEXP(i32 %52, i32 1)
  %54 = call i32 @GET_CODE(i32 %53)
  %55 = load i32, i32* @CONST_INT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @XEXP(i32 %58, i32 1)
  %60 = call i32 @INTVAL(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  %64 = and i32 %60, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %57
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @XEXP(i32 %67, i32 0)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @extract_left_shift(i32 %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @XEXP(i32 %76, i32 1)
  %78 = call i32 @INTVAL(i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = ashr i32 %78, %79
  %81 = call i32 @GEN_INT(i32 %80)
  %82 = call i32 @simplify_gen_binary(i32 %73, i32 %74, i32 %75, i32 %81)
  store i32 %82, i32* %3, align 4
  br label %86

83:                                               ; preds = %66, %57, %51
  br label %85

84:                                               ; preds = %2
  br label %85

85:                                               ; preds = %84, %83, %50, %37
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %72, %44, %26
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @simplify_shift_const(i32, i32, i32, i32, i32) #1

declare dso_local i32 @simplify_gen_unary(i32, i32, i32, i32) #1

declare dso_local i32 @simplify_gen_binary(i32, i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
