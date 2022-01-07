; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_unqualified_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_unqualified_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"unqualified-name\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@assignment_operator_name_info = common dso_local global %struct.TYPE_4__* null, align 8
@operator_name_info = common dso_local global %struct.TYPE_4__* null, align 8
@lk_internal = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"local-source-name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @write_unqualified_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_unqualified_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @MANGLE_TRACE_TREE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = call i32* @DECL_LANG_SPECIFIC(i32 %8)
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @DECL_CONSTRUCTOR_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @write_special_name_constructor(i32 %16)
  br label %112

18:                                               ; preds = %11, %1
  %19 = load i32, i32* %2, align 4
  %20 = call i32* @DECL_LANG_SPECIFIC(i32 %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @DECL_DESTRUCTOR_P(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @write_special_name_destructor(i32 %27)
  br label %111

29:                                               ; preds = %22, %18
  %30 = load i32, i32* %2, align 4
  %31 = call i64 @DECL_NAME(i32 %30)
  %32 = load i64, i64* @NULL_TREE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = call i64 @DECL_ASSEMBLER_NAME(i32 %35)
  %37 = call i32 @write_source_name(i64 %36)
  br label %110

38:                                               ; preds = %29
  %39 = load i32, i32* %2, align 4
  %40 = call i64 @DECL_CONV_FN_P(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = call i64 @decl_is_template_id(i32 %43, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = call i32 (...) @save_partially_mangled_name()
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @get_mostly_instantiated_function_type(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = call i32 (...) @restore_partially_mangled_name()
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @TREE_TYPE(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %42
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @DECL_CONV_FN_TYPE(i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @write_conversion_operator_name(i32 %57)
  br label %109

59:                                               ; preds = %38
  %60 = load i32, i32* %2, align 4
  %61 = call i64 @DECL_OVERLOADED_OPERATOR_P(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load i32, i32* %2, align 4
  %65 = call i64 @DECL_ASSIGNMENT_OPERATOR_P(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @assignment_operator_name_info, align 8
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %5, align 8
  br label %71

69:                                               ; preds = %63
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @operator_name_info, align 8
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %5, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = load i32, i32* %2, align 4
  %74 = call i64 @DECL_OVERLOADED_OPERATOR_P(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @write_string(i32 %77)
  br label %108

79:                                               ; preds = %59
  %80 = load i32, i32* %2, align 4
  %81 = call i64 @VAR_OR_FUNCTION_DECL_P(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @TREE_PUBLIC(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %2, align 4
  %89 = call i64 @DECL_NAMESPACE_SCOPE_P(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load i32, i32* %2, align 4
  %93 = call i64 @decl_linkage(i32 %92)
  %94 = load i64, i64* @lk_internal, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @MANGLE_TRACE_TREE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = call i32 @write_char(i8 signext 76)
  %100 = load i32, i32* %2, align 4
  %101 = call i64 @DECL_NAME(i32 %100)
  %102 = call i32 @write_source_name(i64 %101)
  br label %107

103:                                              ; preds = %91, %87, %83, %79
  %104 = load i32, i32* %2, align 4
  %105 = call i64 @DECL_NAME(i32 %104)
  %106 = call i32 @write_source_name(i64 %105)
  br label %107

107:                                              ; preds = %103, %96
  br label %108

108:                                              ; preds = %107, %71
  br label %109

109:                                              ; preds = %108, %56
  br label %110

110:                                              ; preds = %109, %34
  br label %111

111:                                              ; preds = %110, %26
  br label %112

112:                                              ; preds = %111, %15
  ret void
}

declare dso_local i32 @MANGLE_TRACE_TREE(i8*, i32) #1

declare dso_local i32* @DECL_LANG_SPECIFIC(i32) #1

declare dso_local i64 @DECL_CONSTRUCTOR_P(i32) #1

declare dso_local i32 @write_special_name_constructor(i32) #1

declare dso_local i64 @DECL_DESTRUCTOR_P(i32) #1

declare dso_local i32 @write_special_name_destructor(i32) #1

declare dso_local i64 @DECL_NAME(i32) #1

declare dso_local i32 @write_source_name(i64) #1

declare dso_local i64 @DECL_ASSEMBLER_NAME(i32) #1

declare dso_local i64 @DECL_CONV_FN_P(i32) #1

declare dso_local i64 @decl_is_template_id(i32, i32*) #1

declare dso_local i32 @save_partially_mangled_name(...) #1

declare dso_local i32 @get_mostly_instantiated_function_type(i32) #1

declare dso_local i32 @restore_partially_mangled_name(...) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @DECL_CONV_FN_TYPE(i32) #1

declare dso_local i32 @write_conversion_operator_name(i32) #1

declare dso_local i64 @DECL_OVERLOADED_OPERATOR_P(i32) #1

declare dso_local i64 @DECL_ASSIGNMENT_OPERATOR_P(i32) #1

declare dso_local i32 @write_string(i32) #1

declare dso_local i64 @VAR_OR_FUNCTION_DECL_P(i32) #1

declare dso_local i32 @TREE_PUBLIC(i32) #1

declare dso_local i64 @DECL_NAMESPACE_SCOPE_P(i32) #1

declare dso_local i64 @decl_linkage(i32) #1

declare dso_local i32 @write_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
