; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iflag = common dso_local global i64 0, align 8
@code_file = common dso_local global i32* null, align 8
@outline = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@externs_file_name = common dso_local global i8* null, align 8
@externs_file = common dso_local global i32* null, align 8
@rflag = common dso_local global i64 0, align 8
@xdecls = common dso_local global i32 0, align 4
@global_vars = common dso_local global i32 0, align 4
@pure_parser = common dso_local global i64 0, align 8
@impure_vars = common dso_local global i32 0, align 4
@dflag = common dso_local global i64 0, align 8
@defines_file_name = common dso_local global i8* null, align 8
@defines_file = common dso_local global i32* null, align 8
@tables = common dso_local global i32 0, align 4
@hdr_defs = common dso_local global i32 0, align 4
@hdr_vars = common dso_local global i32 0, align 4
@body_1 = common dso_local global i32 0, align 4
@body_vars = common dso_local global i32 0, align 4
@body_2 = common dso_local global i32 0, align 4
@init_vars = common dso_local global i32 0, align 4
@body_3 = common dso_local global i32 0, align 4
@trailer = common dso_local global i32 0, align 4
@destructor = common dso_local global i64 0, align 8
@initial_action = common dso_local global i64 0, align 8
@locations = common dso_local global i64 0, align 8
@output_file = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @free_itemsets()
  %3 = call i32 (...) @free_shifts()
  %4 = call i32 (...) @free_reductions()
  %5 = load i64, i64* @iflag, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load i32*, i32** @code_file, align 8
  %9 = call i32 @write_code_lineno(i32* %8)
  %10 = load i32, i32* @outline, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @outline, align 4
  %12 = load i32*, i32** @code_file, align 8
  %13 = load i8*, i8** @externs_file_name, align 8
  %14 = call i32 @fprintf(i32* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** @externs_file, align 8
  store i32* %15, i32** %1, align 8
  br label %18

16:                                               ; preds = %0
  %17 = load i32*, i32** @code_file, align 8
  store i32* %17, i32** %1, align 8
  br label %18

18:                                               ; preds = %16, %7
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @output_prefix(i32* %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @output_pure_parser(i32* %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @output_stored_text(i32* %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @output_stype(i32* %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @output_parse_decl(i32* %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @output_lex_decl(i32* %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @output_error_decl(i32* %31)
  %33 = load i64, i64* @iflag, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %18
  %36 = load i64, i64* @rflag, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35, %18
  %39 = load i32*, i32** %1, align 8
  %40 = load i32, i32* @xdecls, align 4
  %41 = call i32 @write_section(i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i64, i64* @iflag, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i32*, i32** @externs_file, align 8
  %47 = load i32, i32* @global_vars, align 4
  %48 = call i32 @output_externs(i32* %46, i32 %47)
  %49 = load i64, i64* @pure_parser, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load i32*, i32** @externs_file, align 8
  %53 = load i32, i32* @impure_vars, align 4
  %54 = call i32 @output_externs(i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i64, i64* @iflag, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i64, i64* @dflag, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* @outline, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @outline, align 4
  %65 = load i32*, i32** @code_file, align 8
  %66 = load i8*, i8** @defines_file_name, align 8
  %67 = call i32 @fprintf(i32* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %66)
  br label %71

68:                                               ; preds = %59
  %69 = load i32*, i32** @externs_file, align 8
  %70 = call i32 @output_defines(i32* %69)
  br label %71

71:                                               ; preds = %68, %62
  br label %77

72:                                               ; preds = %56
  %73 = load i32*, i32** @code_file, align 8
  %74 = call i32 @putc_code(i32* %73, i8 signext 10)
  %75 = load i32*, i32** @code_file, align 8
  %76 = call i32 @output_defines(i32* %75)
  br label %77

77:                                               ; preds = %72, %71
  %78 = load i64, i64* @dflag, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = call i32 (...) @start_defines_file()
  %82 = load i32*, i32** @defines_file, align 8
  %83 = call i32 @output_defines(i32* %82)
  %84 = call i32 (...) @end_defines_file()
  br label %85

85:                                               ; preds = %80, %77
  %86 = call i32 (...) @output_rule_data()
  %87 = call i32 (...) @output_yydefred()
  %88 = call i32 (...) @output_actions()
  %89 = call i32 (...) @free_parser()
  %90 = call i32 (...) @output_debug()
  %91 = load i64, i64* @rflag, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %85
  %94 = load i32*, i32** @code_file, align 8
  %95 = load i32, i32* @xdecls, align 4
  %96 = call i32 @write_section(i32* %94, i32 %95)
  %97 = load i32*, i32** @code_file, align 8
  %98 = call i32 @output_YYINT_typedef(i32* %97)
  %99 = load i32*, i32** @code_file, align 8
  %100 = load i32, i32* @tables, align 4
  %101 = call i32 @write_section(i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %93, %85
  %103 = load i32*, i32** @code_file, align 8
  %104 = load i32, i32* @global_vars, align 4
  %105 = call i32 @write_section(i32* %103, i32 %104)
  %106 = load i64, i64* @pure_parser, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = load i32*, i32** @code_file, align 8
  %110 = load i32, i32* @impure_vars, align 4
  %111 = call i32 @write_section(i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %102
  %113 = load i32*, i32** @code_file, align 8
  %114 = load i32, i32* @hdr_defs, align 4
  %115 = call i32 @write_section(i32* %113, i32 %114)
  %116 = load i64, i64* @pure_parser, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %112
  %119 = load i32*, i32** @code_file, align 8
  %120 = load i32, i32* @hdr_vars, align 4
  %121 = call i32 @write_section(i32* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %112
  %123 = call i32 (...) @output_trailing_text()
  %124 = load i32*, i32** @code_file, align 8
  %125 = load i32, i32* @body_1, align 4
  %126 = call i32 @write_section(i32* %124, i32 %125)
  %127 = load i64, i64* @pure_parser, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i32*, i32** @code_file, align 8
  %131 = load i32, i32* @body_vars, align 4
  %132 = call i32 @write_section(i32* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %122
  %134 = load i32*, i32** @code_file, align 8
  %135 = load i32, i32* @body_2, align 4
  %136 = call i32 @write_section(i32* %134, i32 %135)
  %137 = load i64, i64* @pure_parser, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32*, i32** @code_file, align 8
  %141 = load i32, i32* @init_vars, align 4
  %142 = call i32 @write_section(i32* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %133
  %144 = load i32*, i32** @code_file, align 8
  %145 = load i32, i32* @body_3, align 4
  %146 = call i32 @write_section(i32* %144, i32 %145)
  %147 = call i32 (...) @output_semantic_actions()
  %148 = load i32*, i32** @code_file, align 8
  %149 = load i32, i32* @trailer, align 4
  %150 = call i32 @write_section(i32* %148, i32 %149)
  ret void
}

declare dso_local i32 @free_itemsets(...) #1

declare dso_local i32 @free_shifts(...) #1

declare dso_local i32 @free_reductions(...) #1

declare dso_local i32 @write_code_lineno(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @output_prefix(i32*) #1

declare dso_local i32 @output_pure_parser(i32*) #1

declare dso_local i32 @output_stored_text(i32*) #1

declare dso_local i32 @output_stype(i32*) #1

declare dso_local i32 @output_parse_decl(i32*) #1

declare dso_local i32 @output_lex_decl(i32*) #1

declare dso_local i32 @output_error_decl(i32*) #1

declare dso_local i32 @write_section(i32*, i32) #1

declare dso_local i32 @output_externs(i32*, i32) #1

declare dso_local i32 @output_defines(i32*) #1

declare dso_local i32 @putc_code(i32*, i8 signext) #1

declare dso_local i32 @start_defines_file(...) #1

declare dso_local i32 @end_defines_file(...) #1

declare dso_local i32 @output_rule_data(...) #1

declare dso_local i32 @output_yydefred(...) #1

declare dso_local i32 @output_actions(...) #1

declare dso_local i32 @free_parser(...) #1

declare dso_local i32 @output_debug(...) #1

declare dso_local i32 @output_YYINT_typedef(i32*) #1

declare dso_local i32 @output_trailing_text(...) #1

declare dso_local i32 @output_semantic_actions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
