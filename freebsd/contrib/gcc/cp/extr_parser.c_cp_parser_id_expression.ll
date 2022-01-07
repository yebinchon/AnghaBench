; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_id_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_id_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_16__ = type { i32, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@RID_OPERATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"expected id-expression\00", align 1
@error_mark_node = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_17__*, i32, i32, i32*, i32, i32)* @cp_parser_id_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cp_parser_id_expression(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %11, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %6
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %30 = call i64 @cp_parser_global_scope_opt(%struct.TYPE_17__* %29, i32 0)
  %31 = load i64, i64* @NULL_TREE, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @cp_parser_nested_name_specifier_opt(%struct.TYPE_17__* %34, i32 0, i32 %35, i32 0, i32 %36)
  %38 = load i64, i64* @NULL_TREE, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %28
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32* %20, i32** %11, align 8
  br label %47

47:                                               ; preds = %46, %43
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = call i32 @cp_parser_optional_template_keyword(%struct.TYPE_17__* %48)
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %16, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %17, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %18, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i8* @cp_parser_unqualified_id(%struct.TYPE_17__* %60, i32 %62, i32 %63, i32 %64, i32 0)
  store i8* %65, i8** %19, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %19, align 8
  store i8* %75, i8** %7, align 8
  br label %137

76:                                               ; preds = %28
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %131

79:                                               ; preds = %76
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.TYPE_16__* @cp_lexer_peek_token(i32 %82)
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %21, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 128
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %90 = call i32 @cp_parser_nth_token_starts_template_argument_list_p(%struct.TYPE_17__* %89, i32 2)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %94 = call i8* @cp_parser_identifier(%struct.TYPE_17__* %93)
  store i8* %94, i8** %7, align 8
  br label %137

95:                                               ; preds = %88, %79
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_17__* %96)
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i8* @cp_parser_template_id(%struct.TYPE_17__* %98, i32 0, i32 1, i32 %99)
  store i8* %100, i8** %22, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %102 = call i64 @cp_parser_parse_definitely(%struct.TYPE_17__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i8*, i8** %22, align 8
  store i8* %105, i8** %7, align 8
  br label %137

106:                                              ; preds = %95
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call %struct.TYPE_16__* @cp_lexer_peek_token(i32 %109)
  store %struct.TYPE_16__* %110, %struct.TYPE_16__** %21, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %127 [
    i32 128, label %114
    i32 129, label %117
  ]

114:                                              ; preds = %106
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %116 = call i8* @cp_parser_identifier(%struct.TYPE_17__* %115)
  store i8* %116, i8** %7, align 8
  br label %137

117:                                              ; preds = %106
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @RID_OPERATOR, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %125 = call i8* @cp_parser_operator_function_id(%struct.TYPE_17__* %124)
  store i8* %125, i8** %7, align 8
  br label %137

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %106, %126
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %129 = call i32 @cp_parser_error(%struct.TYPE_17__* %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %130 = load i8*, i8** @error_mark_node, align 8
  store i8* %130, i8** %7, align 8
  br label %137

131:                                              ; preds = %76
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %13, align 4
  %136 = call i8* @cp_parser_unqualified_id(%struct.TYPE_17__* %132, i32 %133, i32 1, i32 %134, i32 %135)
  store i8* %136, i8** %7, align 8
  br label %137

137:                                              ; preds = %131, %127, %123, %114, %104, %92, %47
  %138 = load i8*, i8** %7, align 8
  ret i8* %138
}

declare dso_local i64 @cp_parser_global_scope_opt(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @cp_parser_nested_name_specifier_opt(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @cp_parser_optional_template_keyword(%struct.TYPE_17__*) #1

declare dso_local i8* @cp_parser_unqualified_id(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_parser_nth_token_starts_template_argument_list_p(%struct.TYPE_17__*, i32) #1

declare dso_local i8* @cp_parser_identifier(%struct.TYPE_17__*) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_17__*) #1

declare dso_local i8* @cp_parser_template_id(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i64 @cp_parser_parse_definitely(%struct.TYPE_17__*) #1

declare dso_local i8* @cp_parser_operator_function_id(%struct.TYPE_17__*) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_17__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
