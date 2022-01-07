; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_coff_symfile_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_coff_symfile_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.objfile = type { %struct.TYPE_18__*, %struct.dbx_symfile_info*, i64 }
%struct.dbx_symfile_info = type { i32 }
%struct.coff_symfile_info = type { %struct.TYPE_16__*, i64, i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.cleanup = type { i32 }

@symfile_bfd = common dso_local global %struct.TYPE_18__* null, align 8
@local_n_btmask = common dso_local global i32 0, align 4
@local_n_btshft = common dso_local global i32 0, align 4
@local_n_tmask = common dso_local global i32 0, align 4
@local_n_tshift = common dso_local global i32 0, align 4
@local_linesz = common dso_local global i32 0, align 4
@local_symesz = common dso_local global i32 0, align 4
@local_auxesz = common dso_local global i64 0, align 8
@temp_sym = common dso_local global i8* null, align 8
@temp_aux = common dso_local global i8* null, align 8
@free_current_contents = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"pe\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"epoc-pe\00", align 1
@pe_file = common dso_local global i32 0, align 4
@find_linenos = common dso_local global i32 0, align 4
@free_linetab_cleanup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"\22%s\22: error reading line numbers\0A\00", align 1
@free_stringtab_cleanup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"\22%s\22: can't get string table\00", align 1
@coff_locate_sections = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [108 x i8] c"The debugging information in `%s' is corrupted.\0AThe file has a `.stabs' section, but no `.stabstr' section.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*, i32)* @coff_symfile_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coff_symfile_read(%struct.objfile* %0, i32 %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.coff_symfile_info*, align 8
  %6 = alloca %struct.dbx_symfile_info*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cleanup*, align 8
  %15 = alloca %struct.cleanup*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load %struct.objfile*, %struct.objfile** %3, align 8
  %20 = getelementptr inbounds %struct.objfile, %struct.objfile* %19, i32 0, i32 0
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %7, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %23 = call %struct.TYPE_17__* @coff_data(%struct.TYPE_18__* %22)
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %8, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %25 = call i8* @bfd_get_filename(%struct.TYPE_18__* %24)
  store i8* %25, i8** %9, align 8
  %26 = load %struct.objfile*, %struct.objfile** %3, align 8
  %27 = getelementptr inbounds %struct.objfile, %struct.objfile* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.coff_symfile_info*
  store %struct.coff_symfile_info* %29, %struct.coff_symfile_info** %5, align 8
  %30 = load %struct.objfile*, %struct.objfile** %3, align 8
  %31 = getelementptr inbounds %struct.objfile, %struct.objfile* %30, i32 0, i32 1
  %32 = load %struct.dbx_symfile_info*, %struct.dbx_symfile_info** %31, align 8
  store %struct.dbx_symfile_info* %32, %struct.dbx_symfile_info** %6, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** @symfile_bfd, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = call i32 @bfd_get_symcount(%struct.TYPE_18__* %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul i32 %40, %43
  %45 = add i32 %39, %44
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* @local_n_btmask, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* @local_n_btshft, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* @local_n_tmask, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* @local_n_tshift, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* @local_linesz, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* @local_symesz, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* @local_auxesz, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = call i64 @xmalloc(i64 %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** @temp_sym, align 8
  %77 = load i8*, i8** @temp_sym, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  store i8* %82, i8** @temp_aux, align 8
  %83 = load i32, i32* @free_current_contents, align 4
  %84 = call %struct.cleanup* @make_cleanup(i32 %83, i8** @temp_sym)
  store %struct.cleanup* %84, %struct.cleanup** %14, align 8
  %85 = load %struct.objfile*, %struct.objfile** %3, align 8
  %86 = getelementptr inbounds %struct.objfile, %struct.objfile* %85, i32 0, i32 0
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = call i32 @bfd_get_target(%struct.TYPE_18__* %87)
  %89 = call i64 @strncmp(i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %2
  %92 = load %struct.objfile*, %struct.objfile** %3, align 8
  %93 = getelementptr inbounds %struct.objfile, %struct.objfile* %92, i32 0, i32 0
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = call i32 @bfd_get_target(%struct.TYPE_18__* %94)
  %96 = call i64 @strncmp(i32 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %97 = icmp eq i64 %96, 0
  br label %98

98:                                               ; preds = %91, %2
  %99 = phi i1 [ true, %2 ], [ %97, %91 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* @pe_file, align 4
  %101 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %102 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %104 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %103, i32 0, i32 5
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* %11, align 4
  %106 = icmp ugt i32 %105, 0
  br i1 %106, label %107, label %133

107:                                              ; preds = %98
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %109 = load i32, i32* @find_linenos, align 4
  %110 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %111 = bitcast %struct.coff_symfile_info* %110 to i8*
  %112 = call i32 @bfd_map_over_sections(%struct.TYPE_18__* %108, i32 %109, i8* %111)
  %113 = load i32, i32* @free_linetab_cleanup, align 4
  %114 = call %struct.cleanup* @make_cleanup(i32 %113, i8** null)
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %116 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %117 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %120 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %123 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %121, %124
  %126 = call i32 @init_lineno(%struct.TYPE_18__* %115, i64 %118, i64 %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %107
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %130)
  br label %132

132:                                              ; preds = %129, %107
  br label %133

133:                                              ; preds = %132, %98
  %134 = load i32, i32* @free_stringtab_cleanup, align 4
  %135 = call %struct.cleanup* @make_cleanup(i32 %134, i8** null)
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @init_stringtab(%struct.TYPE_18__* %136, i32 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load i8*, i8** %9, align 8
  %143 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %141, %133
  %145 = call i32 (...) @init_minimal_symbol_collection()
  %146 = call %struct.cleanup* (...) @make_cleanup_discard_minimal_symbols()
  store %struct.cleanup* %146, %struct.cleanup** %15, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.objfile*, %struct.objfile** %3, align 8
  %151 = call i32 @coff_symtab_read(i64 %148, i32 %149, %struct.objfile* %150)
  %152 = load %struct.objfile*, %struct.objfile** %3, align 8
  %153 = call i32 @install_minimal_symbols(%struct.objfile* %152)
  %154 = load %struct.cleanup*, %struct.cleanup** %15, align 8
  %155 = call i32 @do_cleanups(%struct.cleanup* %154)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %157 = load i32, i32* @coff_locate_sections, align 4
  %158 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %159 = bitcast %struct.coff_symfile_info* %158 to i8*
  %160 = call i32 @bfd_map_over_sections(%struct.TYPE_18__* %156, i32 %157, i8* %159)
  %161 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %162 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %202

165:                                              ; preds = %144
  %166 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %167 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %166, i32 0, i32 0
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = icmp ne %struct.TYPE_16__* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = load i8*, i8** %9, align 8
  %172 = call i32 @error(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i8* %171)
  br label %173

173:                                              ; preds = %170, %165
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @bfd_seek(%struct.TYPE_18__* %174, i32 %177, i32 0)
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %180 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %181 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %180, i32 0, i32 0
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = call i32 @bfd_section_size(%struct.TYPE_18__* %179, %struct.TYPE_16__* %182)
  store i32 %183, i32* %16, align 4
  %184 = load %struct.objfile*, %struct.objfile** %3, align 8
  %185 = load i32, i32* %4, align 4
  %186 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %187 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %190 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %193 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.coff_symfile_info*, %struct.coff_symfile_info** %5, align 8
  %196 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %195, i32 0, i32 0
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %16, align 4
  %201 = call i32 @coffstab_build_psymtabs(%struct.objfile* %184, i32 %185, i32 %188, i32 %191, i64 %194, i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %173, %144
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %204 = call i64 @dwarf2_has_info(%struct.TYPE_18__* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = load %struct.objfile*, %struct.objfile** %3, align 8
  %208 = load i32, i32* %4, align 4
  %209 = call i32 @dwarf2_build_psymtabs(%struct.objfile* %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %202
  %211 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %212 = call i32 @do_cleanups(%struct.cleanup* %211)
  ret void
}

declare dso_local %struct.TYPE_17__* @coff_data(%struct.TYPE_18__*) #1

declare dso_local i8* @bfd_get_filename(%struct.TYPE_18__*) #1

declare dso_local i32 @bfd_get_symcount(%struct.TYPE_18__*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8**) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @bfd_get_target(%struct.TYPE_18__*) #1

declare dso_local i32 @bfd_map_over_sections(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @init_lineno(%struct.TYPE_18__*, i64, i64) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @init_stringtab(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @init_minimal_symbol_collection(...) #1

declare dso_local %struct.cleanup* @make_cleanup_discard_minimal_symbols(...) #1

declare dso_local i32 @coff_symtab_read(i64, i32, %struct.objfile*) #1

declare dso_local i32 @install_minimal_symbols(%struct.objfile*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @bfd_seek(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @bfd_section_size(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local i32 @coffstab_build_psymtabs(%struct.objfile*, i32, i32, i32, i64, i32, i32) #1

declare dso_local i64 @dwarf2_has_info(%struct.TYPE_18__*) #1

declare dso_local i32 @dwarf2_build_psymtabs(%struct.objfile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
