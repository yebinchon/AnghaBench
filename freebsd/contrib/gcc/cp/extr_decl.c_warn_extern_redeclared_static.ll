; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_warn_extern_redeclared_static.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_warn_extern_redeclared_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_DECL = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@CONST_DECL = common dso_local global i64 0, align 8
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"%qD was declared %<extern%> and later %<static%>\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"previous declaration of %q+D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @warn_extern_redeclared_static(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @TYPE_DECL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @TEMPLATE_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @CONST_DECL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @NAMESPACE_DECL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15, %10, %2
  br label %62

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @TREE_CODE(i32 %27)
  %29 = load i64, i64* @FUNCTION_DECL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @DECL_STATIC_FUNCTION_P(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %62

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @DECL_THIS_STATIC(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @DECL_THIS_STATIC(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %36
  br label %62

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @TREE_CODE(i32 %46)
  %48 = load i64, i64* @FUNCTION_DECL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @DECL_ARTIFICIAL(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %62

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @DECL_ASSEMBLER_NAME(i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @pedwarn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @pedwarn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %55, %54, %44, %35, %25
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_STATIC_FUNCTION_P(i32) #1

declare dso_local i64 @DECL_THIS_STATIC(i32) #1

declare dso_local i64 @DECL_ARTIFICIAL(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i32) #1

declare dso_local i32 @pedwarn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
