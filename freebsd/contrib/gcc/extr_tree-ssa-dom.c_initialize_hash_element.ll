; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dom.c_initialize_hash_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dom.c_initialize_hash_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr_hash_elt = type { i32, i8*, i8*, i32* }

@TRUTH_NOT_EXPR = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i64 0, align 8
@SWITCH_EXPR = common dso_local global i64 0, align 8
@RETURN_EXPR = common dso_local global i64 0, align 8
@GOTO_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.expr_hash_elt*)* @initialize_hash_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_hash_element(i8* %0, i8* %1, %struct.expr_hash_elt* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.expr_hash_elt*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.expr_hash_elt* %2, %struct.expr_hash_elt** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @COMPARISON_CLASS_P(i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @TREE_CODE(i8* %11)
  %13 = load i64, i64* @TRUTH_NOT_EXPR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10, %3
  %16 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %17 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %16, i32 0, i32 3
  store i32* null, i32** %17, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %20 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  br label %95

21:                                               ; preds = %10
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @TREE_CODE(i8* %22)
  %24 = load i64, i64* @COND_EXPR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %30 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @COND_EXPR_COND(i8* %31)
  %33 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %34 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  br label %94

35:                                               ; preds = %21
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @TREE_CODE(i8* %36)
  %38 = load i64, i64* @SWITCH_EXPR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %44 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %43, i32 0, i32 3
  store i32* %42, i32** %44, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i8* @SWITCH_COND(i8* %45)
  %47 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %48 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %93

49:                                               ; preds = %35
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @TREE_CODE(i8* %50)
  %52 = load i64, i64* @RETURN_EXPR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load i8*, i8** %4, align 8
  %56 = call i8* @TREE_OPERAND(i8* %55, i32 0)
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i8*, i8** %4, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %62 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %61, i32 0, i32 3
  store i32* %60, i32** %62, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = call i8* @TREE_OPERAND(i8* %63, i32 0)
  %65 = call i8* @TREE_OPERAND(i8* %64, i32 1)
  %66 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %67 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  br label %92

68:                                               ; preds = %54, %49
  %69 = load i8*, i8** %4, align 8
  %70 = call i64 @TREE_CODE(i8* %69)
  %71 = load i64, i64* @GOTO_EXPR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i8*, i8** %4, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %77 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %76, i32 0, i32 3
  store i32* %75, i32** %77, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = call i8* @GOTO_DESTINATION(i8* %78)
  %80 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %81 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %91

82:                                               ; preds = %68
  %83 = load i8*, i8** %4, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %86 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %85, i32 0, i32 3
  store i32* %84, i32** %86, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = call i8* @TREE_OPERAND(i8* %87, i32 1)
  %89 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %90 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %82, %73
  br label %92

92:                                               ; preds = %91, %58
  br label %93

93:                                               ; preds = %92, %40
  br label %94

94:                                               ; preds = %93, %26
  br label %95

95:                                               ; preds = %94, %15
  %96 = load i8*, i8** %5, align 8
  %97 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %98 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %100 = call i32 @avail_expr_hash(%struct.expr_hash_elt* %99)
  %101 = load %struct.expr_hash_elt*, %struct.expr_hash_elt** %6, align 8
  %102 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  ret void
}

declare dso_local i64 @COMPARISON_CLASS_P(i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i8* @COND_EXPR_COND(i8*) #1

declare dso_local i8* @SWITCH_COND(i8*) #1

declare dso_local i8* @TREE_OPERAND(i8*, i32) #1

declare dso_local i8* @GOTO_DESTINATION(i8*) #1

declare dso_local i32 @avail_expr_hash(%struct.expr_hash_elt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
