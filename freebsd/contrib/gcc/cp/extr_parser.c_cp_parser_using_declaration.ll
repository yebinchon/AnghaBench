; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_using_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_using_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64 }

@RID_USING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"`using'\00", align 1
@RID_TYPENAME = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@global_namespace = common dso_local global i64 0, align 8
@CPP_SEMICOLON = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@BIT_NOT_EXPR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"a template-id may not appear in a using-declaration\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"`;'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32)* @cp_parser_using_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_using_declaration(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_18__* %15)
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = load i32, i32* @RID_USING, align 4
  %20 = call i32 @cp_parser_require_keyword(%struct.TYPE_18__* %18, i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_17__* @cp_lexer_peek_token(i32 %23)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %6, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RID_TYPENAME, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cp_lexer_consume_token(i32 %33)
  br label %35

35:                                               ; preds = %30, %17
  br label %36

36:                                               ; preds = %35, %14
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %38 = call i64 @cp_parser_global_scope_opt(%struct.TYPE_18__* %37, i32 0)
  %39 = load i64, i64* @NULL_TREE, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44, %36
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @cp_parser_nested_name_specifier(%struct.TYPE_18__* %48, i32 %49, i32 1, i32 0, i32 1)
  store i64 %50, i64* %11, align 8
  br label %54

51:                                               ; preds = %44
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = call i64 @cp_parser_nested_name_specifier_opt(%struct.TYPE_18__* %52, i32 0, i32 1, i32 0, i32 1)
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* @global_namespace, align 8
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %64 = call i64 @cp_parser_error_occurred(%struct.TYPE_18__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = call i32 @cp_parser_parse_definitely(%struct.TYPE_18__* %67)
  store i32 %68, i32* %3, align 4
  br label %155

69:                                               ; preds = %62, %59
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %71 = call i64 @cp_parser_unqualified_id(%struct.TYPE_18__* %70, i32 0, i32 1, i32 1, i32 0)
  store i64 %71, i64* %10, align 8
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %69
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CPP_SEMICOLON, align 4
  %79 = call i64 @cp_lexer_next_token_is_not(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = call i32 @cp_parser_simulate_error(%struct.TYPE_18__* %82)
  br label %84

84:                                               ; preds = %81, %74
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = call i32 @cp_parser_parse_definitely(%struct.TYPE_18__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %155

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %69
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @error_mark_node, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @error_mark_node, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %90
  br label %151

99:                                               ; preds = %94
  %100 = load i64, i64* %10, align 8
  %101 = call i64 @TREE_CODE(i64 %100)
  %102 = load i64, i64* @IDENTIFIER_NODE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i64, i64* %10, align 8
  %106 = call i64 @TREE_CODE(i64 %105)
  %107 = load i64, i64* @BIT_NOT_EXPR, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %150

111:                                              ; preds = %104, %99
  %112 = call i64 (...) @at_class_scope_p()
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %10, align 8
  %119 = call i64 @do_class_using_decl(i32 %117, i64 %118)
  store i64 %119, i64* %9, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i32 @finish_member_declaration(i64 %120)
  br label %149

122:                                              ; preds = %111
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = load i64, i64* %10, align 8
  %125 = call i64 @cp_parser_lookup_name_simple(%struct.TYPE_18__* %123, i64 %124)
  store i64 %125, i64* %9, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load i64, i64* @error_mark_node, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @cp_parser_name_lookup_error(%struct.TYPE_18__* %130, i64 %131, i64 %132, i32* null)
  br label %148

134:                                              ; preds = %122
  %135 = call i32 (...) @at_namespace_scope_p()
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %134
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* %10, align 8
  %141 = call i32 @do_local_using_decl(i64 %138, i64 %139, i64 %140)
  br label %147

142:                                              ; preds = %134
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %11, align 8
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @do_toplevel_using_decl(i64 %143, i64 %144, i64 %145)
  br label %147

147:                                              ; preds = %142, %137
  br label %148

148:                                              ; preds = %147, %129
  br label %149

149:                                              ; preds = %148, %114
  br label %150

150:                                              ; preds = %149, %109
  br label %151

151:                                              ; preds = %150, %98
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %153 = load i32, i32* @CPP_SEMICOLON, align 4
  %154 = call i32 @cp_parser_require(%struct.TYPE_18__* %152, i32 %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %88, %66
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_18__*) #1

declare dso_local i32 @cp_parser_require_keyword(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local %struct.TYPE_17__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i64 @cp_parser_global_scope_opt(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @cp_parser_nested_name_specifier(%struct.TYPE_18__*, i32, i32, i32, i32) #1

declare dso_local i64 @cp_parser_nested_name_specifier_opt(%struct.TYPE_18__*, i32, i32, i32, i32) #1

declare dso_local i64 @cp_parser_error_occurred(%struct.TYPE_18__*) #1

declare dso_local i32 @cp_parser_parse_definitely(%struct.TYPE_18__*) #1

declare dso_local i64 @cp_parser_unqualified_id(%struct.TYPE_18__*, i32, i32, i32, i32) #1

declare dso_local i64 @cp_lexer_next_token_is_not(i32, i32) #1

declare dso_local i32 @cp_parser_simulate_error(%struct.TYPE_18__*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @at_class_scope_p(...) #1

declare dso_local i64 @do_class_using_decl(i32, i64) #1

declare dso_local i32 @finish_member_declaration(i64) #1

declare dso_local i64 @cp_parser_lookup_name_simple(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @cp_parser_name_lookup_error(%struct.TYPE_18__*, i64, i64, i32*) #1

declare dso_local i32 @at_namespace_scope_p(...) #1

declare dso_local i32 @do_local_using_decl(i64, i64, i64) #1

declare dso_local i32 @do_toplevel_using_decl(i64, i64, i64) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_18__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
