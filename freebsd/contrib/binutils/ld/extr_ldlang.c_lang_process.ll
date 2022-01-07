; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@link_info = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@default_target = common dso_local global i32 0, align 4
@current_target = common dso_local global i32 0, align 4
@ldlang_open_output = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%P%F: Failed to create hash table\0A\00", align 1
@statement_list = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@FALSE = common dso_local global i32 0, align 4
@entry_symbol = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@ldlang_undef_chain_list_head = common dso_local global %struct.TYPE_15__* null, align 8
@command_line = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@output_bfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@config = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@SEC_READONLY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_process() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @link_info, i32 0, i32 3), align 8
  %4 = icmp ne %struct.TYPE_11__* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @link_info, i32 0, i32 3), align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = call i32 @lang_finalize_version_expr_head(i32* %7)
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i32, i32* @default_target, align 4
  store i32 %10, i32* @current_target, align 4
  %11 = load i32, i32* @ldlang_open_output, align 4
  %12 = call i32 @lang_for_each_statement(i32 %11)
  %13 = call i32 (...) @init_opb()
  %14 = call i32 (...) @ldemul_create_output_section_statements()
  %15 = call i32 (...) @lang_place_undefineds()
  %16 = call i32 (...) @bfd_section_already_linked_table_init()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @einfo(i32 %19)
  br label %21

21:                                               ; preds = %18, %9
  %22 = load i32, i32* @default_target, align 4
  store i32 %22, i32* @current_target, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @statement_list, i32 0, i32 0), align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @open_input_bfds(i32 %23, i32 %24)
  store %struct.TYPE_15__* @entry_symbol, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @link_info, i32 0, i32 2), align 8
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @entry_symbol, i32 0, i32 0), align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ldlang_undef_chain_list_head, align 8
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @link_info, i32 0, i32 2), align 8
  br label %30

30:                                               ; preds = %28, %21
  %31 = call i32 (...) @ldemul_after_open()
  %32 = call i32 (...) @bfd_section_already_linked_table_free()
  %33 = call i32 (...) @lang_check()
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @command_line, i32 0, i32 2), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 (...) @lang_do_version_exports_section()
  br label %38

38:                                               ; preds = %36, %30
  %39 = call i32 (...) @ldctor_build_sets()
  %40 = call i32 (...) @lang_gc_sections()
  %41 = call i32 (...) @lang_common()
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @statement_list, i32 0, i32 0), align 4
  %43 = call i32 @update_wild_statements(i32 %42)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @statement_list, i32 0, i32 0), align 4
  %45 = call i32 @map_input_to_output_sections(i32 %44, i32* null, i32* null)
  %46 = call i32 (...) @lang_place_orphans()
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @link_info, i32 0, i32 1), align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @output_bfd, align 4
  %51 = call i32 @bfd_merge_sections(i32 %50, %struct.TYPE_14__* @link_info)
  %52 = load i32, i32* @output_bfd, align 4
  %53 = call %struct.TYPE_12__* @bfd_get_section_by_name(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %1, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %49
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @config, i32 0, i32 0), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* @SEC_READONLY, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %72

65:                                               ; preds = %56
  %66 = load i32, i32* @SEC_READONLY, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %59
  br label %73

73:                                               ; preds = %72, %49
  br label %74

74:                                               ; preds = %73, %38
  %75 = call i32 (...) @ldemul_before_allocation()
  %76 = call i32 (...) @lang_record_phdrs()
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @command_line, i32 0, i32 1), align 8
  %78 = icmp ne i64 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @lang_size_sections(i32* null, i32 %80)
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @command_line, i32 0, i32 1), align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %74
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @link_info, i32 0, i32 0), align 8
  store i32 %85, i32* %2, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @link_info, i32 0, i32 0), align 8
  br label %86

86:                                               ; preds = %90, %84
  %87 = load i32, i32* %2, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %2, align 4
  %89 = icmp ne i32 %87, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = call i32 (...) @relax_sections()
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @link_info, i32 0, i32 0), align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @link_info, i32 0, i32 0), align 8
  br label %86

94:                                               ; preds = %86
  %95 = call i32 (...) @lang_do_assignments()
  %96 = call i32 (...) @lang_reset_memory_regions()
  %97 = load i32, i32* @TRUE, align 4
  %98 = call i32 @lang_size_sections(i32* null, i32 %97)
  br label %99

99:                                               ; preds = %94, %74
  %100 = call i32 (...) @ldemul_after_allocation()
  %101 = call i32 (...) @lang_set_startof()
  %102 = call i32 (...) @lang_do_assignments()
  %103 = call i32 (...) @ldemul_finish()
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @link_info, i32 0, i32 1), align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @command_line, i32 0, i32 0), align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (...) @lang_check_section_addresses()
  br label %111

111:                                              ; preds = %109, %106, %99
  %112 = call i32 (...) @lang_end()
  ret void
}

declare dso_local i32 @lang_finalize_version_expr_head(i32*) #1

declare dso_local i32 @lang_for_each_statement(i32) #1

declare dso_local i32 @init_opb(...) #1

declare dso_local i32 @ldemul_create_output_section_statements(...) #1

declare dso_local i32 @lang_place_undefineds(...) #1

declare dso_local i32 @bfd_section_already_linked_table_init(...) #1

declare dso_local i32 @einfo(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @open_input_bfds(i32, i32) #1

declare dso_local i32 @ldemul_after_open(...) #1

declare dso_local i32 @bfd_section_already_linked_table_free(...) #1

declare dso_local i32 @lang_check(...) #1

declare dso_local i32 @lang_do_version_exports_section(...) #1

declare dso_local i32 @ldctor_build_sets(...) #1

declare dso_local i32 @lang_gc_sections(...) #1

declare dso_local i32 @lang_common(...) #1

declare dso_local i32 @update_wild_statements(i32) #1

declare dso_local i32 @map_input_to_output_sections(i32, i32*, i32*) #1

declare dso_local i32 @lang_place_orphans(...) #1

declare dso_local i32 @bfd_merge_sections(i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_12__* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @ldemul_before_allocation(...) #1

declare dso_local i32 @lang_record_phdrs(...) #1

declare dso_local i32 @lang_size_sections(i32*, i32) #1

declare dso_local i32 @relax_sections(...) #1

declare dso_local i32 @lang_do_assignments(...) #1

declare dso_local i32 @lang_reset_memory_regions(...) #1

declare dso_local i32 @ldemul_after_allocation(...) #1

declare dso_local i32 @lang_set_startof(...) #1

declare dso_local i32 @ldemul_finish(...) #1

declare dso_local i32 @lang_check_section_addresses(...) #1

declare dso_local i32 @lang_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
