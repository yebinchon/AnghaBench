; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_diagnose_invalid_type_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_diagnose_invalid_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@TEMPLATE_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"invalid use of template-name %qE without an argument list\00", align 1
@BIT_NOT_EXPR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"invalid use of destructor %qD as a type\00", align 1
@TYPE_DECL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"invalid combination of multiple type-specifiers\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%qE does not name a type\00", align 1
@processing_template_decl = common dso_local global i64 0, align 8
@current_class_type = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"(perhaps %<typename %T::%E%> was intended)\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"%qE in namespace %qE does not name a type\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%qE in class %qT does not name a type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i64)* @cp_parser_diagnose_invalid_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_diagnose_invalid_type_name(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @cp_parser_lookup_name_simple(%struct.TYPE_5__* %18, i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @TEMPLATE_DECL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i64, i64* %7, align 8
  %30 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %158

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @BIT_NOT_EXPR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64, i64* %6, align 8
  %38 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %157

39:                                               ; preds = %31
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @TREE_CODE(i64 %40)
  %42 = load i64, i64* @TYPE_DECL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %156

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %118, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %6, align 8
  %53 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = load i64, i64* @processing_template_decl, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %117

56:                                               ; preds = %51
  %57 = load i64, i64* @current_class_type, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %117

59:                                               ; preds = %56
  %60 = load i64, i64* @current_class_type, align 8
  %61 = call i64 @TYPE_BINFO(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %117

63:                                               ; preds = %59
  %64 = load i64, i64* @current_class_type, align 8
  %65 = call i64 @TYPE_BINFO(i64 %64)
  %66 = call i64 @TREE_CHAIN(i64 %65)
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %113, %63
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %116

70:                                               ; preds = %67
  %71 = load i64, i64* %9, align 8
  %72 = call i64 @BINFO_TYPE(i64 %71)
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @CLASS_TYPE_P(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %112

76:                                               ; preds = %70
  %77 = load i64, i64* %10, align 8
  %78 = call i64 @dependent_type_p(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %112

80:                                               ; preds = %76
  %81 = load i64, i64* %10, align 8
  %82 = call i64 @CLASSTYPE_PRIMARY_TEMPLATE_TYPE(i64 %81)
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i64 @TYPE_FIELDS(i64 %83)
  store i64 %84, i64* %11, align 8
  br label %85

85:                                               ; preds = %104, %80
  %86 = load i64, i64* %11, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load i64, i64* %11, align 8
  %90 = call i64 @TREE_CODE(i64 %89)
  %91 = load i64, i64* @TYPE_DECL, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i64, i64* %11, align 8
  %95 = call i64 @DECL_NAME(i64 %94)
  %96 = load i64, i64* %6, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i64, i64* %9, align 8
  %100 = call i64 @BINFO_TYPE(i64 %99)
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @inform(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %100, i64 %101)
  br label %107

103:                                              ; preds = %93, %88
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %11, align 8
  %106 = call i64 @TREE_CHAIN(i64 %105)
  store i64 %106, i64* %11, align 8
  br label %85

107:                                              ; preds = %98, %85
  %108 = load i64, i64* %11, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %116

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111, %76, %70
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %9, align 8
  %115 = call i64 @TREE_CHAIN(i64 %114)
  store i64 %115, i64* %9, align 8
  br label %67

116:                                              ; preds = %110, %67
  br label %117

117:                                              ; preds = %116, %59, %56, %51
  br label %155

118:                                              ; preds = %46
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @error_mark_node, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %154

124:                                              ; preds = %118
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @TREE_CODE(i64 %127)
  %129 = load i64, i64* @NAMESPACE_DECL, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load i64, i64* %6, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %132, i64 %135)
  br label %153

137:                                              ; preds = %124
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = call i64 @TYPE_P(i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load i64, i64* %6, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %145, i64 %148)
  br label %152

150:                                              ; preds = %137
  %151 = call i32 (...) @gcc_unreachable()
  br label %152

152:                                              ; preds = %150, %144
  br label %153

153:                                              ; preds = %152, %131
  br label %154

154:                                              ; preds = %153, %118
  br label %155

155:                                              ; preds = %154, %117
  br label %156

156:                                              ; preds = %155, %44
  br label %157

157:                                              ; preds = %156, %36
  br label %158

158:                                              ; preds = %157, %28
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = call i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_5__* %159)
  ret void
}

declare dso_local i64 @cp_parser_lookup_name_simple(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @dependent_type_p(i64) #1

declare dso_local i64 @CLASSTYPE_PRIMARY_TEMPLATE_TYPE(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i32 @inform(i8*, i64, i64) #1

declare dso_local i64 @TYPE_P(i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
