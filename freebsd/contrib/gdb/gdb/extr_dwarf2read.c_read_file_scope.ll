; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_file_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_file_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.die_info = type { i64, %struct.die_info* }
%struct.dwarf2_cu = type { i32, %struct.comp_unit_head, %struct.objfile* }
%struct.comp_unit_head = type { i32 }
%struct.objfile = type { %struct.TYPE_3__, i32, i32* }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.cleanup = type { i32 }
%struct.attribute = type { i32 }
%struct.line_header = type { i32 }

@null_cleanup = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@DW_AT_name = common dso_local global i32 0, align 4
@DW_AT_comp_dir = common dso_local global i32 0, align 4
@DW_AT_language = common dso_local global i32 0, align 4
@processing_gcc_compilation = common dso_local global i32 0, align 4
@FT_NUM_MEMBERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"DWARF 2\00", align 1
@DW_AT_stmt_list = common dso_local global i32 0, align 4
@free_line_header = common dso_local global i64 0, align 8
@DW_AT_macro_info = common dso_local global i32 0, align 4
@dip = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*, %struct.dwarf2_cu*)* @read_file_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_file_scope(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  %5 = alloca %struct.objfile*, align 8
  %6 = alloca %struct.comp_unit_head*, align 8
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.die_info*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.line_header*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.die_info* %0, %struct.die_info** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  %20 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %21 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %20, i32 0, i32 2
  %22 = load %struct.objfile*, %struct.objfile** %21, align 8
  store %struct.objfile* %22, %struct.objfile** %5, align 8
  %23 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %24 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %23, i32 0, i32 1
  store %struct.comp_unit_head* %24, %struct.comp_unit_head** %6, align 8
  %25 = load i32*, i32** @null_cleanup, align 8
  %26 = call %struct.cleanup* @make_cleanup(i32* %25, i8* null)
  store %struct.cleanup* %26, %struct.cleanup** %7, align 8
  store i64 -1, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* null, i8** %12, align 8
  %27 = load %struct.objfile*, %struct.objfile** %5, align 8
  %28 = getelementptr inbounds %struct.objfile, %struct.objfile* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %14, align 8
  store %struct.line_header* null, %struct.line_header** %15, align 8
  %30 = load %struct.objfile*, %struct.objfile** %5, align 8
  %31 = getelementptr inbounds %struct.objfile, %struct.objfile* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.objfile*, %struct.objfile** %5, align 8
  %34 = call i32 @SECT_OFF_TEXT(%struct.objfile* %33)
  %35 = call i64 @ANOFFSET(i32 %32, i32 %34)
  store i64 %35, i64* %16, align 8
  %36 = load %struct.die_info*, %struct.die_info** %3, align 8
  %37 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %38 = call i32 @get_scope_pc_bounds(%struct.die_info* %36, i64* %8, i64* %9, %struct.dwarf2_cu* %37)
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %41, %2
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %16, align 8
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %9, align 8
  %50 = load %struct.die_info*, %struct.die_info** %3, align 8
  %51 = load i32, i32* @DW_AT_name, align 4
  %52 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %53 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %50, i32 %51, %struct.dwarf2_cu* %52)
  store %struct.attribute* %53, %struct.attribute** %10, align 8
  %54 = load %struct.attribute*, %struct.attribute** %10, align 8
  %55 = icmp ne %struct.attribute* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load %struct.attribute*, %struct.attribute** %10, align 8
  %58 = call i8* @DW_STRING(%struct.attribute* %57)
  store i8* %58, i8** %11, align 8
  br label %59

59:                                               ; preds = %56, %43
  %60 = load %struct.die_info*, %struct.die_info** %3, align 8
  %61 = load i32, i32* @DW_AT_comp_dir, align 4
  %62 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %63 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %60, i32 %61, %struct.dwarf2_cu* %62)
  store %struct.attribute* %63, %struct.attribute** %10, align 8
  %64 = load %struct.attribute*, %struct.attribute** %10, align 8
  %65 = icmp ne %struct.attribute* %64, null
  br i1 %65, label %66, label %97

66:                                               ; preds = %59
  %67 = load %struct.attribute*, %struct.attribute** %10, align 8
  %68 = call i8* @DW_STRING(%struct.attribute* %67)
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %96

71:                                               ; preds = %66
  %72 = load i8*, i8** %12, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 58)
  store i8* %73, i8** %17, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load i8*, i8** %17, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = icmp ne i8* %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load i8*, i8** %17, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 -1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 46
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load i8*, i8** %17, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 47
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i8*, i8** %17, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8* %94, i8** %12, align 8
  br label %95

95:                                               ; preds = %92, %86, %80, %76, %71
  br label %96

96:                                               ; preds = %95, %66
  br label %97

97:                                               ; preds = %96, %59
  %98 = load %struct.objfile*, %struct.objfile** %5, align 8
  %99 = getelementptr inbounds %struct.objfile, %struct.objfile* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %97
  %105 = load %struct.objfile*, %struct.objfile** %5, align 8
  %106 = getelementptr inbounds %struct.objfile, %struct.objfile* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.objfile*, %struct.objfile** %5, align 8
  %114 = getelementptr inbounds %struct.objfile, %struct.objfile* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  store i64 %112, i64* %115, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.objfile*, %struct.objfile** %5, align 8
  %118 = getelementptr inbounds %struct.objfile, %struct.objfile* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i64 %116, i64* %119, align 8
  br label %120

120:                                              ; preds = %111, %104, %97
  %121 = load %struct.die_info*, %struct.die_info** %3, align 8
  %122 = load i32, i32* @DW_AT_language, align 4
  %123 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %124 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %121, i32 %122, %struct.dwarf2_cu* %123)
  store %struct.attribute* %124, %struct.attribute** %10, align 8
  %125 = load %struct.attribute*, %struct.attribute** %10, align 8
  %126 = icmp ne %struct.attribute* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.attribute*, %struct.attribute** %10, align 8
  %129 = call i32 @DW_UNSND(%struct.attribute* %128)
  %130 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %131 = call i32 @set_cu_language(i32 %129, %struct.dwarf2_cu* %130)
  br label %132

132:                                              ; preds = %127, %120
  store i32 2, i32* @processing_gcc_compilation, align 4
  %133 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %134 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @FT_NUM_MEMBERS, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 @memset(i32 %135, i32 0, i32 %139)
  %141 = load i8*, i8** %11, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = load i64, i64* %8, align 8
  %144 = call i32 @start_symtab(i8* %141, i8* %142, i64 %143)
  %145 = call i32 @record_debugformat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %146 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %147 = call i32 @initialize_cu_func_list(%struct.dwarf2_cu* %146)
  %148 = load %struct.die_info*, %struct.die_info** %3, align 8
  %149 = getelementptr inbounds %struct.die_info, %struct.die_info* %148, i32 0, i32 1
  %150 = load %struct.die_info*, %struct.die_info** %149, align 8
  %151 = icmp ne %struct.die_info* %150, null
  br i1 %151, label %152, label %173

152:                                              ; preds = %132
  %153 = load %struct.die_info*, %struct.die_info** %3, align 8
  %154 = getelementptr inbounds %struct.die_info, %struct.die_info* %153, i32 0, i32 1
  %155 = load %struct.die_info*, %struct.die_info** %154, align 8
  store %struct.die_info* %155, %struct.die_info** %13, align 8
  br label %156

156:                                              ; preds = %166, %152
  %157 = load %struct.die_info*, %struct.die_info** %13, align 8
  %158 = icmp ne %struct.die_info* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load %struct.die_info*, %struct.die_info** %13, align 8
  %161 = getelementptr inbounds %struct.die_info, %struct.die_info* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br label %164

164:                                              ; preds = %159, %156
  %165 = phi i1 [ false, %156 ], [ %163, %159 ]
  br i1 %165, label %166, label %172

166:                                              ; preds = %164
  %167 = load %struct.die_info*, %struct.die_info** %13, align 8
  %168 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %169 = call i32 @process_die(%struct.die_info* %167, %struct.dwarf2_cu* %168)
  %170 = load %struct.die_info*, %struct.die_info** %13, align 8
  %171 = call %struct.die_info* @sibling_die(%struct.die_info* %170)
  store %struct.die_info* %171, %struct.die_info** %13, align 8
  br label %156

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %132
  %174 = load %struct.die_info*, %struct.die_info** %3, align 8
  %175 = load i32, i32* @DW_AT_stmt_list, align 4
  %176 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %177 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %174, i32 %175, %struct.dwarf2_cu* %176)
  store %struct.attribute* %177, %struct.attribute** %10, align 8
  %178 = load %struct.attribute*, %struct.attribute** %10, align 8
  %179 = icmp ne %struct.attribute* %178, null
  br i1 %179, label %180, label %201

180:                                              ; preds = %173
  %181 = load %struct.attribute*, %struct.attribute** %10, align 8
  %182 = call i32 @DW_UNSND(%struct.attribute* %181)
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %18, align 4
  %184 = load i32*, i32** %14, align 8
  %185 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %186 = call %struct.line_header* @dwarf_decode_line_header(i32 %183, i32* %184, %struct.dwarf2_cu* %185)
  store %struct.line_header* %186, %struct.line_header** %15, align 8
  %187 = load %struct.line_header*, %struct.line_header** %15, align 8
  %188 = icmp ne %struct.line_header* %187, null
  br i1 %188, label %189, label %200

189:                                              ; preds = %180
  %190 = load i64, i64* @free_line_header, align 8
  %191 = inttoptr i64 %190 to i32*
  %192 = load %struct.line_header*, %struct.line_header** %15, align 8
  %193 = bitcast %struct.line_header* %192 to i8*
  %194 = call %struct.cleanup* @make_cleanup(i32* %191, i8* %193)
  %195 = load %struct.line_header*, %struct.line_header** %15, align 8
  %196 = load i8*, i8** %12, align 8
  %197 = load i32*, i32** %14, align 8
  %198 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %199 = call i32 @dwarf_decode_lines(%struct.line_header* %195, i8* %196, i32* %197, %struct.dwarf2_cu* %198)
  br label %200

200:                                              ; preds = %189, %180
  br label %201

201:                                              ; preds = %200, %173
  %202 = load %struct.die_info*, %struct.die_info** %3, align 8
  %203 = load i32, i32* @DW_AT_macro_info, align 4
  %204 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %205 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %202, i32 %203, %struct.dwarf2_cu* %204)
  store %struct.attribute* %205, %struct.attribute** %10, align 8
  %206 = load %struct.attribute*, %struct.attribute** %10, align 8
  %207 = icmp ne %struct.attribute* %206, null
  br i1 %207, label %208, label %220

208:                                              ; preds = %201
  %209 = load %struct.line_header*, %struct.line_header** %15, align 8
  %210 = icmp ne %struct.line_header* %209, null
  br i1 %210, label %211, label %220

211:                                              ; preds = %208
  %212 = load %struct.attribute*, %struct.attribute** %10, align 8
  %213 = call i32 @DW_UNSND(%struct.attribute* %212)
  store i32 %213, i32* %19, align 4
  %214 = load %struct.line_header*, %struct.line_header** %15, align 8
  %215 = load i32, i32* %19, align 4
  %216 = load i8*, i8** %12, align 8
  %217 = load i32*, i32** %14, align 8
  %218 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %219 = call i32 @dwarf_decode_macros(%struct.line_header* %214, i32 %215, i8* %216, i32* %217, %struct.dwarf2_cu* %218)
  br label %220

220:                                              ; preds = %211, %208, %201
  %221 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %222 = call i32 @do_cleanups(%struct.cleanup* %221)
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32*, i8*) #1

declare dso_local i64 @ANOFFSET(i32, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i32 @get_scope_pc_bounds(%struct.die_info*, i64*, i64*, %struct.dwarf2_cu*) #1

declare dso_local %struct.attribute* @dwarf2_attr(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

declare dso_local i8* @DW_STRING(%struct.attribute*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @set_cu_language(i32, %struct.dwarf2_cu*) #1

declare dso_local i32 @DW_UNSND(%struct.attribute*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @start_symtab(i8*, i8*, i64) #1

declare dso_local i32 @record_debugformat(i8*) #1

declare dso_local i32 @initialize_cu_func_list(%struct.dwarf2_cu*) #1

declare dso_local i32 @process_die(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local %struct.die_info* @sibling_die(%struct.die_info*) #1

declare dso_local %struct.line_header* @dwarf_decode_line_header(i32, i32*, %struct.dwarf2_cu*) #1

declare dso_local i32 @dwarf_decode_lines(%struct.line_header*, i8*, i32*, %struct.dwarf2_cu*) #1

declare dso_local i32 @dwarf_decode_macros(%struct.line_header*, i32, i8*, i32*, %struct.dwarf2_cu*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
