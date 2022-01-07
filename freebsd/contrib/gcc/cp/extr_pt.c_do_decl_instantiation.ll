; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_do_decl_instantiation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_do_decl_instantiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"explicit instantiation of non-template %q#D\00", align 1
@VAR_DECL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"no matching template for %qD found\00", align 1
@FUNCTION_DECL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"explicit instantiation of %q#D\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"duplicate explicit instantiation of %q#D\00", align 1
@ridpointers = common dso_local global i64* null, align 8
@RID_EXTERN = common dso_local global i64 0, align 8
@pedantic = common dso_local global i64 0, align 8
@in_system_header = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"ISO C++ forbids the use of %<extern%> on explicit instantiations\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"storage class %qD applied to template instantiation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_decl_instantiation(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @NULL_TREE, align 8
  store i64 %7, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @error_mark_node, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %2
  br label %136

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @DECL_LANG_SPECIFIC(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %136

22:                                               ; preds = %15
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @VAR_DECL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @DECL_CONTEXT(i64 %28)
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @DECL_NAME(i64 %30)
  %32 = call i64 @lookup_field(i32 %29, i32 %31, i32 0, i32 0)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @VAR_DECL, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %27
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %136

43:                                               ; preds = %35
  br label %55

44:                                               ; preds = %22
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @FUNCTION_DECL, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  br label %136

52:                                               ; preds = %44
  %53 = load i64, i64* %3, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54, %43
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @DECL_TEMPLATE_SPECIALIZATION(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %136

62:                                               ; preds = %57
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @DECL_EXPLICIT_INSTANTIATION(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load i64, i64* %5, align 8
  %68 = call i64 @DECL_NOT_REALLY_EXTERN(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %5, align 8
  %75 = call i32 (i8*, ...) @pedwarn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %73, %70, %66
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %136

80:                                               ; preds = %76
  br label %97

81:                                               ; preds = %62
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @DECL_IMPLICIT_INSTANTIATION(i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  br label %136

88:                                               ; preds = %81
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @DECL_TEMPLATE_INFO(i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %5, align 8
  %94 = call i32 (i8*, ...) @pedwarn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %93)
  br label %136

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %80
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @NULL_TREE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %125

103:                                              ; preds = %98
  %104 = load i64, i64* %4, align 8
  %105 = load i64*, i64** @ridpointers, align 8
  %106 = load i64, i64* @RID_EXTERN, align 8
  %107 = trunc i64 %106 to i32
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %104, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %103
  %113 = load i64, i64* @pedantic, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* @in_system_header, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = call i32 (i8*, ...) @pedwarn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %115, %112
  store i32 1, i32* %6, align 4
  br label %124

121:                                              ; preds = %103
  %122 = load i64, i64* %4, align 8
  %123 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i64 %122)
  br label %124

124:                                              ; preds = %121, %120
  br label %125

125:                                              ; preds = %124, %102
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @check_explicit_instantiation_namespace(i64 %126)
  %128 = load i64, i64* %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @mark_decl_instantiated(i64 %128, i32 %129)
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %125
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @instantiate_decl(i64 %134, i32 1, i32 0)
  br label %136

136:                                              ; preds = %14, %19, %40, %49, %61, %79, %85, %92, %133, %125
  ret void
}

declare dso_local i32 @DECL_LANG_SPECIFIC(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @lookup_field(i32, i32, i32, i32) #1

declare dso_local i32 @DECL_CONTEXT(i64) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i64 @DECL_TEMPLATE_SPECIALIZATION(i64) #1

declare dso_local i64 @DECL_EXPLICIT_INSTANTIATION(i64) #1

declare dso_local i64 @DECL_NOT_REALLY_EXTERN(i64) #1

declare dso_local i32 @pedwarn(i8*, ...) #1

declare dso_local i32 @DECL_IMPLICIT_INSTANTIATION(i64) #1

declare dso_local i32 @DECL_TEMPLATE_INFO(i64) #1

declare dso_local i32 @check_explicit_instantiation_namespace(i64) #1

declare dso_local i32 @mark_decl_instantiated(i64, i32) #1

declare dso_local i32 @instantiate_decl(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
