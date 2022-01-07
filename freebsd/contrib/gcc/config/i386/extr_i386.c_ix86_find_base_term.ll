; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_find_base_term.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_find_base_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@UNSPEC_GOTPCREL = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_find_base_term(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @TARGET_64BIT, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @CONST, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %2, align 4
  br label %80

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @XEXP(i32 %15, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @PLUS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @XEXP(i32 %22, i32 1)
  %24 = call i64 @GET_CODE(i32 %23)
  %25 = load i64, i64* @CONST_INT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @XEXP(i32 %28, i32 1)
  %30 = call i64 @GET_CODE(i32 %29)
  %31 = load i64, i64* @CONST_DOUBLE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @XEXP(i32 %34, i32 0)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %27, %14
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @GET_CODE(i32 %37)
  %39 = load i64, i64* @UNSPEC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @XINT(i32 %42, i32 1)
  %44 = load i64, i64* @UNSPEC_GOTPCREL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* %2, align 4
  br label %80

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @XVECEXP(i32 %49, i32 0, i32 0)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @GET_CODE(i32 %51)
  %53 = load i64, i64* @SYMBOL_REF, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @GET_CODE(i32 %56)
  %58 = load i64, i64* @LABEL_REF, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %3, align 4
  store i32 %61, i32* %2, align 4
  br label %80

62:                                               ; preds = %55, %48
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %80

64:                                               ; preds = %1
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @ix86_delegitimize_address(i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @GET_CODE(i32 %67)
  %69 = load i64, i64* @SYMBOL_REF, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @GET_CODE(i32 %72)
  %74 = load i64, i64* @LABEL_REF, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %3, align 4
  store i32 %77, i32* %2, align 4
  br label %80

78:                                               ; preds = %71, %64
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %76, %62, %60, %46, %12
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @XINT(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @ix86_delegitimize_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
