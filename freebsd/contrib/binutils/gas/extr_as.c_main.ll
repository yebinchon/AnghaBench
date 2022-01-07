; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_as.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_as.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.defsym_list = type { %struct.defsym_list*, i32, i32 }

@start_time = common dso_local global i32 0, align 4
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@debug_memory = common dso_local global i64 0, align 8
@chunksize = common dso_local global i32 0, align 4
@myname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@out_file_name = common dso_local global i32 0, align 4
@close_output_file = common dso_local global i32 0, align 4
@flag_print_statistics = common dso_local global i64 0, align 8
@dump_statistics = common dso_local global i32 0, align 4
@flag_macro_alternate = common dso_local global i32 0, align 4
@flag_mri = common dso_local global i32 0, align 4
@macro_expr = common dso_local global i32 0, align 4
@stdoutput = common dso_local global i64 0, align 8
@defsyms = common dso_local global %struct.defsym_list* null, align 8
@absolute_section = common dso_local global i32 0, align 4
@zero_address_frag = common dso_local global i32 0, align 4
@flag_always_generate_output = common dso_local global i64 0, align 8
@listing_filename = common dso_local global i32 0, align 4
@flag_fatal_warnings = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"%d warnings, treating warnings as errors\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@IS_ELF = common dso_local global i64 0, align 8
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4
@OBJ_DEFAULT_OUTPUT_FILE_NAME = common dso_local global i32 0, align 4
@OUTPUT_FLAVOR = common dso_local global i64 0, align 8
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@flag_execstack = common dso_local global i64 0, align 8
@flag_noexecstack = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.defsym_list*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 (...) @get_run_time()
  store i32 %10, i32* @start_time, align 4
  %11 = load i32, i32* @PACKAGE, align 4
  %12 = load i32, i32* @LOCALEDIR, align 4
  %13 = call i32 @bindtextdomain(i32 %11, i32 %12)
  %14 = load i32, i32* @PACKAGE, align 4
  %15 = call i32 @textdomain(i32 %14)
  %16 = load i64, i64* @debug_memory, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 64, i32* @chunksize, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** @myname, align 8
  %23 = load i8*, i8** @myname, align 8
  %24 = call i32 @xmalloc_set_program_name(i8* %23)
  %25 = call i32 @expandargv(i32* %4, i8*** %5)
  %26 = load i8*, i8** @myname, align 8
  %27 = call i32 @START_PROGRESS(i8* %26, i32 0)
  store i32 ptrtoint ([6 x i8]* @.str to i32), i32* @out_file_name, align 4
  %28 = call i32 (...) @hex_init()
  %29 = call i32 (...) @bfd_init()
  %30 = load i8*, i8** @myname, align 8
  %31 = call i32 @bfd_set_error_program_name(i8* %30)
  %32 = call i32 @PROGRESS(i32 1)
  %33 = call i32 @parse_args(i32* %4, i8*** %5)
  %34 = call i32 (...) @symbol_begin()
  %35 = call i32 (...) @frag_init()
  %36 = call i32 (...) @subsegs_begin()
  %37 = call i32 (...) @read_begin()
  %38 = call i32 (...) @input_scrub_begin()
  %39 = call i32 (...) @expr_begin()
  %40 = load i32, i32* @close_output_file, align 4
  %41 = call i32 @xatexit(i32 %40)
  %42 = load i64, i64* @flag_print_statistics, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %19
  %45 = load i32, i32* @dump_statistics, align 4
  %46 = call i32 @xatexit(i32 %45)
  br label %47

47:                                               ; preds = %44, %19
  store i32 0, i32* %6, align 4
  %48 = load i32, i32* @flag_macro_alternate, align 4
  %49 = load i32, i32* @flag_mri, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @macro_expr, align 4
  %52 = call i32 @macro_init(i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = call i32 @PROGRESS(i32 1)
  %54 = load i32, i32* @out_file_name, align 4
  %55 = call i32 @output_file_create(i32 %54)
  %56 = load i64, i64* @stdoutput, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = call i32 (...) @itbl_init()
  br label %61

61:                                               ; preds = %64, %47
  %62 = load %struct.defsym_list*, %struct.defsym_list** @defsyms, align 8
  %63 = icmp ne %struct.defsym_list* %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load %struct.defsym_list*, %struct.defsym_list** @defsyms, align 8
  %66 = getelementptr inbounds %struct.defsym_list, %struct.defsym_list* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @absolute_section, align 4
  %69 = load %struct.defsym_list*, %struct.defsym_list** @defsyms, align 8
  %70 = getelementptr inbounds %struct.defsym_list, %struct.defsym_list* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32* @symbol_new(i32 %67, i32 %68, i32 %71, i32* @zero_address_frag)
  store i32* %72, i32** %8, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @S_SET_VOLATILE(i32* %73)
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @symbol_table_insert(i32* %75)
  %77 = load %struct.defsym_list*, %struct.defsym_list** @defsyms, align 8
  %78 = getelementptr inbounds %struct.defsym_list, %struct.defsym_list* %77, i32 0, i32 0
  %79 = load %struct.defsym_list*, %struct.defsym_list** %78, align 8
  store %struct.defsym_list* %79, %struct.defsym_list** %9, align 8
  %80 = load %struct.defsym_list*, %struct.defsym_list** @defsyms, align 8
  %81 = call i32 @free(%struct.defsym_list* %80)
  %82 = load %struct.defsym_list*, %struct.defsym_list** %9, align 8
  store %struct.defsym_list* %82, %struct.defsym_list** @defsyms, align 8
  br label %61

83:                                               ; preds = %61
  %84 = call i32 @PROGRESS(i32 1)
  %85 = load i32, i32* %4, align 4
  %86 = load i8**, i8*** %5, align 8
  %87 = call i32 @perform_an_assembly_pass(i32 %85, i8** %86)
  %88 = call i32 @cond_finish_check(i32 -1)
  %89 = call i32 (...) @dwarf2_finish()
  %90 = call i32 (...) @cfi_finish()
  %91 = call i64 (...) @seen_at_least_1_file()
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %83
  %94 = load i64, i64* @flag_always_generate_output, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = call i64 (...) @had_errors()
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %93
  store i32 1, i32* %7, align 4
  br label %101

100:                                              ; preds = %96, %83
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %100, %99
  %102 = call i32 (...) @subsegs_finish()
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 (...) @write_object_file()
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i32, i32* @listing_filename, align 4
  %109 = call i32 @listing_print(i32 %108)
  %110 = load i64, i64* @flag_fatal_warnings, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = call i64 (...) @had_warnings()
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = call i64 (...) @had_errors()
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %120 = call i64 (...) @had_warnings()
  %121 = call i32 @as_bad(i32 %119, i64 %120)
  br label %122

122:                                              ; preds = %118, %115, %112, %107
  %123 = call i64 (...) @had_errors()
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i64, i64* @flag_always_generate_output, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %128, %125, %122
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @out_file_name, align 4
  %134 = call i32 @unlink_if_ordinary(i32 %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = call i32 (...) @input_scrub_end()
  %137 = load i8*, i8** @myname, align 8
  %138 = call i32 @END_PROGRESS(i8* %137)
  %139 = call i64 (...) @had_errors()
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* @EXIT_FAILURE, align 4
  %143 = call i32 @xexit(i32 %142)
  br label %144

144:                                              ; preds = %141, %135
  %145 = call i32 (...) @print_dependencies()
  %146 = load i32, i32* @EXIT_SUCCESS, align 4
  %147 = call i32 @xexit(i32 %146)
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @get_run_time(...) #1

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @xmalloc_set_program_name(i8*) #1

declare dso_local i32 @expandargv(i32*, i8***) #1

declare dso_local i32 @START_PROGRESS(i8*, i32) #1

declare dso_local i32 @hex_init(...) #1

declare dso_local i32 @bfd_init(...) #1

declare dso_local i32 @bfd_set_error_program_name(i8*) #1

declare dso_local i32 @PROGRESS(i32) #1

declare dso_local i32 @parse_args(i32*, i8***) #1

declare dso_local i32 @symbol_begin(...) #1

declare dso_local i32 @frag_init(...) #1

declare dso_local i32 @subsegs_begin(...) #1

declare dso_local i32 @read_begin(...) #1

declare dso_local i32 @input_scrub_begin(...) #1

declare dso_local i32 @expr_begin(...) #1

declare dso_local i32 @xatexit(i32) #1

declare dso_local i32 @macro_init(i32, i32, i32, i32) #1

declare dso_local i32 @output_file_create(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @itbl_init(...) #1

declare dso_local i32* @symbol_new(i32, i32, i32, i32*) #1

declare dso_local i32 @S_SET_VOLATILE(i32*) #1

declare dso_local i32 @symbol_table_insert(i32*) #1

declare dso_local i32 @free(%struct.defsym_list*) #1

declare dso_local i32 @perform_an_assembly_pass(i32, i8**) #1

declare dso_local i32 @cond_finish_check(i32) #1

declare dso_local i32 @dwarf2_finish(...) #1

declare dso_local i32 @cfi_finish(...) #1

declare dso_local i64 @seen_at_least_1_file(...) #1

declare dso_local i64 @had_errors(...) #1

declare dso_local i32 @subsegs_finish(...) #1

declare dso_local i32 @write_object_file(...) #1

declare dso_local i32 @listing_print(i32) #1

declare dso_local i64 @had_warnings(...) #1

declare dso_local i32 @as_bad(i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @unlink_if_ordinary(i32) #1

declare dso_local i32 @input_scrub_end(...) #1

declare dso_local i32 @END_PROGRESS(i8*) #1

declare dso_local i32 @xexit(i32) #1

declare dso_local i32 @print_dependencies(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
