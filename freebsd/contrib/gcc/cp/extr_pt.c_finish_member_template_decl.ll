; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_finish_member_template_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_finish_member_template_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@FIELD_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"data member %qD cannot be a member template\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"invalid member template declaration %qD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @finish_member_template_decl(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @error_mark_node, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* @error_mark_node, align 8
  store i64 %10, i64* %2, align 8
  br label %72

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @DECL_P(i64 %12)
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @TYPE_DECL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %11
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @TREE_TYPE(i64 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @IS_AGGR_TYPE(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @CLASSTYPE_TEMPLATE_INFO(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @CLASSTYPE_TEMPLATE_SPECIALIZATION(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @CLASSTYPE_TI_TEMPLATE(i64 %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @check_member_template(i64 %36)
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %2, align 8
  br label %72

39:                                               ; preds = %29, %25, %19
  %40 = load i64, i64* @NULL_TREE, align 8
  store i64 %40, i64* %2, align 8
  br label %72

41:                                               ; preds = %11
  %42 = load i64, i64* %3, align 8
  %43 = call i64 @TREE_CODE(i64 %42)
  %44 = load i64, i64* @FIELD_DECL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %47)
  br label %69

49:                                               ; preds = %41
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @DECL_TEMPLATE_INFO(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @DECL_TEMPLATE_SPECIALIZATION(i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %3, align 8
  %59 = call i64 @DECL_TI_TEMPLATE(i64 %58)
  %60 = call i32 @check_member_template(i64 %59)
  %61 = load i64, i64* %3, align 8
  %62 = call i64 @DECL_TI_TEMPLATE(i64 %61)
  store i64 %62, i64* %2, align 8
  br label %72

63:                                               ; preds = %53
  %64 = load i64, i64* %3, align 8
  store i64 %64, i64* %2, align 8
  br label %72

65:                                               ; preds = %49
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %68, %46
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* @error_mark_node, align 8
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %70, %63, %57, %39, %33, %9
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @DECL_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_INFO(i64) #1

declare dso_local i32 @CLASSTYPE_TEMPLATE_SPECIALIZATION(i64) #1

declare dso_local i64 @CLASSTYPE_TI_TEMPLATE(i64) #1

declare dso_local i32 @check_member_template(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i64) #1

declare dso_local i32 @DECL_TEMPLATE_SPECIALIZATION(i64) #1

declare dso_local i64 @DECL_TI_TEMPLATE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
