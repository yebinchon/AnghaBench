; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_accessible_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_accessible_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i32 0, align 4
@processing_template_parmlist = common dso_local global i32 0, align 4
@current_class_type = common dso_local global i64 0, align 8
@ak_public = common dso_local global i64 0, align 8
@ak_protected = common dso_local global i64 0, align 8
@dfs_accessible_post = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @accessible_p(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @context_for_name_lookup(i64 %12)
  %14 = call i32 @TYPE_P(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %95

17:                                               ; preds = %3
  %18 = call i64 (...) @current_scope()
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @DECL_THUNK_P(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %95

26:                                               ; preds = %21, %17
  %27 = load i32, i32* @processing_template_decl, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* @processing_template_parmlist, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @processing_template_decl, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29
  store i32 1, i32* %4, align 4
  br label %95

36:                                               ; preds = %32, %26
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @TYPE_P(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @BINFO_TYPE(i64 %42)
  store i64 %43, i64* %5, align 8
  br label %47

44:                                               ; preds = %36
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @TYPE_BINFO(i64 %45)
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load i64, i64* @current_class_type, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @current_class_type, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @protected_accessible_p(i64 %54, i64 %55, i64 %56)
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @friend_accessible_p(i64 %62, i64 %63, i64 %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %66, %47
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @TYPE_BINFO(i64 %68)
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @access_in_type(i64 %70, i64 %71)
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @ak_public, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %67
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @ak_protected, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %67
  store i32 1, i32* %4, align 4
  br label %95

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %95

88:                                               ; preds = %84
  %89 = load i64, i64* %8, align 8
  %90 = load i32, i32* @dfs_accessible_post, align 4
  %91 = call i64 @dfs_walk_once_accessible(i64 %89, i32 1, i32* null, i32 %90, i32* null)
  %92 = load i64, i64* @NULL_TREE, align 8
  %93 = icmp ne i64 %91, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %88, %87, %83, %35, %25, %16
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @TYPE_P(i64) #1

declare dso_local i64 @context_for_name_lookup(i64) #1

declare dso_local i64 @current_scope(...) #1

declare dso_local i64 @DECL_THUNK_P(i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i32 @protected_accessible_p(i64, i64, i64) #1

declare dso_local i32 @friend_accessible_p(i64, i64, i64) #1

declare dso_local i64 @access_in_type(i64, i64) #1

declare dso_local i64 @dfs_walk_once_accessible(i64, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
