; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_canon_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_canon_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @canon_rtx(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @REG_P(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @REGNO(i64 %11)
  %13 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @REGNO(i64 %16)
  %18 = call i64 @get_reg_known_value(i64 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i64, i64* %3, align 8
  store i64 %23, i64* %2, align 8
  br label %93

24:                                               ; preds = %15
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @canon_rtx(i64 %28)
  store i64 %29, i64* %2, align 8
  br label %93

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %10, %1
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @GET_CODE(i64 %32)
  %34 = load i64, i64* @PLUS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %80

36:                                               ; preds = %31
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @XEXP(i64 %37, i32 0)
  %39 = call i64 @canon_rtx(i64 %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @XEXP(i64 %40, i32 1)
  %42 = call i64 @canon_rtx(i64 %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @XEXP(i64 %44, i32 0)
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %36
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @XEXP(i64 %49, i32 1)
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %47, %36
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @GET_CODE(i64 %53)
  %55 = load i64, i64* @CONST_INT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @INTVAL(i64 %59)
  %61 = call i64 @plus_constant(i64 %58, i32 %60)
  store i64 %61, i64* %2, align 8
  br label %93

62:                                               ; preds = %52
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @GET_CODE(i64 %63)
  %65 = load i64, i64* @CONST_INT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @INTVAL(i64 %69)
  %71 = call i64 @plus_constant(i64 %68, i32 %70)
  store i64 %71, i64* %2, align 8
  br label %93

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @GET_MODE(i64 %74)
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i64 @gen_rtx_PLUS(i32 %75, i64 %76, i64 %77)
  store i64 %78, i64* %2, align 8
  br label %93

79:                                               ; preds = %47
  br label %91

80:                                               ; preds = %31
  %81 = load i64, i64* %3, align 8
  %82 = call i64 @MEM_P(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* %3, align 8
  %87 = call i64 @XEXP(i64 %86, i32 0)
  %88 = call i64 @canon_rtx(i64 %87)
  %89 = call i64 @replace_equiv_address_nv(i64 %85, i64 %88)
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %84, %80
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i64, i64* %3, align 8
  store i64 %92, i64* %2, align 8
  br label %93

93:                                               ; preds = %91, %73, %67, %57, %27, %22
  %94 = load i64, i64* %2, align 8
  ret i64 %94
}

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @get_reg_known_value(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @plus_constant(i64, i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @replace_equiv_address_nv(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
