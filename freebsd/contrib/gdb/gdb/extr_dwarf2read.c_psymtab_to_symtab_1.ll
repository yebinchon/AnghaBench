; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_psymtab_to_symtab_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_psymtab_to_symtab_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { i32, %struct.symtab*, %struct.objfile* }
%struct.symtab = type { i64 }
%struct.objfile = type { i32, i32* }
%struct.dwarf2_cu = type { i64, %struct.TYPE_2__, i32*, %struct.objfile* }
%struct.TYPE_2__ = type { i64, i32, i8*, i32* }
%struct.die_info = type { i32 }
%struct.cleanup = type { i32 }
%struct.attribute = type { i32 }

@dwarf_info_buffer = common dso_local global i8* null, align 8
@dwarf_abbrev_buffer = common dso_local global i32 0, align 4
@dwarf_abbrev_size = common dso_local global i32 0, align 4
@dwarf_line_buffer = common dso_local global i32 0, align 4
@dwarf_line_size = common dso_local global i32 0, align 4
@dwarf_str_buffer = common dso_local global i32 0, align 4
@dwarf_str_size = common dso_local global i32 0, align 4
@dwarf_macinfo_buffer = common dso_local global i32 0, align 4
@dwarf_macinfo_size = common dso_local global i32 0, align 4
@dwarf_ranges_buffer = common dso_local global i32 0, align 4
@dwarf_ranges_size = common dso_local global i32 0, align 4
@dwarf_loc_buffer = common dso_local global i32 0, align 4
@dwarf_loc_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@processing_current_prefix = common dso_local global i8* null, align 8
@dwarf2_tmp_obstack = common dso_local global i32 0, align 4
@dwarf2_free_tmp_obstack = common dso_local global i32 0, align 4
@really_free_pendings = common dso_local global i32 0, align 4
@dwarf2_empty_abbrev_table = common dso_local global i32 0, align 4
@file_symbols = common dso_local global i32 0, align 4
@DW_AT_entry_pc = common dso_local global i32 0, align 4
@DW_AT_low_pc = common dso_local global i32 0, align 4
@language_c = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.partial_symtab*)* @psymtab_to_symtab_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psymtab_to_symtab_1(%struct.partial_symtab* %0) #0 {
  %2 = alloca %struct.partial_symtab*, align 8
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dwarf2_cu, align 8
  %6 = alloca %struct.die_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.die_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.symtab*, align 8
  %13 = alloca %struct.cleanup*, align 8
  %14 = alloca %struct.attribute*, align 8
  %15 = alloca i64, align 8
  store %struct.partial_symtab* %0, %struct.partial_symtab** %2, align 8
  %16 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %17 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %16, i32 0, i32 2
  %18 = load %struct.objfile*, %struct.objfile** %17, align 8
  store %struct.objfile* %18, %struct.objfile** %3, align 8
  %19 = load %struct.objfile*, %struct.objfile** %3, align 8
  %20 = getelementptr inbounds %struct.objfile, %struct.objfile* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %4, align 8
  %22 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %23 = call i64 @DWARF_INFO_OFFSET(%struct.partial_symtab* %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %25 = call i8* @DWARF_INFO_BUFFER(%struct.partial_symtab* %24)
  store i8* %25, i8** @dwarf_info_buffer, align 8
  %26 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %27 = call i32 @DWARF_ABBREV_BUFFER(%struct.partial_symtab* %26)
  store i32 %27, i32* @dwarf_abbrev_buffer, align 4
  %28 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %29 = call i32 @DWARF_ABBREV_SIZE(%struct.partial_symtab* %28)
  store i32 %29, i32* @dwarf_abbrev_size, align 4
  %30 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %31 = call i32 @DWARF_LINE_BUFFER(%struct.partial_symtab* %30)
  store i32 %31, i32* @dwarf_line_buffer, align 4
  %32 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %33 = call i32 @DWARF_LINE_SIZE(%struct.partial_symtab* %32)
  store i32 %33, i32* @dwarf_line_size, align 4
  %34 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %35 = call i32 @DWARF_STR_BUFFER(%struct.partial_symtab* %34)
  store i32 %35, i32* @dwarf_str_buffer, align 4
  %36 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %37 = call i32 @DWARF_STR_SIZE(%struct.partial_symtab* %36)
  store i32 %37, i32* @dwarf_str_size, align 4
  %38 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %39 = call i32 @DWARF_MACINFO_BUFFER(%struct.partial_symtab* %38)
  store i32 %39, i32* @dwarf_macinfo_buffer, align 4
  %40 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %41 = call i32 @DWARF_MACINFO_SIZE(%struct.partial_symtab* %40)
  store i32 %41, i32* @dwarf_macinfo_size, align 4
  %42 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %43 = call i32 @DWARF_RANGES_BUFFER(%struct.partial_symtab* %42)
  store i32 %43, i32* @dwarf_ranges_buffer, align 4
  %44 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %45 = call i32 @DWARF_RANGES_SIZE(%struct.partial_symtab* %44)
  store i32 %45, i32* @dwarf_ranges_size, align 4
  %46 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %47 = call i32 @DWARF_LOC_BUFFER(%struct.partial_symtab* %46)
  store i32 %47, i32* @dwarf_loc_buffer, align 4
  %48 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %49 = call i32 @DWARF_LOC_SIZE(%struct.partial_symtab* %48)
  store i32 %49, i32* @dwarf_loc_size, align 4
  %50 = load i8*, i8** @dwarf_info_buffer, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %11, align 8
  %53 = load %struct.objfile*, %struct.objfile** %3, align 8
  %54 = getelementptr inbounds %struct.objfile, %struct.objfile* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.objfile*, %struct.objfile** %3, align 8
  %57 = call i32 @SECT_OFF_TEXT(%struct.objfile* %56)
  %58 = call i64 @ANOFFSET(i32 %55, i32 %57)
  store i64 %58, i64* %15, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** @processing_current_prefix, align 8
  %59 = call i32 @obstack_init(i32* @dwarf2_tmp_obstack)
  %60 = load i32, i32* @dwarf2_free_tmp_obstack, align 4
  %61 = call %struct.cleanup* @make_cleanup(i32 %60, i32* null)
  store %struct.cleanup* %61, %struct.cleanup** %13, align 8
  %62 = call i32 (...) @buildsym_init()
  %63 = load i32, i32* @really_free_pendings, align 4
  %64 = call %struct.cleanup* @make_cleanup(i32 %63, i32* null)
  %65 = load %struct.objfile*, %struct.objfile** %3, align 8
  %66 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %5, i32 0, i32 3
  store %struct.objfile* %65, %struct.objfile** %66, align 8
  %67 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %5, i32 0, i32 1
  %68 = load i8*, i8** %11, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i8* @read_comp_unit_head(%struct.TYPE_2__* %67, i8* %68, i32* %69)
  store i8* %70, i8** %11, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @dwarf2_read_abbrevs(i32* %71, %struct.dwarf2_cu* %5)
  %73 = load i32, i32* @dwarf2_empty_abbrev_table, align 4
  %74 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %5, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = call %struct.cleanup* @make_cleanup(i32 %73, i32* %76)
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %5, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %5, i32 0, i32 2
  store i32* @file_symbols, i32** %81, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = call %struct.die_info* @read_comp_unit(i8* %82, i32* %83, %struct.dwarf2_cu* %5)
  store %struct.die_info* %84, %struct.die_info** %6, align 8
  %85 = load %struct.die_info*, %struct.die_info** %6, align 8
  %86 = call i32 @make_cleanup_free_die_list(%struct.die_info* %85)
  %87 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %5, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 0, i32* %88, align 8
  %89 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %5, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i8* null, i8** %90, align 8
  %91 = load %struct.die_info*, %struct.die_info** %6, align 8
  %92 = load i32, i32* @DW_AT_entry_pc, align 4
  %93 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %91, i32 %92, %struct.dwarf2_cu* %5)
  store %struct.attribute* %93, %struct.attribute** %14, align 8
  %94 = load %struct.attribute*, %struct.attribute** %14, align 8
  %95 = icmp ne %struct.attribute* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %1
  %97 = load %struct.attribute*, %struct.attribute** %14, align 8
  %98 = call i8* @DW_ADDR(%struct.attribute* %97)
  %99 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %5, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %5, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 8
  br label %117

103:                                              ; preds = %1
  %104 = load %struct.die_info*, %struct.die_info** %6, align 8
  %105 = load i32, i32* @DW_AT_low_pc, align 4
  %106 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %104, i32 %105, %struct.dwarf2_cu* %5)
  store %struct.attribute* %106, %struct.attribute** %14, align 8
  %107 = load %struct.attribute*, %struct.attribute** %14, align 8
  %108 = icmp ne %struct.attribute* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.attribute*, %struct.attribute** %14, align 8
  %111 = call i8* @DW_ADDR(%struct.attribute* %110)
  %112 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %5, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %5, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %109, %103
  br label %117

117:                                              ; preds = %116, %96
  %118 = load %struct.die_info*, %struct.die_info** %6, align 8
  %119 = call i32 @process_die(%struct.die_info* %118, %struct.dwarf2_cu* %5)
  %120 = load %struct.die_info*, %struct.die_info** %6, align 8
  %121 = call i32 @get_scope_pc_bounds(%struct.die_info* %120, i64* %8, i64* %9, %struct.dwarf2_cu* %5)
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %15, align 8
  %124 = add nsw i64 %122, %123
  %125 = load %struct.objfile*, %struct.objfile** %3, align 8
  %126 = load %struct.objfile*, %struct.objfile** %3, align 8
  %127 = call i32 @SECT_OFF_TEXT(%struct.objfile* %126)
  %128 = call %struct.symtab* @end_symtab(i64 %124, %struct.objfile* %125, i32 %127)
  store %struct.symtab* %128, %struct.symtab** %12, align 8
  %129 = load %struct.symtab*, %struct.symtab** %12, align 8
  %130 = icmp ne %struct.symtab* %129, null
  br i1 %130, label %131, label %147

131:                                              ; preds = %117
  %132 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %5, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @language_c, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.symtab*, %struct.symtab** %12, align 8
  %138 = getelementptr inbounds %struct.symtab, %struct.symtab* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @language_c, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %147, label %142

142:                                              ; preds = %136, %131
  %143 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %5, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.symtab*, %struct.symtab** %12, align 8
  %146 = getelementptr inbounds %struct.symtab, %struct.symtab* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %142, %136, %117
  %148 = load %struct.symtab*, %struct.symtab** %12, align 8
  %149 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %150 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %149, i32 0, i32 1
  store %struct.symtab* %148, %struct.symtab** %150, align 8
  %151 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %152 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  %153 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %154 = call i32 @do_cleanups(%struct.cleanup* %153)
  ret void
}

declare dso_local i64 @DWARF_INFO_OFFSET(%struct.partial_symtab*) #1

declare dso_local i8* @DWARF_INFO_BUFFER(%struct.partial_symtab*) #1

declare dso_local i32 @DWARF_ABBREV_BUFFER(%struct.partial_symtab*) #1

declare dso_local i32 @DWARF_ABBREV_SIZE(%struct.partial_symtab*) #1

declare dso_local i32 @DWARF_LINE_BUFFER(%struct.partial_symtab*) #1

declare dso_local i32 @DWARF_LINE_SIZE(%struct.partial_symtab*) #1

declare dso_local i32 @DWARF_STR_BUFFER(%struct.partial_symtab*) #1

declare dso_local i32 @DWARF_STR_SIZE(%struct.partial_symtab*) #1

declare dso_local i32 @DWARF_MACINFO_BUFFER(%struct.partial_symtab*) #1

declare dso_local i32 @DWARF_MACINFO_SIZE(%struct.partial_symtab*) #1

declare dso_local i32 @DWARF_RANGES_BUFFER(%struct.partial_symtab*) #1

declare dso_local i32 @DWARF_RANGES_SIZE(%struct.partial_symtab*) #1

declare dso_local i32 @DWARF_LOC_BUFFER(%struct.partial_symtab*) #1

declare dso_local i32 @DWARF_LOC_SIZE(%struct.partial_symtab*) #1

declare dso_local i64 @ANOFFSET(i32, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i32 @obstack_init(i32*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i32*) #1

declare dso_local i32 @buildsym_init(...) #1

declare dso_local i8* @read_comp_unit_head(%struct.TYPE_2__*, i8*, i32*) #1

declare dso_local i32 @dwarf2_read_abbrevs(i32*, %struct.dwarf2_cu*) #1

declare dso_local %struct.die_info* @read_comp_unit(i8*, i32*, %struct.dwarf2_cu*) #1

declare dso_local i32 @make_cleanup_free_die_list(%struct.die_info*) #1

declare dso_local %struct.attribute* @dwarf2_attr(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

declare dso_local i8* @DW_ADDR(%struct.attribute*) #1

declare dso_local i32 @process_die(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @get_scope_pc_bounds(%struct.die_info*, i64*, i64*, %struct.dwarf2_cu*) #1

declare dso_local %struct.symtab* @end_symtab(i64, %struct.objfile*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
