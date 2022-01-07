; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_print-rtl.c_print_mem_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_print-rtl.c_print_mem_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPONENT_REF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c" <variable>\00", align 1
@INDIRECT_REF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" (*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@ALIGN_INDIRECT_REF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c" (A*\00", align 1
@MISALIGNED_INDIRECT_REF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c" (M*\00", align 1
@RESULT_DECL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c" <result>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_mem_expr(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i64 @TREE_CODE(i64 %5)
  %7 = load i64, i64* @COMPONENT_REF, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @TREE_OPERAND(i64 %10, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @TREE_OPERAND(i64 %15, i32 0)
  call void @print_mem_expr(i32* %14, i64 %16)
  br label %20

17:                                               ; preds = %9
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @fputc(i8 signext 46, i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @TREE_OPERAND(i64 %24, i32 1)
  %26 = call i32 @print_decl_name(i32* %23, i64 %25)
  br label %84

27:                                               ; preds = %2
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @INDIRECT_REF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @TREE_OPERAND(i64 %36, i32 0)
  call void @print_mem_expr(i32* %35, i64 %37)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %38)
  br label %83

40:                                               ; preds = %27
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @ALIGN_INDIRECT_REF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @TREE_OPERAND(i64 %49, i32 0)
  call void @print_mem_expr(i32* %48, i64 %50)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %51)
  br label %82

53:                                               ; preds = %40
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @TREE_CODE(i64 %54)
  %56 = load i64, i64* @MISALIGNED_INDIRECT_REF, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @TREE_OPERAND(i64 %62, i32 0)
  call void @print_mem_expr(i32* %61, i64 %63)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %64)
  br label %81

66:                                               ; preds = %53
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @TREE_CODE(i64 %67)
  %69 = load i64, i64* @RESULT_DECL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %72)
  br label %80

74:                                               ; preds = %66
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @fputc(i8 signext 32, i32* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @print_decl_name(i32* %77, i64 %78)
  br label %80

80:                                               ; preds = %74, %71
  br label %81

81:                                               ; preds = %80, %58
  br label %82

82:                                               ; preds = %81, %45
  br label %83

83:                                               ; preds = %82, %32
  br label %84

84:                                               ; preds = %83, %20
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @print_decl_name(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
