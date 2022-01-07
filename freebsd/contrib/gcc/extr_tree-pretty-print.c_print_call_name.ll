; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_print_call_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-pretty-print.c_print_call_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CALL_EXPR = common dso_local global i32 0, align 4
@NON_LVALUE_EXPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c") ? \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@NIY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @print_call_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_call_name(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  %8 = load i32, i32* @CALL_EXPR, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @gcc_assert(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TREE_OPERAND(i32 %12, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @TREE_CODE(i32 %14)
  %16 = load i32, i32* @NON_LVALUE_EXPR, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @TREE_OPERAND(i32 %19, i32 0)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TREE_CODE(i32 %22)
  switch i32 %23, label %92 [
    i32 128, label %24
    i32 130, label %24
    i32 137, label %28
    i32 133, label %28
    i32 132, label %28
    i32 134, label %33
    i32 135, label %52
    i32 136, label %73
    i32 129, label %88
    i32 131, label %88
  ]

24:                                               ; preds = %21, %21
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dump_function_name(i32* %25, i32 %26)
  br label %94

28:                                               ; preds = %21, %21, %21
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @TREE_OPERAND(i32 %30, i32 0)
  %32 = call i32 @dump_generic_node(i32* %29, i32 %31, i32 0, i32 0, i32 0)
  br label %94

33:                                               ; preds = %21
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @pp_string(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @TREE_OPERAND(i32 %37, i32 0)
  %39 = call i32 @dump_generic_node(i32* %36, i32 %38, i32 0, i32 0, i32 0)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @pp_string(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @TREE_OPERAND(i32 %43, i32 1)
  %45 = call i32 @dump_generic_node(i32* %42, i32 %44, i32 0, i32 0, i32 0)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @pp_string(i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @TREE_OPERAND(i32 %49, i32 2)
  %51 = call i32 @dump_generic_node(i32* %48, i32 %50, i32 0, i32 0, i32 0)
  br label %94

52:                                               ; preds = %21
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @TREE_OPERAND(i32 %53, i32 0)
  %55 = call i32 @TREE_CODE(i32 %54)
  %56 = icmp eq i32 %55, 133
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @TREE_OPERAND(i32 %58, i32 0)
  %60 = call i32 @TREE_CODE(i32 %59)
  %61 = icmp eq i32 %60, 128
  br i1 %61, label %62, label %67

62:                                               ; preds = %57, %52
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @TREE_OPERAND(i32 %64, i32 1)
  %66 = call i32 @dump_function_name(i32* %63, i32 %65)
  br label %72

67:                                               ; preds = %57
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @TREE_OPERAND(i32 %69, i32 0)
  %71 = call i32 @dump_generic_node(i32* %68, i32 %70, i32 0, i32 0, i32 0)
  br label %72

72:                                               ; preds = %67, %62
  br label %94

73:                                               ; preds = %21
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @TREE_OPERAND(i32 %74, i32 0)
  %76 = call i32 @TREE_CODE(i32 %75)
  %77 = icmp eq i32 %76, 128
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @TREE_OPERAND(i32 %80, i32 0)
  %82 = call i32 @dump_function_name(i32* %79, i32 %81)
  br label %87

83:                                               ; preds = %73
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @dump_generic_node(i32* %84, i32 %85, i32 0, i32 0, i32 0)
  br label %87

87:                                               ; preds = %83, %78
  br label %94

88:                                               ; preds = %21, %21
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @dump_generic_node(i32* %89, i32 %90, i32 0, i32 0, i32 0)
  br label %94

92:                                               ; preds = %21
  %93 = load i32, i32* @NIY, align 4
  br label %94

94:                                               ; preds = %92, %88, %87, %72, %33, %28, %24
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @dump_function_name(i32*, i32) #1

declare dso_local i32 @dump_generic_node(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pp_string(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
