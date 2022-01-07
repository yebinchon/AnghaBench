; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_track_expr_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_track_expr_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_DECL = common dso_local global i64 0, align 8
@PARM_DECL = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i64 0, align 8
@MAX_VAR_PARTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @track_expr_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @track_expr_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @TREE_CODE(i64 %6)
  %8 = load i64, i64* @VAR_DECL, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @PARM_DECL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %92

16:                                               ; preds = %10, %1
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @DECL_NAME(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %92

21:                                               ; preds = %16
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @DECL_RTL_IF_SET(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %92

27:                                               ; preds = %21
  %28 = load i64, i64* %3, align 8
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @DECL_DEBUG_EXPR_IS_FROM(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @DECL_DEBUG_EXPR(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @DECL_DEBUG_EXPR(i64 %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @DECL_P(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %92

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %32, %27
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @DECL_IGNORED_P(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %92

49:                                               ; preds = %44
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @TREE_STATIC(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %92

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @MEM_P(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @XEXP(i32 %59, i32 0)
  %61 = call i64 @contains_symbol_ref(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %92

64:                                               ; preds = %58, %54
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @MEM_P(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = call i64 @GET_MODE(i32 %69)
  %71 = load i64, i64* @BLKmode, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @TREE_TYPE(i64 %74)
  %76 = call i64 @AGGREGATE_TYPE_P(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %68
  store i32 0, i32* %2, align 4
  br label %92

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = call i64 @MEM_SIZE(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %4, align 4
  %85 = call i64 @MEM_SIZE(i32 %84)
  %86 = call i64 @INTVAL(i64 %85)
  %87 = load i64, i64* @MAX_VAR_PARTS, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %92

90:                                               ; preds = %83, %79
  br label %91

91:                                               ; preds = %90, %64
  store i32 1, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %89, %78, %63, %53, %48, %42, %26, %20, %15
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i32 @DECL_RTL_IF_SET(i64) #1

declare dso_local i64 @DECL_DEBUG_EXPR_IS_FROM(i64) #1

declare dso_local i64 @DECL_DEBUG_EXPR(i64) #1

declare dso_local i32 @DECL_P(i64) #1

declare dso_local i64 @DECL_IGNORED_P(i64) #1

declare dso_local i64 @TREE_STATIC(i64) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i64 @contains_symbol_ref(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @MEM_SIZE(i32) #1

declare dso_local i64 @INTVAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
