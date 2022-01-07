; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_get_mem_expr_from_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_get_mem_expr_from_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i64 0, align 8
@RTX_UNARY = common dso_local global i64 0, align 8
@RTX_BIN_ARITH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*)* @get_mem_expr_from_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_mem_expr_from_op(i32 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @REG_P(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @REG_EXPR(i32 %13)
  store i64 %14, i64* %3, align 8
  br label %81

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @MEM_P(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i64 0, i64* %3, align 8
  br label %81

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @MEM_EXPR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @MEM_EXPR(i32 %26)
  store i64 %27, i64* %3, align 8
  br label %81

28:                                               ; preds = %21
  %29 = load i32*, i32** %5, align 8
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @XEXP(i32 %30, i32 0)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @get_mem_expr_from_op(i32 %32, i32* %7)
  store i64 %33, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %3, align 8
  br label %81

40:                                               ; preds = %35, %28
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @GET_CODE(i32 %41)
  %43 = load i64, i64* @PLUS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @XEXP(i32 %46, i32 1)
  %48 = call i64 @get_mem_expr_from_op(i32 %47, i32* %7)
  store i64 %48, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %3, align 8
  br label %81

52:                                               ; preds = %45, %40
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %68, %53
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @GET_CODE(i32 %55)
  %57 = call i64 @GET_RTX_CLASS(i64 %56)
  %58 = load i64, i64* @RTX_UNARY, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @GET_CODE(i32 %61)
  %63 = call i64 @GET_RTX_CLASS(i64 %62)
  %64 = load i64, i64* @RTX_BIN_ARITH, align 8
  %65 = icmp eq i64 %63, %64
  br label %66

66:                                               ; preds = %60, %54
  %67 = phi i1 [ true, %54 ], [ %65, %60 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @XEXP(i32 %69, i32 0)
  store i32 %70, i32* %4, align 4
  br label %54

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @get_mem_expr_from_op(i32 %72, i32* %7)
  store i64 %73, i64* %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %79

77:                                               ; preds = %71
  %78 = load i64, i64* %6, align 8
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i64 [ 0, %76 ], [ %78, %77 ]
  store i64 %80, i64* %3, align 8
  br label %81

81:                                               ; preds = %79, %50, %38, %25, %19, %12
  %82 = load i64, i64* %3, align 8
  ret i64 %82
}

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REG_EXPR(i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i64 @MEM_EXPR(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @GET_RTX_CLASS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
