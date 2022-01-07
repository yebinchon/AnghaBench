; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_elaborated_type_specifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_elaborated_type_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEMPLATE_TYPE_PARM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"using template type parameter %qT after %qs\00", align 1
@error_mark_node = common dso_local global i8* null, align 8
@typename_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"using typedef-name %qD after %qs\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%q+D has a previous declaration here\00", align 1
@RECORD_TYPE = common dso_local global i64 0, align 8
@UNION_TYPE = common dso_local global i64 0, align 8
@enum_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"%qT referred to as %qs\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"%q+T has a previous declaration here\00", align 1
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"%qT referred to as enum\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"template argument required for %<%s %T%>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @check_elaborated_type_specifier(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @DECL_SELF_REFERENCE_P(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @TREE_TYPE(i8* %13)
  %15 = call i8* @TYPE_NAME(i8* %14)
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @TREE_TYPE(i8* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @TREE_CODE(i8* %19)
  %21 = load i64, i64* @TEMPLATE_TYPE_PARM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @tag_name(i32 %25)
  %27 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %26)
  %28 = load i8*, i8** @error_mark_node, align 8
  store i8* %28, i8** %4, align 8
  br label %112

29:                                               ; preds = %16
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @DECL_IMPLICIT_TYPEDEF_P(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @typename_type, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i8* @tag_name(i32 %39)
  %41 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %40)
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** @error_mark_node, align 8
  store i8* %44, i8** %4, align 8
  br label %112

45:                                               ; preds = %33, %29
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @TREE_CODE(i8* %46)
  %48 = load i64, i64* @RECORD_TYPE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load i8*, i8** %8, align 8
  %52 = call i64 @TREE_CODE(i8* %51)
  %53 = load i64, i64* @UNION_TYPE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @enum_type, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @typename_type, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i8* @tag_name(i32 %65)
  %67 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %64, i8* %66)
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  %70 = load i8*, i8** @error_mark_node, align 8
  store i8* %70, i8** %4, align 8
  br label %112

71:                                               ; preds = %59, %55, %50, %45
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @TREE_CODE(i8* %72)
  %74 = load i64, i64* @ENUMERAL_TYPE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @enum_type, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  %85 = load i8*, i8** @error_mark_node, align 8
  store i8* %85, i8** %4, align 8
  br label %112

86:                                               ; preds = %76, %71
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %8, align 8
  %91 = call i64 @TREE_CODE(i8* %90)
  %92 = load i64, i64* @RECORD_TYPE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load i8*, i8** %8, align 8
  %96 = call i64 @CLASSTYPE_IS_TEMPLATE(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = call i8* @tag_name(i32 %99)
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @CLASSTYPE_TI_TEMPLATE(i8* %101)
  %103 = call i8* @DECL_NAME(i32 %102)
  %104 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %100, i8* %103)
  %105 = load i8*, i8** @error_mark_node, align 8
  store i8* %105, i8** %4, align 8
  br label %112

106:                                              ; preds = %94, %89, %86
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  %111 = load i8*, i8** %8, align 8
  store i8* %111, i8** %4, align 8
  br label %112

112:                                              ; preds = %110, %98, %80, %63, %37, %23
  %113 = load i8*, i8** %4, align 8
  ret i8* %113
}

declare dso_local i64 @DECL_SELF_REFERENCE_P(i8*) #1

declare dso_local i8* @TYPE_NAME(i8*) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i8* @tag_name(i32) #1

declare dso_local i32 @DECL_IMPLICIT_TYPEDEF_P(i8*) #1

declare dso_local i64 @CLASSTYPE_IS_TEMPLATE(i8*) #1

declare dso_local i8* @DECL_NAME(i32) #1

declare dso_local i32 @CLASSTYPE_TI_TEMPLATE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
