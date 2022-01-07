; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_static_cast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_build_static_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i64 0, align 8
@STATIC_CAST_EXPR = common dso_local global i32 0, align 4
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"invalid static_cast from type %qT to type %qT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_static_cast(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @error_mark_node, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @error_mark_node, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %2
  %17 = load i64, i64* @error_mark_node, align 8
  store i64 %17, i64* %3, align 8
  br label %62

18:                                               ; preds = %12
  %19 = load i64, i64* @processing_template_decl, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* @STATIC_CAST_EXPR, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @build_min(i32 %22, i64 %23, i64 %24)
  store i64 %25, i64* %5, align 8
  store i32 1, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @convert_from_reference(i32 %26)
  store i64 %27, i64* %3, align 8
  br label %62

28:                                               ; preds = %18
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @REFERENCE_TYPE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @TREE_CODE(i64 %34)
  %36 = load i64, i64* @NOP_EXPR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @TREE_TYPE(i64 %39)
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @TREE_OPERAND(i64 %41, i32 0)
  %43 = call i64 @TREE_TYPE(i64 %42)
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @TREE_OPERAND(i64 %46, i32 0)
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %45, %38, %33, %28
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @build_static_cast_1(i64 %49, i64 %50, i32 0, i32* %7)
  store i64 %51, i64* %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %3, align 8
  br label %62

56:                                               ; preds = %48
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @TREE_TYPE(i64 %57)
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load i64, i64* @error_mark_node, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %56, %54, %21, %16
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i64 @build_min(i32, i64, i64) #1

declare dso_local i64 @convert_from_reference(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @build_static_cast_1(i64, i64, i32, i32*) #1

declare dso_local i32 @error(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
