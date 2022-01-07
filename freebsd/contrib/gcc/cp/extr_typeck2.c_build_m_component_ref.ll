; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck2.c_build_m_component_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck2.c_build_m_component_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [64 x i8] c"%qE cannot be used as a member pointer, since it is of type %qT\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"cannot apply member pointer %qE to %qE, which is of non-class type %qT\00", align 1
@ba_check = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"pointer to member type %qT incompatible with object type %qT\00", align 1
@PLUS_EXPR = common dso_local global i32 0, align 4
@ptrdiff_type_node = common dso_local global i32 0, align 4
@OFFSET_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_m_component_ref(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @error_operand_p(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @error_operand_p(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %2
  %19 = load i8*, i8** @error_mark_node, align 8
  store i8* %19, i8** %3, align 8
  br label %120

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @TREE_TYPE(i8* %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @TYPE_PTR_TO_MEMBER_P(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  %30 = load i8*, i8** @error_mark_node, align 8
  store i8* %30, i8** %3, align 8
  br label %120

31:                                               ; preds = %20
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @TREE_TYPE(i8* %32)
  %34 = call i8* @TYPE_MAIN_VARIANT(i8* %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @IS_AGGR_TYPE(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %40, i8* %41)
  %43 = load i8*, i8** @error_mark_node, align 8
  store i8* %43, i8** %3, align 8
  br label %120

44:                                               ; preds = %31
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @TYPE_PTRMEM_POINTED_TO_TYPE(i8* %45)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i8* %47)
  %49 = call i8* @complete_type(i32 %48)
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @COMPLETE_TYPE_P(i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %44
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @same_type_p(i8* %54, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %68

59:                                               ; preds = %53
  store i8* null, i8** %9, align 8
  br label %81

60:                                               ; preds = %44
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* @ba_check, align 4
  %64 = call i8* @lookup_base(i8* %61, i8* %62, i32 %63, i32* null)
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 (i8*, i8*, i8*, ...) @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %69, i8* %70)
  %72 = load i8*, i8** @error_mark_node, align 8
  store i8* %72, i8** %3, align 8
  br label %120

73:                                               ; preds = %60
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** @error_mark_node, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i8*, i8** @error_mark_node, align 8
  store i8* %78, i8** %3, align 8
  br label %120

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80, %59
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @TYPE_PTRMEM_P(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %81
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @cp_type_quals(i8* %87)
  %89 = load i8*, i8** %4, align 8
  %90 = call i8* @TREE_TYPE(i8* %89)
  %91 = call i32 @cp_type_quals(i8* %90)
  %92 = or i32 %88, %91
  %93 = call i8* @cp_build_qualified_type(i8* %86, i32 %92)
  store i8* %93, i8** %8, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = call i8* @build_address(i8* %94)
  store i8* %95, i8** %4, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %85
  %99 = load i32, i32* @PLUS_EXPR, align 4
  %100 = load i8*, i8** %4, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i8* @build_base_path(i32 %99, i8* %100, i8* %101, i32 1)
  store i8* %102, i8** %4, align 8
  br label %103

103:                                              ; preds = %98, %85
  %104 = load i32, i32* @PLUS_EXPR, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = call i8* @build_pointer_type(i8* %105)
  %107 = load i8*, i8** %4, align 8
  %108 = load i32, i32* @ptrdiff_type_node, align 4
  %109 = load i8*, i8** %5, align 8
  %110 = call i8* @build_nop(i32 %108, i8* %109)
  %111 = call i8* @build2(i32 %104, i8* %106, i8* %107, i8* %110)
  store i8* %111, i8** %4, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = call i8* @build_indirect_ref(i8* %112, i32 0)
  store i8* %113, i8** %3, align 8
  br label %120

114:                                              ; preds = %81
  %115 = load i32, i32* @OFFSET_REF, align 4
  %116 = load i8*, i8** %8, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = call i8* @build2(i32 %115, i8* %116, i8* %117, i8* %118)
  store i8* %119, i8** %3, align 8
  br label %120

120:                                              ; preds = %114, %103, %77, %68, %38, %26, %18
  %121 = load i8*, i8** %3, align 8
  ret i8* %121
}

declare dso_local i64 @error_operand_p(i8*) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i32 @TYPE_PTR_TO_MEMBER_P(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*, ...) #1

declare dso_local i8* @TYPE_MAIN_VARIANT(i8*) #1

declare dso_local i32 @IS_AGGR_TYPE(i8*) #1

declare dso_local i8* @TYPE_PTRMEM_POINTED_TO_TYPE(i8*) #1

declare dso_local i8* @complete_type(i32) #1

declare dso_local i32 @TYPE_PTRMEM_CLASS_TYPE(i8*) #1

declare dso_local i32 @COMPLETE_TYPE_P(i8*) #1

declare dso_local i32 @same_type_p(i8*, i8*) #1

declare dso_local i8* @lookup_base(i8*, i8*, i32, i32*) #1

declare dso_local i64 @TYPE_PTRMEM_P(i8*) #1

declare dso_local i8* @cp_build_qualified_type(i8*, i32) #1

declare dso_local i32 @cp_type_quals(i8*) #1

declare dso_local i8* @build_address(i8*) #1

declare dso_local i8* @build_base_path(i32, i8*, i8*, i32) #1

declare dso_local i8* @build2(i32, i8*, i8*, i8*) #1

declare dso_local i8* @build_pointer_type(i8*) #1

declare dso_local i8* @build_nop(i32, i8*) #1

declare dso_local i8* @build_indirect_ref(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
