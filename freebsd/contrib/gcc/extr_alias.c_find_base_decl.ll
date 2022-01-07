; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_find_base_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_find_base_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @find_base_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_base_decl(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @error_mark_node, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @TREE_TYPE(i64 %13)
  %15 = call i32 @POINTER_TYPE_P(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %8, %1
  store i64 0, i64* %2, align 8
  br label %68

18:                                               ; preds = %12
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @DECL_P(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @VAR_DECL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @DECL_BASED_ON_RESTRICT_P(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @DECL_GET_RESTRICT_BASE(i64 %32)
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %31, %27, %22
  %35 = load i64, i64* %3, align 8
  store i64 %35, i64* %2, align 8
  br label %68

36:                                               ; preds = %18
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @TREE_CODE(i64 %37)
  %39 = call i32 @TREE_CODE_CLASS(i64 %38)
  switch i32 %39, label %67 [
    i32 128, label %40
    i32 129, label %44
  ]

40:                                               ; preds = %36
  %41 = load i64, i64* %3, align 8
  %42 = call i64 @TREE_OPERAND(i64 %41, i32 0)
  %43 = call i64 @find_base_decl(i64 %42)
  store i64 %43, i64* %2, align 8
  br label %68

44:                                               ; preds = %36
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @TREE_OPERAND(i64 %45, i32 0)
  %47 = call i64 @find_base_decl(i64 %46)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %3, align 8
  %49 = call i64 @TREE_OPERAND(i64 %48, i32 1)
  %50 = call i64 @find_base_decl(i64 %49)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i64, i64* %4, align 8
  store i64 %55, i64* %2, align 8
  br label %68

56:                                               ; preds = %44
  %57 = load i64, i64* %4, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i64, i64* %5, align 8
  store i64 %60, i64* %2, align 8
  br label %68

61:                                               ; preds = %56
  %62 = load i64, i64* %5, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i64, i64* %4, align 8
  store i64 %65, i64* %2, align 8
  br label %68

66:                                               ; preds = %61
  store i64 0, i64* %2, align 8
  br label %68

67:                                               ; preds = %36
  store i64 0, i64* %2, align 8
  br label %68

68:                                               ; preds = %67, %66, %64, %59, %54, %40, %34, %17
  %69 = load i64, i64* %2, align 8
  ret i64 %69
}

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_BASED_ON_RESTRICT_P(i64) #1

declare dso_local i64 @DECL_GET_RESTRICT_BASE(i64) #1

declare dso_local i32 @TREE_CODE_CLASS(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
