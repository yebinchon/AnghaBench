; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf_decode_line_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf_decode_line_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_header = type { i32, i8*, i32, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }
%struct.dwarf2_cu = type { i32 }
%struct.cleanup = type { i32 }

@dwarf_line_buffer = common dso_local global i8* null, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"missing .debug_line section\00", align 1
@dwarf_line_size = common dso_local global i32 0, align 4
@free_line_header = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"line number info header doesn't fit in `.debug_line' section\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line_header* (i32, i32*, %struct.dwarf2_cu*)* @dwarf_decode_line_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line_header* @dwarf_decode_line_header(i32 %0, i32* %1, %struct.dwarf2_cu* %2) #0 {
  %4 = alloca %struct.line_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dwarf2_cu*, align 8
  %8 = alloca %struct.cleanup*, align 8
  %9 = alloca %struct.line_header*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.dwarf2_cu* %2, %struct.dwarf2_cu** %7, align 8
  %18 = load i8*, i8** @dwarf_line_buffer, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.line_header* null, %struct.line_header** %4, align 8
  br label %241

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 4
  %25 = load i32, i32* @dwarf_line_size, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 (...) @dwarf2_statement_list_fits_in_line_number_section_complaint()
  store %struct.line_header* null, %struct.line_header** %4, align 8
  br label %241

29:                                               ; preds = %22
  %30 = call %struct.line_header* @xmalloc(i32 80)
  store %struct.line_header* %30, %struct.line_header** %9, align 8
  %31 = load %struct.line_header*, %struct.line_header** %9, align 8
  %32 = call i32 @memset(%struct.line_header* %31, i32 0, i32 80)
  %33 = load i64, i64* @free_line_header, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load %struct.line_header*, %struct.line_header** %9, align 8
  %36 = bitcast %struct.line_header* %35 to i8*
  %37 = call %struct.cleanup* @make_cleanup(i32* %34, i8* %36)
  store %struct.cleanup* %37, %struct.cleanup** %8, align 8
  %38 = load i8*, i8** @dwarf_line_buffer, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %10, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %45 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %44, i32 0, i32 0
  %46 = call i32 @read_initial_length(i32* %42, i8* %43, i32* %45, i32* %11)
  %47 = load %struct.line_header*, %struct.line_header** %9, align 8
  %48 = getelementptr inbounds %struct.line_header, %struct.line_header* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.line_header*, %struct.line_header** %9, align 8
  %55 = getelementptr inbounds %struct.line_header, %struct.line_header* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = load i8*, i8** @dwarf_line_buffer, align 8
  %60 = load i32, i32* @dwarf_line_size, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = icmp ugt i8* %58, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %29
  %65 = call i32 (...) @dwarf2_statement_list_fits_in_line_number_section_complaint()
  store %struct.line_header* null, %struct.line_header** %4, align 8
  br label %241

66:                                               ; preds = %29
  %67 = load i8*, i8** %10, align 8
  %68 = load %struct.line_header*, %struct.line_header** %9, align 8
  %69 = getelementptr inbounds %struct.line_header, %struct.line_header* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = load %struct.line_header*, %struct.line_header** %9, align 8
  %74 = getelementptr inbounds %struct.line_header, %struct.line_header* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @read_2_bytes(i32* %75, i8* %76)
  %78 = load %struct.line_header*, %struct.line_header** %9, align 8
  %79 = getelementptr inbounds %struct.line_header, %struct.line_header* %78, i32 0, i32 10
  store i32 %77, i32* %79, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %81, i8** %10, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %85 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %84, i32 0, i32 0
  %86 = call i32 @read_offset(i32* %82, i8* %83, i32* %85, i32* %11)
  %87 = load %struct.line_header*, %struct.line_header** %9, align 8
  %88 = getelementptr inbounds %struct.line_header, %struct.line_header* %87, i32 0, i32 9
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %10, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i8* @read_1_byte(i32* %93, i8* %94)
  %96 = load %struct.line_header*, %struct.line_header** %9, align 8
  %97 = getelementptr inbounds %struct.line_header, %struct.line_header* %96, i32 0, i32 8
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  store i8* %99, i8** %10, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = call i8* @read_1_byte(i32* %100, i8* %101)
  %103 = load %struct.line_header*, %struct.line_header** %9, align 8
  %104 = getelementptr inbounds %struct.line_header, %struct.line_header* %103, i32 0, i32 7
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8* %106, i8** %10, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @read_1_signed_byte(i32* %107, i8* %108)
  %110 = load %struct.line_header*, %struct.line_header** %9, align 8
  %111 = getelementptr inbounds %struct.line_header, %struct.line_header* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  store i8* %113, i8** %10, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = call i8* @read_1_byte(i32* %114, i8* %115)
  %117 = load %struct.line_header*, %struct.line_header** %9, align 8
  %118 = getelementptr inbounds %struct.line_header, %struct.line_header* %117, i32 0, i32 5
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  store i8* %120, i8** %10, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i8* @read_1_byte(i32* %121, i8* %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.line_header*, %struct.line_header** %9, align 8
  %126 = getelementptr inbounds %struct.line_header, %struct.line_header* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  store i8* %128, i8** %10, align 8
  %129 = load %struct.line_header*, %struct.line_header** %9, align 8
  %130 = getelementptr inbounds %struct.line_header, %struct.line_header* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 1
  %134 = trunc i64 %133 to i32
  %135 = call %struct.line_header* @xmalloc(i32 %134)
  %136 = bitcast %struct.line_header* %135 to i8*
  %137 = load %struct.line_header*, %struct.line_header** %9, align 8
  %138 = getelementptr inbounds %struct.line_header, %struct.line_header* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  %139 = load %struct.line_header*, %struct.line_header** %9, align 8
  %140 = getelementptr inbounds %struct.line_header, %struct.line_header* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  store i8 1, i8* %142, align 1
  store i32 1, i32* %12, align 4
  br label %143

143:                                              ; preds = %162, %66
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.line_header*, %struct.line_header** %9, align 8
  %146 = getelementptr inbounds %struct.line_header, %struct.line_header* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %143
  %150 = load i32*, i32** %6, align 8
  %151 = load i8*, i8** %10, align 8
  %152 = call i8* @read_1_byte(i32* %150, i8* %151)
  %153 = ptrtoint i8* %152 to i8
  %154 = load %struct.line_header*, %struct.line_header** %9, align 8
  %155 = getelementptr inbounds %struct.line_header, %struct.line_header* %154, i32 0, i32 3
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  store i8 %153, i8* %159, align 1
  %160 = load i8*, i8** %10, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  store i8* %161, i8** %10, align 8
  br label %162

162:                                              ; preds = %149
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %143

165:                                              ; preds = %143
  br label %166

166:                                              ; preds = %171, %165
  %167 = load i32*, i32** %6, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = call i8* @read_string(i32* %167, i8* %168, i32* %11)
  store i8* %169, i8** %13, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = load i32, i32* %11, align 4
  %173 = load i8*, i8** %10, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8* %175, i8** %10, align 8
  %176 = load %struct.line_header*, %struct.line_header** %9, align 8
  %177 = load i8*, i8** %13, align 8
  %178 = call i32 @add_include_dir(%struct.line_header* %176, i8* %177)
  br label %166

179:                                              ; preds = %166
  %180 = load i32, i32* %11, align 4
  %181 = load i8*, i8** %10, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8* %183, i8** %10, align 8
  br label %184

184:                                              ; preds = %189, %179
  %185 = load i32*, i32** %6, align 8
  %186 = load i8*, i8** %10, align 8
  %187 = call i8* @read_string(i32* %185, i8* %186, i32* %11)
  store i8* %187, i8** %14, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %221

189:                                              ; preds = %184
  %190 = load i32, i32* %11, align 4
  %191 = load i8*, i8** %10, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %10, align 8
  %194 = load i32*, i32** %6, align 8
  %195 = load i8*, i8** %10, align 8
  %196 = call i32 @read_unsigned_leb128(i32* %194, i8* %195, i32* %11)
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load i8*, i8** %10, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %10, align 8
  %201 = load i32*, i32** %6, align 8
  %202 = load i8*, i8** %10, align 8
  %203 = call i32 @read_unsigned_leb128(i32* %201, i8* %202, i32* %11)
  store i32 %203, i32* %16, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load i8*, i8** %10, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  store i8* %207, i8** %10, align 8
  %208 = load i32*, i32** %6, align 8
  %209 = load i8*, i8** %10, align 8
  %210 = call i32 @read_unsigned_leb128(i32* %208, i8* %209, i32* %11)
  store i32 %210, i32* %17, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load i8*, i8** %10, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8* %214, i8** %10, align 8
  %215 = load %struct.line_header*, %struct.line_header** %9, align 8
  %216 = load i8*, i8** %14, align 8
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %17, align 4
  %220 = call i32 @add_file_name(%struct.line_header* %215, i8* %216, i32 %217, i32 %218, i32 %219)
  br label %184

221:                                              ; preds = %184
  %222 = load i32, i32* %11, align 4
  %223 = load i8*, i8** %10, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  store i8* %225, i8** %10, align 8
  %226 = load i8*, i8** %10, align 8
  %227 = load %struct.line_header*, %struct.line_header** %9, align 8
  %228 = getelementptr inbounds %struct.line_header, %struct.line_header* %227, i32 0, i32 4
  store i8* %226, i8** %228, align 8
  %229 = load i8*, i8** %10, align 8
  %230 = load i8*, i8** @dwarf_line_buffer, align 8
  %231 = load i32, i32* @dwarf_line_size, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = icmp ugt i8* %229, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %221
  %236 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %221
  %238 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %239 = call i32 @discard_cleanups(%struct.cleanup* %238)
  %240 = load %struct.line_header*, %struct.line_header** %9, align 8
  store %struct.line_header* %240, %struct.line_header** %4, align 8
  br label %241

241:                                              ; preds = %237, %64, %27, %20
  %242 = load %struct.line_header*, %struct.line_header** %4, align 8
  ret %struct.line_header* %242
}

declare dso_local i32 @complaint(i32*, i8*) #1

declare dso_local i32 @dwarf2_statement_list_fits_in_line_number_section_complaint(...) #1

declare dso_local %struct.line_header* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.line_header*, i32, i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32*, i8*) #1

declare dso_local i32 @read_initial_length(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @read_2_bytes(i32*, i8*) #1

declare dso_local i32 @read_offset(i32*, i8*, i32*, i32*) #1

declare dso_local i8* @read_1_byte(i32*, i8*) #1

declare dso_local i32 @read_1_signed_byte(i32*, i8*) #1

declare dso_local i8* @read_string(i32*, i8*, i32*) #1

declare dso_local i32 @add_include_dir(%struct.line_header*, i8*) #1

declare dso_local i32 @read_unsigned_leb128(i32*, i8*, i32*) #1

declare dso_local i32 @add_file_name(%struct.line_header*, i8*, i32, i32, i32) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
