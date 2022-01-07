; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_write_automata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_write_automata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_time = common dso_local global i32 0, align 4
@progress_flag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Forming and outputting automata tables...\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Output functions to work with automata...\00", align 1
@output_file = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"\0Astatic int *%s;\0A\00", align 1
@DFA_INSN_CODES_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"\0Astatic int %s;\0A\0A\00", align 1
@DFA_INSN_CODES_LENGTH_VARIABLE_NAME = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"\0A#if %s\0A\0A\00", align 1
@CPU_UNITS_QUERY_MACRO_NAME = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"\0A#endif /* #if %s */\0A\0A\00", align 1
@v_flag = common dso_local global i64 0, align 8
@output_description_file_name = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@output_description_file = common dso_local global i32* null, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Output automata description...\00", align 1
@time_flag = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"Summary:\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"  check time \00", align 1
@check_time = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c", generation time \00", align 1
@generation_time = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c", all time \00", align 1
@all_time = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [41 x i8] c"Error in writing DFA description file %s\00", align 1
@irp = common dso_local global i32 0, align 4
@have_error = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_automata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_automata() #0 {
  %1 = call i32 (...) @create_ticker()
  store i32 %1, i32* @output_time, align 4
  %2 = load i64, i64* @progress_flag, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** @stderr, align 8
  %6 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %4, %0
  %8 = call i32 (...) @output_tables()
  %9 = load i64, i64* @progress_flag, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i32*, i32** @stderr, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** @stderr, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %11, %7
  %17 = call i32 (...) @output_chip_definitions()
  %18 = call i32 (...) @output_max_insn_queue_index_def()
  %19 = call i32 (...) @output_internal_min_issue_delay_func()
  %20 = call i32 (...) @output_internal_trans_func()
  %21 = load i32, i32* @output_file, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  %24 = load i8*, i8** @DFA_INSN_CODES_VARIABLE_NAME, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @output_file, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  %29 = load i8*, i8** @DFA_INSN_CODES_LENGTH_VARIABLE_NAME, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %31 = call i32 (...) @output_dfa_insn_code_func()
  %32 = call i32 (...) @output_trans_func()
  %33 = call i32 (...) @output_min_issue_delay_func()
  %34 = call i32 (...) @output_internal_dead_lock_func()
  %35 = call i32 (...) @output_dead_lock_func()
  %36 = call i32 (...) @output_size_func()
  %37 = call i32 (...) @output_internal_reset_func()
  %38 = call i32 (...) @output_reset_func()
  %39 = call i32 (...) @output_min_insn_conflict_delay_func()
  %40 = call i32 (...) @output_internal_insn_latency_func()
  %41 = call i32 (...) @output_insn_latency_func()
  %42 = call i32 (...) @output_print_reservation_func()
  %43 = load i32, i32* @output_file, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i32*
  %46 = load i8*, i8** @CPU_UNITS_QUERY_MACRO_NAME, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  %48 = call i32 (...) @output_get_cpu_unit_code_func()
  %49 = call i32 (...) @output_cpu_unit_reservation_p()
  %50 = load i32, i32* @output_file, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i32*
  %53 = load i8*, i8** @CPU_UNITS_QUERY_MACRO_NAME, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %53)
  %55 = call i32 (...) @output_dfa_clean_insn_cache_func()
  %56 = call i32 (...) @output_dfa_start_func()
  %57 = call i32 (...) @output_dfa_finish_func()
  %58 = load i64, i64* @progress_flag, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %16
  %61 = load i32*, i32** @stderr, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %16
  %64 = load i64, i64* @v_flag, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %63
  %67 = load i32, i32* @output_description_file_name, align 4
  %68 = call i32* @fopen(i32 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %68, i32** @output_description_file, align 8
  %69 = load i32*, i32** @output_description_file, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* @output_description_file_name, align 4
  %73 = call i32 @perror(i32 %72)
  %74 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %75 = call i32 @exit(i32 %74) #3
  unreachable

76:                                               ; preds = %66
  %77 = load i64, i64* @progress_flag, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** @stderr, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  %83 = call i32 (...) @output_description()
  %84 = call i32 (...) @output_automaton_descriptions()
  %85 = load i64, i64* @progress_flag, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32*, i32** @stderr, align 8
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32*, i32** @output_description_file, align 8
  %92 = call i32 @output_statistics(i32* %91)
  br label %93

93:                                               ; preds = %90, %63
  %94 = load i32*, i32** @stderr, align 8
  %95 = call i32 @output_statistics(i32* %94)
  %96 = call i32 @ticker_off(i32* @output_time)
  %97 = load i32*, i32** @stderr, align 8
  %98 = call i32 @output_time_statistics(i32* %97)
  %99 = call i32 (...) @finish_states()
  %100 = call i32 (...) @finish_arcs()
  %101 = call i32 (...) @finish_automata_lists()
  %102 = load i64, i64* @time_flag, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %93
  %105 = load i32*, i32** @stderr, align 8
  %106 = call i32 (i32*, i8*, ...) @fprintf(i32* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %107 = load i32*, i32** @stderr, align 8
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %109 = load i32*, i32** @stderr, align 8
  %110 = load i32, i32* @check_time, align 4
  %111 = call i32 @print_active_time(i32* %109, i32 %110)
  %112 = load i32*, i32** @stderr, align 8
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %114 = load i32*, i32** @stderr, align 8
  %115 = load i32, i32* @generation_time, align 4
  %116 = call i32 @print_active_time(i32* %114, i32 %115)
  %117 = load i32*, i32** @stderr, align 8
  %118 = call i32 (i32*, i8*, ...) @fprintf(i32* %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %119 = load i32*, i32** @stderr, align 8
  %120 = load i32, i32* @all_time, align 4
  %121 = call i32 @print_active_time(i32* %119, i32 %120)
  %122 = load i32*, i32** @stderr, align 8
  %123 = call i32 (i32*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %124

124:                                              ; preds = %104, %93
  %125 = load i32*, i32** @output_description_file, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load i32*, i32** @output_description_file, align 8
  %129 = call i32 @fflush(i32* %128)
  %130 = load i32, i32* @stdout, align 4
  %131 = call i64 @ferror(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, i32* @output_description_file_name, align 4
  %135 = call i32 @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %127
  %137 = load i32*, i32** @output_description_file, align 8
  %138 = call i32 @fclose(i32* %137)
  br label %139

139:                                              ; preds = %136, %124
  %140 = call i32 (...) @finish_automaton_decl_table()
  %141 = call i32 (...) @finish_insn_decl_table()
  %142 = call i32 (...) @finish_decl_table()
  %143 = call i32 @obstack_free(i32* @irp, i32* null)
  %144 = load i64, i64* @have_error, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load i32*, i32** @output_description_file, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* @output_description_file_name, align 4
  %151 = call i32 @remove(i32 %150)
  br label %152

152:                                              ; preds = %149, %146, %139
  ret void
}

declare dso_local i32 @create_ticker(...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @output_tables(...) #1

declare dso_local i32 @output_chip_definitions(...) #1

declare dso_local i32 @output_max_insn_queue_index_def(...) #1

declare dso_local i32 @output_internal_min_issue_delay_func(...) #1

declare dso_local i32 @output_internal_trans_func(...) #1

declare dso_local i32 @output_dfa_insn_code_func(...) #1

declare dso_local i32 @output_trans_func(...) #1

declare dso_local i32 @output_min_issue_delay_func(...) #1

declare dso_local i32 @output_internal_dead_lock_func(...) #1

declare dso_local i32 @output_dead_lock_func(...) #1

declare dso_local i32 @output_size_func(...) #1

declare dso_local i32 @output_internal_reset_func(...) #1

declare dso_local i32 @output_reset_func(...) #1

declare dso_local i32 @output_min_insn_conflict_delay_func(...) #1

declare dso_local i32 @output_internal_insn_latency_func(...) #1

declare dso_local i32 @output_insn_latency_func(...) #1

declare dso_local i32 @output_print_reservation_func(...) #1

declare dso_local i32 @output_get_cpu_unit_code_func(...) #1

declare dso_local i32 @output_cpu_unit_reservation_p(...) #1

declare dso_local i32 @output_dfa_clean_insn_cache_func(...) #1

declare dso_local i32 @output_dfa_start_func(...) #1

declare dso_local i32 @output_dfa_finish_func(...) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @perror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @output_description(...) #1

declare dso_local i32 @output_automaton_descriptions(...) #1

declare dso_local i32 @output_statistics(i32*) #1

declare dso_local i32 @ticker_off(i32*) #1

declare dso_local i32 @output_time_statistics(i32*) #1

declare dso_local i32 @finish_states(...) #1

declare dso_local i32 @finish_arcs(...) #1

declare dso_local i32 @finish_automata_lists(...) #1

declare dso_local i32 @print_active_time(i32*, i32) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @finish_automaton_decl_table(...) #1

declare dso_local i32 @finish_insn_decl_table(...) #1

declare dso_local i32 @finish_decl_table(...) #1

declare dso_local i32 @obstack_free(i32*, i32*) #1

declare dso_local i32 @remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
