; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_canonicalize_addr_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_canonicalize_addr_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }

@ARRAY_TYPE = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @canonicalize_addr_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @canonicalize_addr_expr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @TREE_TYPE(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @TREE_OPERAND(i32 %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @TREE_TYPE(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @POINTER_TYPE_P(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @POINTER_TYPE_P(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %1
  br label %102

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @TREE_TYPE(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @TREE_CODE(i32 %31)
  %33 = load i64, i64* @ARRAY_TYPE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %102

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @TREE_TYPE(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @TREE_TYPE(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 %41(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %102

47:                                               ; preds = %36
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @TREE_OPERAND(i32 %48, i32 0)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @TREE_TYPE(i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 %52(i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  br label %102

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @TYPE_SIZE_UNIT(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @TYPE_SIZE_UNIT(i32 %63)
  %65 = call i64 @TREE_CODE(i32 %64)
  %66 = load i64, i64* @INTEGER_CST, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %84, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @TYPE_DOMAIN(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @TYPE_DOMAIN(i32 %73)
  %75 = call i32 @TYPE_MIN_VALUE(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @TYPE_DOMAIN(i32 %78)
  %80 = call i32 @TYPE_MIN_VALUE(i32 %79)
  %81 = call i64 @TREE_CODE(i32 %80)
  %82 = load i64, i64* @INTEGER_CST, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77, %72, %68, %62, %58
  br label %102

85:                                               ; preds = %77
  %86 = load i32, i32* @ARRAY_REF, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @TYPE_DOMAIN(i32 %89)
  %91 = call i32 @TYPE_MIN_VALUE(i32 %90)
  %92 = load i32, i32* @NULL_TREE, align 4
  %93 = load i32, i32* @NULL_TREE, align 4
  %94 = call i32 @build4(i32 %86, i32 %87, i32 %88, i32 %91, i32 %92, i32 %93)
  %95 = load i32*, i32** %2, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @ADDR_EXPR, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @build1(i32 %96, i32 %97, i32 %99)
  %101 = load i32*, i32** %2, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %85, %84, %57, %46, %35, %27
  ret void
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i32 @TYPE_DOMAIN(i32) #1

declare dso_local i32 @TYPE_MIN_VALUE(i32) #1

declare dso_local i32 @build4(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
