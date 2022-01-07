; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_type_parameter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_type_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@CPP_KEYWORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"`class', `typename', or `template'\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@class_type_node = common dso_local global i32 0, align 4
@CPP_EQ = common dso_local global i32 0, align 4
@dk_no_deferred = common dso_local global i32 0, align 4
@CPP_LESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"`<'\00", align 1
@CPP_GREATER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"`>'\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"`class'\00", align 1
@CPP_COMMA = common dso_local global i32 0, align 4
@TYPE_DECL = common dso_local global i32 0, align 4
@none_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @cp_parser_type_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_type_parameter(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = load i32, i32* @CPP_KEYWORD, align 4
  %14 = call %struct.TYPE_12__* @cp_parser_require(%struct.TYPE_13__* %12, i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @error_mark_node, align 4
  store i32 %18, i32* %2, align 4
  br label %147

19:                                               ; preds = %1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %143 [
    i32 130, label %23
    i32 128, label %23
    i32 129, label %61
  ]

23:                                               ; preds = %19, %19
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CPP_NAME, align 4
  %28 = call i32 @cp_lexer_next_token_is(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = call i32 @cp_parser_identifier(%struct.TYPE_13__* %31)
  store i32 %32, i32* %6, align 4
  br label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @NULL_TREE, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* @class_type_node, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @finish_template_type_parm(i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CPP_EQ, align 4
  %43 = call i32 @cp_lexer_next_token_is(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %35
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cp_lexer_consume_token(i32 %48)
  %50 = load i32, i32* @dk_no_deferred, align 4
  %51 = call i32 @push_deferring_access_checks(i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = call i32 @cp_parser_type_id(%struct.TYPE_13__* %52)
  store i32 %53, i32* %7, align 4
  %54 = call i32 (...) @pop_deferring_access_checks()
  br label %57

55:                                               ; preds = %35
  %56 = load i32, i32* @NULL_TREE, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %45
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @build_tree_list(i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %145

61:                                               ; preds = %19
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = load i32, i32* @CPP_LESS, align 4
  %64 = call %struct.TYPE_12__* @cp_parser_require(%struct.TYPE_13__* %62, i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = call i32 @cp_parser_template_parameter_list(%struct.TYPE_13__* %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = load i32, i32* @CPP_GREATER, align 4
  %69 = call %struct.TYPE_12__* @cp_parser_require(%struct.TYPE_13__* %67, i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = call i32 @cp_parser_require_keyword(%struct.TYPE_13__* %70, i32 130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CPP_EQ, align 4
  %76 = call i32 @cp_lexer_next_token_is_not(i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %61
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CPP_GREATER, align 4
  %83 = call i32 @cp_lexer_next_token_is_not(i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %78
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CPP_COMMA, align 4
  %90 = call i32 @cp_lexer_next_token_is_not(i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = call i32 @cp_parser_identifier(%struct.TYPE_13__* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @error_mark_node, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @NULL_TREE, align 4
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %98, %92
  br label %103

101:                                              ; preds = %85, %78, %61
  %102 = load i32, i32* @NULL_TREE, align 4
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %101, %100
  %104 = load i32, i32* @class_type_node, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @finish_template_template_parm(i32 %104, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @CPP_EQ, align 4
  %111 = call i32 @cp_lexer_next_token_is(i32 %109, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %103
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @cp_lexer_consume_token(i32 %116)
  %118 = load i32, i32* @dk_no_deferred, align 4
  %119 = call i32 @push_deferring_access_checks(i32 %118)
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = call i32 @cp_parser_id_expression(%struct.TYPE_13__* %120, i32 0, i32 1, i32* %11, i32 0, i32 0)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @TREE_CODE(i32 %122)
  %124 = load i32, i32* @TYPE_DECL, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  br label %133

127:                                              ; preds = %113
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @none_type, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @cp_parser_lookup_name(%struct.TYPE_13__* %128, i32 %129, i32 %130, i32 %131, i32 0, i32 1, i32* null)
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %127, %126
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @check_template_template_default_arg(i32 %134)
  store i32 %135, i32* %10, align 4
  %136 = call i32 (...) @pop_deferring_access_checks()
  br label %139

137:                                              ; preds = %103
  %138 = load i32, i32* @NULL_TREE, align 4
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %137, %133
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @build_tree_list(i32 %140, i32 %141)
  store i32 %142, i32* %5, align 4
  br label %145

143:                                              ; preds = %19
  %144 = call i32 (...) @gcc_unreachable()
  br label %145

145:                                              ; preds = %143, %139, %57
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %17
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.TYPE_12__* @cp_parser_require(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i32 @cp_parser_identifier(%struct.TYPE_13__*) #1

declare dso_local i32 @finish_template_type_parm(i32, i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @push_deferring_access_checks(i32) #1

declare dso_local i32 @cp_parser_type_id(%struct.TYPE_13__*) #1

declare dso_local i32 @pop_deferring_access_checks(...) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @cp_parser_template_parameter_list(%struct.TYPE_13__*) #1

declare dso_local i32 @cp_parser_require_keyword(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @cp_lexer_next_token_is_not(i32, i32) #1

declare dso_local i32 @finish_template_template_parm(i32, i32) #1

declare dso_local i32 @cp_parser_id_expression(%struct.TYPE_13__*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @cp_parser_lookup_name(%struct.TYPE_13__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @check_template_template_default_arg(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
