; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i64)* }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"U13block_pointer\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"U8__vector\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @write_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_type(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @MANGLE_TRACE_TREE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @error_mark_node, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %121

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @find_substitution(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %121

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @write_CV_qualifiers_for_type(i64 %17)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i64, i64* %2, align 8
  %22 = call i64 @TYPE_MAIN_VARIANT(i64 %21)
  call void @write_type(i64 %22)
  br label %115

23:                                               ; preds = %16
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @TREE_CODE(i64 %24)
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @ARRAY_TYPE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @write_array_type(i64 %30)
  br label %114

32:                                               ; preds = %23
  %33 = load i64, i64* %2, align 8
  %34 = call i64 @TYPE_MAIN_VARIANT(i64 %33)
  store i64 %34, i64* %2, align 8
  %35 = load i64, i64* %2, align 8
  %36 = call i64 @TYPE_PTRMEM_P(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i64, i64* %2, align 8
  %40 = call i32 @write_pointer_to_member_type(i64 %39)
  br label %113

41:                                               ; preds = %32
  %42 = load i64, i64* %2, align 8
  %43 = call i32 @TREE_CODE(i64 %42)
  switch i32 %43, label %110 [
    i32 128, label %44
    i32 146, label %44
    i32 141, label %44
    i32 138, label %44
    i32 144, label %59
    i32 142, label %63
    i32 140, label %63
    i32 130, label %66
    i32 137, label %66
    i32 143, label %66
    i32 132, label %77
    i32 131, label %77
    i32 139, label %81
    i32 147, label %85
    i32 136, label %89
    i32 133, label %93
    i32 135, label %93
    i32 134, label %96
    i32 145, label %99
    i32 129, label %106
  ]

44:                                               ; preds = %41, %41, %41, %41
  %45 = load i8* (i64)*, i8* (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %46 = load i64, i64* %2, align 8
  %47 = call i8* %45(i64 %46)
  store i8* %47, i8** %4, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @write_string(i8* %51)
  br label %121

53:                                               ; preds = %44
  %54 = load i64, i64* %2, align 8
  %55 = call i64 @TYPE_MAIN_VARIANT(i64 %54)
  %56 = call i32 @write_builtin_type(i64 %55)
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %112

59:                                               ; preds = %41
  %60 = call i32 @write_char(i8 signext 67)
  %61 = load i64, i64* %2, align 8
  %62 = call i64 @TREE_TYPE(i64 %61)
  call void @write_type(i64 %62)
  br label %112

63:                                               ; preds = %41, %41
  %64 = load i64, i64* %2, align 8
  %65 = call i32 @write_function_type(i64 %64)
  br label %112

66:                                               ; preds = %41, %41, %41
  %67 = load i64, i64* %2, align 8
  %68 = call i32 @TYPE_PTRMEMFUNC_P(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i64, i64* %2, align 8
  %72 = call i32 @write_pointer_to_member_type(i64 %71)
  br label %76

73:                                               ; preds = %66
  %74 = load i64, i64* %2, align 8
  %75 = call i32 @write_class_enum_type(i64 %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %112

77:                                               ; preds = %41, %41
  %78 = load i64, i64* %2, align 8
  %79 = call i32 @TYPE_STUB_DECL(i64 %78)
  %80 = call i32 @write_nested_name(i32 %79)
  br label %112

81:                                               ; preds = %41
  %82 = call i32 @write_char(i8 signext 80)
  %83 = load i64, i64* %2, align 8
  %84 = call i64 @TREE_TYPE(i64 %83)
  call void @write_type(i64 %84)
  br label %112

85:                                               ; preds = %41
  %86 = call i32 @write_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i64, i64* %2, align 8
  %88 = call i64 @TREE_TYPE(i64 %87)
  call void @write_type(i64 %88)
  br label %112

89:                                               ; preds = %41
  %90 = call i32 @write_char(i8 signext 82)
  %91 = load i64, i64* %2, align 8
  %92 = call i64 @TREE_TYPE(i64 %91)
  call void @write_type(i64 %92)
  br label %112

93:                                               ; preds = %41, %41
  %94 = load i64, i64* %2, align 8
  %95 = call i32 @write_template_param(i64 %94)
  br label %112

96:                                               ; preds = %41
  %97 = load i64, i64* %2, align 8
  %98 = call i32 @write_template_template_param(i64 %97)
  br label %112

99:                                               ; preds = %41
  %100 = load i64, i64* %2, align 8
  %101 = call i32 @write_template_template_param(i64 %100)
  %102 = load i64, i64* %2, align 8
  %103 = call i32 @TEMPLATE_TEMPLATE_PARM_TEMPLATE_INFO(i64 %102)
  %104 = call i32 @TI_ARGS(i32 %103)
  %105 = call i32 @write_template_args(i32 %104)
  br label %112

106:                                              ; preds = %41
  %107 = call i32 @write_string(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i64, i64* %2, align 8
  %109 = call i64 @TREE_TYPE(i64 %108)
  call void @write_type(i64 %109)
  br label %112

110:                                              ; preds = %41
  %111 = call i32 (...) @gcc_unreachable()
  br label %112

112:                                              ; preds = %110, %106, %99, %96, %93, %89, %85, %81, %77, %76, %63, %59, %53
  br label %113

113:                                              ; preds = %112, %38
  br label %114

114:                                              ; preds = %113, %29
  br label %115

115:                                              ; preds = %114, %20
  %116 = load i32, i32* %3, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* %2, align 8
  %120 = call i32 @add_substitution(i64 %119)
  br label %121

121:                                              ; preds = %10, %15, %50, %118, %115
  ret void
}

declare dso_local i32 @MANGLE_TRACE_TREE(i8*, i64) #1

declare dso_local i64 @find_substitution(i64) #1

declare dso_local i64 @write_CV_qualifiers_for_type(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @write_array_type(i64) #1

declare dso_local i64 @TYPE_PTRMEM_P(i64) #1

declare dso_local i32 @write_pointer_to_member_type(i64) #1

declare dso_local i32 @write_string(i8*) #1

declare dso_local i32 @write_builtin_type(i64) #1

declare dso_local i32 @write_char(i8 signext) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @write_function_type(i64) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i32 @write_class_enum_type(i64) #1

declare dso_local i32 @write_nested_name(i32) #1

declare dso_local i32 @TYPE_STUB_DECL(i64) #1

declare dso_local i32 @write_template_param(i64) #1

declare dso_local i32 @write_template_template_param(i64) #1

declare dso_local i32 @write_template_args(i32) #1

declare dso_local i32 @TI_ARGS(i32) #1

declare dso_local i32 @TEMPLATE_TEMPLATE_PARM_TEMPLATE_INFO(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @add_substitution(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
