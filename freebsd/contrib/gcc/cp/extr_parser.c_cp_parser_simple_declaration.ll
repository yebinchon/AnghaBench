; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_simple_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_simple_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_19__ = type { i64 }

@dk_deferred = common dso_local global i32 0, align 4
@CP_PARSER_FLAGS_OPTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"expected declaration\00", align 1
@CPP_OPEN_PAREN = common dso_local global i64 0, align 8
@CPP_SEMICOLON = common dso_local global i64 0, align 8
@CPP_COMMA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"mixing declarations and function-definitions is forbidden\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"expected %<,%> or %<;%>\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"`;'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32)* @cp_parser_simple_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_parser_simple_declaration(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @dk_deferred, align 4
  %12 = call i32 @push_deferring_access_checks(i32 %11)
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = load i32, i32* @CP_PARSER_FLAGS_OPTIONAL, align 4
  %15 = call i32 @cp_parser_decl_specifier_seq(%struct.TYPE_20__* %13, i32 %14, %struct.TYPE_21__* %5, i32* %6)
  %16 = call i32 (...) @stop_deferring_access_checks()
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = call i32 @cp_parser_error(%struct.TYPE_20__* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %163

26:                                               ; preds = %19, %2
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = call i64 @cp_parser_parse_and_diagnose_invalid_type_name(%struct.TYPE_20__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = call i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_20__* %35)
  br label %163

37:                                               ; preds = %30, %26
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @CPP_OPEN_PAREN, align 8
  %46 = call i64 @cp_lexer_next_token_is_not(i32 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %50 = call i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_20__* %49)
  br label %51

51:                                               ; preds = %48, %41, %37
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %147, %51
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* @CPP_SEMICOLON, align 8
  %57 = call i64 @cp_lexer_next_token_is_not(i32 %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %148

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_19__* @cp_lexer_peek_token(i32 %65)
  store %struct.TYPE_19__* %66, %struct.TYPE_19__** %8, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CPP_COMMA, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @gcc_assert(i32 %72)
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cp_lexer_consume_token(i32 %76)
  br label %79

78:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %62
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @cp_parser_init_declarator(%struct.TYPE_20__* %80, %struct.TYPE_21__* %5, i32* null, i32 %81, i32 0, i32 %82, i32* %9)
  store i64 %83, i64* %10, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %85 = call i64 @cp_parser_error_occurred(%struct.TYPE_20__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %163

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* @CPP_COMMA, align 8
  %96 = call i64 @cp_lexer_next_token_is(i32 %94, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = call i32 @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %102

100:                                              ; preds = %91
  %101 = call i32 (...) @pop_deferring_access_checks()
  br label %165

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %88
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.TYPE_19__* @cp_lexer_peek_token(i32 %106)
  store %struct.TYPE_19__* %107, %struct.TYPE_19__** %8, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @CPP_COMMA, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %147

114:                                              ; preds = %103
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @CPP_SEMICOLON, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %148

121:                                              ; preds = %114
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @error_mark_node, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %127 = call i64 @cp_parser_uncommitted_to_tentative_parse_p(%struct.TYPE_20__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125, %121
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %131 = call i32 @cp_parser_error(%struct.TYPE_20__* %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %125
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %134 = call i32 @cp_parser_skip_to_end_of_statement(%struct.TYPE_20__* %133)
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* @CPP_SEMICOLON, align 8
  %139 = call i64 @cp_lexer_next_token_is(i32 %137, i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @cp_lexer_consume_token(i32 %144)
  br label %146

146:                                              ; preds = %141, %132
  br label %163

147:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %52

148:                                              ; preds = %120, %52
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %148
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %153 = call i64 @cp_parser_declares_only_class_p(%struct.TYPE_20__* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = call i32 @shadow_tag(%struct.TYPE_21__* %5)
  br label %157

157:                                              ; preds = %155, %151
  %158 = call i32 (...) @perform_deferred_access_checks()
  br label %159

159:                                              ; preds = %157, %148
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %161 = load i64, i64* @CPP_SEMICOLON, align 8
  %162 = call i32 @cp_parser_require(%struct.TYPE_20__* %160, i64 %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %163

163:                                              ; preds = %159, %146, %87, %34, %23
  %164 = call i32 (...) @pop_deferring_access_checks()
  br label %165

165:                                              ; preds = %163, %100
  ret void
}

declare dso_local i32 @push_deferring_access_checks(i32) #1

declare dso_local i32 @cp_parser_decl_specifier_seq(%struct.TYPE_20__*, i32, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @stop_deferring_access_checks(...) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @cp_parser_parse_and_diagnose_invalid_type_name(%struct.TYPE_20__*) #1

declare dso_local i32 @cp_parser_commit_to_tentative_parse(%struct.TYPE_20__*) #1

declare dso_local i64 @cp_lexer_next_token_is_not(i32, i64) #1

declare dso_local %struct.TYPE_19__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i64 @cp_parser_init_declarator(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @cp_parser_error_occurred(%struct.TYPE_20__*) #1

declare dso_local i64 @cp_lexer_next_token_is(i32, i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @pop_deferring_access_checks(...) #1

declare dso_local i64 @cp_parser_uncommitted_to_tentative_parse_p(%struct.TYPE_20__*) #1

declare dso_local i32 @cp_parser_skip_to_end_of_statement(%struct.TYPE_20__*) #1

declare dso_local i64 @cp_parser_declares_only_class_p(%struct.TYPE_20__*) #1

declare dso_local i32 @shadow_tag(%struct.TYPE_21__*) #1

declare dso_local i32 @perform_deferred_access_checks(...) #1

declare dso_local i32 @cp_parser_require(%struct.TYPE_20__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
