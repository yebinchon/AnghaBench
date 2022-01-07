; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_default_argument.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_default_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_ARG = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"default argument for %q#D has type %qT\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"default argument for parameter of type %qT has type %qT\00", align 1
@local_variable_p_walkfn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"default argument %qE uses local variable %qD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @check_default_argument(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @TREE_CODE(i64 %8)
  %10 = load i64, i64* @DEFAULT_ARG, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %3, align 8
  br label %86

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @TYPE_P(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* @NULL_TREE, align 8
  store i64 %20, i64* %4, align 8
  br label %25

21:                                               ; preds = %14
  %22 = load i64, i64* %4, align 8
  %23 = call i8* @TREE_TYPE(i64 %22)
  %24 = ptrtoint i8* %23 to i64
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @error_mark_node, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @error_mark_node, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = call i8* @TREE_TYPE(i64 %34)
  %36 = load i64, i64* @error_mark_node, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = icmp eq i8* %35, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @error_mark_node, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %33, %29, %25
  %44 = load i64, i64* @error_mark_node, align 8
  store i64 %44, i64* %3, align 8
  br label %86

45:                                               ; preds = %39
  %46 = load i64, i64* %5, align 8
  %47 = call i8* @TREE_TYPE(i64 %46)
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i8* @TREE_TYPE(i64 %51)
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* @LOOKUP_NORMAL, align 4
  %55 = call i32 @can_convert_arg(i64 %50, i8* %52, i64 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %49, %45
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i8* @TREE_TYPE(i64 %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %61, i64 %64)
  br label %72

66:                                               ; preds = %57
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i8* @TREE_TYPE(i64 %68)
  %70 = ptrtoint i8* %69 to i64
  %71 = call i32 @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %67, i64 %70)
  br label %72

72:                                               ; preds = %66, %60
  %73 = load i64, i64* @error_mark_node, align 8
  store i64 %73, i64* %3, align 8
  br label %86

74:                                               ; preds = %49
  %75 = load i32, i32* @local_variable_p_walkfn, align 4
  %76 = call i64 @walk_tree_without_duplicates(i64* %5, i32 %75, i32* null)
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %80, i64 %81)
  %83 = load i64, i64* @error_mark_node, align 8
  store i64 %83, i64* %3, align 8
  br label %86

84:                                               ; preds = %74
  %85 = load i64, i64* %5, align 8
  store i64 %85, i64* %3, align 8
  br label %86

86:                                               ; preds = %84, %79, %72, %43, %12
  %87 = load i64, i64* %3, align 8
  ret i64 %87
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i8* @TREE_TYPE(i64) #1

declare dso_local i32 @can_convert_arg(i64, i8*, i64, i32) #1

declare dso_local i32 @error(i8*, i64, i64) #1

declare dso_local i64 @walk_tree_without_duplicates(i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
