; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_undefer_overflow_warnings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_undefer_overflow_warnings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fold_deferring_overflow_warnings = common dso_local global i64 0, align 8
@fold_deferred_overflow_warning = common dso_local global i8* null, align 8
@fold_deferred_overflow_code = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@input_location = common dso_local global i32 0, align 4
@OPT_Wstrict_overflow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%H%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fold_undefer_overflow_warnings(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @fold_deferring_overflow_warnings, align 8
  %10 = icmp sgt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i64, i64* @fold_deferring_overflow_warnings, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* @fold_deferring_overflow_warnings, align 8
  %15 = load i64, i64* @fold_deferring_overflow_warnings, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load i8*, i8** @fold_deferred_overflow_warning, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @fold_deferred_overflow_code, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* @fold_deferred_overflow_code, align 4
  br label %29

29:                                               ; preds = %27, %23, %20, %17
  br label %69

30:                                               ; preds = %3
  %31 = load i8*, i8** @fold_deferred_overflow_warning, align 8
  store i8* %31, i8** %7, align 8
  store i8* null, i8** @fold_deferred_overflow_warning, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %30
  br label %69

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @fold_deferred_overflow_code, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %38
  %46 = load i32, i32* @fold_deferred_overflow_code, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @issue_strict_overflow_warning(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %69

52:                                               ; preds = %47
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @NULL_TREE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @EXPR_HAS_LOCATION(i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* @input_location, align 4
  store i32 %61, i32* %8, align 4
  br label %65

62:                                               ; preds = %56
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @EXPR_LOCATION(i64 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %60
  %66 = load i32, i32* @OPT_Wstrict_overflow, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @warning(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %8, i8* %67)
  br label %69

69:                                               ; preds = %65, %51, %37, %29
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @issue_strict_overflow_warning(i32) #1

declare dso_local i32 @EXPR_HAS_LOCATION(i64) #1

declare dso_local i32 @EXPR_LOCATION(i64) #1

declare dso_local i32 @warning(i32, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
