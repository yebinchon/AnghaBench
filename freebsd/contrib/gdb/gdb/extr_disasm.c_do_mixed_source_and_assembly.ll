; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_disasm.c_do_mixed_source_and_assembly.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_disasm.c_do_mixed_source_and_assembly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.disassemble_info = type { i32 }
%struct.linetable_entry = type { i64, i64 }
%struct.symtab = type { i32 }
%struct.ui_stream = type { i32 }
%struct.dis_line_entry = type { i64, i64, i64 }
%struct.symtab_and_line = type { i64 }
%struct.cleanup = type { i32 }

@null_cleanup = common dso_local global i32 0, align 4
@compare_lines = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"asm_insns\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"src_and_asm_line\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"line_asm_insn\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ui_out*, %struct.disassemble_info*, i32, %struct.linetable_entry*, i64, i64, %struct.symtab*, i32, %struct.ui_stream*)* @do_mixed_source_and_assembly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_mixed_source_and_assembly(%struct.ui_out* %0, %struct.disassemble_info* %1, i32 %2, %struct.linetable_entry* %3, i64 %4, i64 %5, %struct.symtab* %6, i32 %7, %struct.ui_stream* %8) #0 {
  %10 = alloca %struct.ui_out*, align 8
  %11 = alloca %struct.disassemble_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.linetable_entry*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.symtab*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ui_stream*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.dis_line_entry*, align 8
  %21 = alloca %struct.symtab_and_line, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.cleanup*, align 8
  %28 = alloca %struct.cleanup*, align 8
  %29 = alloca %struct.cleanup*, align 8
  %30 = alloca %struct.symtab_and_line, align 8
  %31 = alloca %struct.cleanup*, align 8
  %32 = alloca %struct.cleanup*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %10, align 8
  store %struct.disassemble_info* %1, %struct.disassemble_info** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.linetable_entry* %3, %struct.linetable_entry** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store %struct.symtab* %6, %struct.symtab** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.ui_stream* %8, %struct.ui_stream** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  %33 = load i32, i32* @null_cleanup, align 4
  %34 = call %struct.cleanup* @make_cleanup(i32 %33, i32 0)
  store %struct.cleanup* %34, %struct.cleanup** %28, align 8
  %35 = load i32, i32* @null_cleanup, align 4
  %36 = call %struct.cleanup* @make_cleanup(i32 %35, i32 0)
  store %struct.cleanup* %36, %struct.cleanup** %29, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 24
  %40 = trunc i64 %39 to i32
  %41 = call i64 @alloca(i32 %40)
  %42 = inttoptr i64 %41 to %struct.dis_line_entry*
  store %struct.dis_line_entry* %42, %struct.dis_line_entry** %20, align 8
  store i32 0, i32* %22, align 4
  br label %43

43:                                               ; preds = %60, %9
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %50 = load i32, i32* %22, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %49, i64 %51
  %53 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %14, align 8
  %56 = icmp slt i64 %54, %55
  br label %57

57:                                               ; preds = %48, %43
  %58 = phi i1 [ false, %43 ], [ %56, %48 ]
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %22, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %22, align 4
  br label %43

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %173, %63
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %71 = load i32, i32* %22, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %70, i64 %72
  %74 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp slt i64 %75, %76
  br label %78

78:                                               ; preds = %69, %64
  %79 = phi i1 [ false, %64 ], [ %77, %69 ]
  br i1 %79, label %80, label %176

80:                                               ; preds = %78
  %81 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %82 = load i32, i32* %22, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %81, i64 %83
  %85 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %88 = load i32, i32* %22, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %87, i64 %90
  %92 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %86, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %80
  %96 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %97 = load i32, i32* %22, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %96, i64 %98
  %100 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %103 = load i32, i32* %22, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %102, i64 %105
  %107 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %101, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %95
  br label %173

111:                                              ; preds = %95, %80
  %112 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %113 = load i32, i32* %22, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %112, i64 %114
  %116 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %173

120:                                              ; preds = %111
  %121 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %122 = load i32, i32* %22, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %121, i64 %123
  %125 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %127, i64 %129
  %131 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %130, i32 0, i32 0
  store i64 %126, i64* %131, align 8
  %132 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %133 = load i32, i32* %22, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %132, i64 %134
  %136 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %139 = load i32, i32* %22, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %138, i64 %141
  %143 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %137, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %120
  store i32 1, i32* %23, align 4
  br label %147

147:                                              ; preds = %146, %120
  %148 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %149 = load i32, i32* %22, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %148, i64 %150
  %152 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %154, i64 %156
  %158 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %157, i32 0, i32 1
  store i64 %153, i64* %158, align 8
  %159 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %160 = load i32, i32* %22, align 4
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %159, i64 %162
  %164 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %167 = load i32, i32* %19, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %166, i64 %168
  %170 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %169, i32 0, i32 2
  store i64 %165, i64* %170, align 8
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %19, align 4
  br label %173

173:                                              ; preds = %147, %119, %110
  %174 = load i32, i32* %22, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %22, align 4
  br label %64

176:                                              ; preds = %78
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* %12, align 4
  %179 = sub nsw i32 %178, 1
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %232

181:                                              ; preds = %176
  %182 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %183 = load i32, i32* %22, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %182, i64 %184
  %186 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %15, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %232

190:                                              ; preds = %181
  %191 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %192 = load i32, i32* %22, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %191, i64 %193
  %195 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %198 = load i32, i32* %19, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %197, i64 %199
  %201 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %200, i32 0, i32 0
  store i64 %196, i64* %201, align 8
  %202 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %203 = load i32, i32* %22, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %202, i64 %204
  %206 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %209 = load i32, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %208, i64 %210
  %212 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %211, i32 0, i32 1
  store i64 %207, i64* %212, align 8
  %213 = load %struct.linetable_entry*, %struct.linetable_entry** %13, align 8
  %214 = load i32, i32* %22, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %213, i64 %215
  %217 = getelementptr inbounds %struct.linetable_entry, %struct.linetable_entry* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call i64 @find_pc_line(i64 %218, i32 0)
  %220 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %30, i32 0, i32 0
  store i64 %219, i64* %220, align 8
  %221 = bitcast %struct.symtab_and_line* %21 to i8*
  %222 = bitcast %struct.symtab_and_line* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %221, i8* align 8 %222, i64 8, i1 false)
  %223 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %21, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %226 = load i32, i32* %19, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %225, i64 %227
  %229 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %228, i32 0, i32 2
  store i64 %224, i64* %229, align 8
  %230 = load i32, i32* %19, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %19, align 4
  br label %232

232:                                              ; preds = %190, %181, %176
  %233 = load i32, i32* %23, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* @compare_lines, align 4
  %239 = call i32 @qsort(%struct.dis_line_entry* %236, i32 %237, i32 24, i32 %238)
  br label %240

240:                                              ; preds = %235, %232
  %241 = load %struct.ui_out*, %struct.ui_out** %10, align 8
  %242 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(%struct.ui_out* %241, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.cleanup* %242, %struct.cleanup** %27, align 8
  store i32 0, i32* %22, align 4
  br label %243

243:                                              ; preds = %419, %240
  %244 = load i32, i32* %22, align 4
  %245 = load i32, i32* %19, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %422

247:                                              ; preds = %243
  %248 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %249 = load i32, i32* %22, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %248, i64 %250
  %252 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i32, i32* %24, align 4
  %255 = sext i32 %254 to i64
  %256 = icmp sge i64 %253, %255
  br i1 %256, label %257, label %358

257:                                              ; preds = %247
  %258 = load i32, i32* %24, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %327

260:                                              ; preds = %257
  %261 = load i32, i32* %24, align 4
  %262 = sext i32 %261 to i64
  %263 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %264 = load i32, i32* %22, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %263, i64 %265
  %267 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp eq i64 %262, %268
  br i1 %269, label %270, label %284

270:                                              ; preds = %260
  %271 = load %struct.ui_out*, %struct.ui_out** %10, align 8
  %272 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(%struct.ui_out* %271, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cleanup* %272, %struct.cleanup** %28, align 8
  %273 = load %struct.symtab*, %struct.symtab** %16, align 8
  %274 = load i32, i32* %24, align 4
  %275 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %276 = load i32, i32* %22, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %275, i64 %277
  %279 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %280, 1
  %282 = trunc i64 %281 to i32
  %283 = call i32 @print_source_lines(%struct.symtab* %273, i32 %274, i32 %282, i32 0)
  br label %326

284:                                              ; preds = %260
  br label %285

285:                                              ; preds = %309, %284
  %286 = load i32, i32* %24, align 4
  %287 = sext i32 %286 to i64
  %288 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %289 = load i32, i32* %22, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %288, i64 %290
  %292 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp slt i64 %287, %293
  br i1 %294, label %295, label %312

295:                                              ; preds = %285
  %296 = load %struct.ui_out*, %struct.ui_out** %10, align 8
  %297 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(%struct.ui_out* %296, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cleanup* %297, %struct.cleanup** %32, align 8
  %298 = load %struct.symtab*, %struct.symtab** %16, align 8
  %299 = load i32, i32* %24, align 4
  %300 = load i32, i32* %24, align 4
  %301 = add nsw i32 %300, 1
  %302 = call i32 @print_source_lines(%struct.symtab* %298, i32 %299, i32 %301, i32 0)
  %303 = load %struct.ui_out*, %struct.ui_out** %10, align 8
  %304 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(%struct.ui_out* %303, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cleanup* %304, %struct.cleanup** %31, align 8
  %305 = load %struct.cleanup*, %struct.cleanup** %31, align 8
  %306 = call i32 @do_cleanups(%struct.cleanup* %305)
  %307 = load %struct.cleanup*, %struct.cleanup** %32, align 8
  %308 = call i32 @do_cleanups(%struct.cleanup* %307)
  br label %309

309:                                              ; preds = %295
  %310 = load i32, i32* %24, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %24, align 4
  br label %285

312:                                              ; preds = %285
  %313 = load %struct.ui_out*, %struct.ui_out** %10, align 8
  %314 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(%struct.ui_out* %313, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cleanup* %314, %struct.cleanup** %28, align 8
  %315 = load %struct.symtab*, %struct.symtab** %16, align 8
  %316 = load i32, i32* %24, align 4
  %317 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %318 = load i32, i32* %22, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %317, i64 %319
  %321 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = add nsw i64 %322, 1
  %324 = trunc i64 %323 to i32
  %325 = call i32 @print_source_lines(%struct.symtab* %315, i32 %316, i32 %324, i32 0)
  br label %326

326:                                              ; preds = %312, %270
  br label %347

327:                                              ; preds = %257
  %328 = load %struct.ui_out*, %struct.ui_out** %10, align 8
  %329 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(%struct.ui_out* %328, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cleanup* %329, %struct.cleanup** %28, align 8
  %330 = load %struct.symtab*, %struct.symtab** %16, align 8
  %331 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %332 = load i32, i32* %22, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %331, i64 %333
  %335 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = trunc i64 %336 to i32
  %338 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %339 = load i32, i32* %22, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %338, i64 %340
  %342 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = add nsw i64 %343, 1
  %345 = trunc i64 %344 to i32
  %346 = call i32 @print_source_lines(%struct.symtab* %330, i32 %337, i32 %345, i32 0)
  br label %347

347:                                              ; preds = %327, %326
  %348 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %349 = load i32, i32* %22, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %348, i64 %350
  %352 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = add nsw i64 %353, 1
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %24, align 4
  %356 = load %struct.ui_out*, %struct.ui_out** %10, align 8
  %357 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(%struct.ui_out* %356, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cleanup* %357, %struct.cleanup** %29, align 8
  br label %358

358:                                              ; preds = %347, %247
  %359 = load %struct.ui_out*, %struct.ui_out** %10, align 8
  %360 = load %struct.disassemble_info*, %struct.disassemble_info** %11, align 8
  %361 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %362 = load i32, i32* %22, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %361, i64 %363
  %365 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %368 = load i32, i32* %22, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %367, i64 %369
  %371 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %370, i32 0, i32 2
  %372 = load i64, i64* %371, align 8
  %373 = load i32, i32* %17, align 4
  %374 = load %struct.ui_stream*, %struct.ui_stream** %18, align 8
  %375 = call i64 @dump_insns(%struct.ui_out* %359, %struct.disassemble_info* %360, i64 %366, i64 %372, i32 %373, %struct.ui_stream* %374)
  %376 = load i32, i32* %26, align 4
  %377 = sext i32 %376 to i64
  %378 = add nsw i64 %377, %375
  %379 = trunc i64 %378 to i32
  store i32 %379, i32* %26, align 4
  %380 = load i32, i32* %22, align 4
  %381 = load i32, i32* %19, align 4
  %382 = sub nsw i32 %381, 1
  %383 = icmp eq i32 %380, %382
  br i1 %383, label %399, label %384

384:                                              ; preds = %358
  %385 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %386 = load i32, i32* %22, align 4
  %387 = add nsw i32 %386, 1
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %385, i64 %388
  %390 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.dis_line_entry*, %struct.dis_line_entry** %20, align 8
  %393 = load i32, i32* %22, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %392, i64 %394
  %396 = getelementptr inbounds %struct.dis_line_entry, %struct.dis_line_entry* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = icmp sgt i64 %391, %397
  br i1 %398, label %399, label %410

399:                                              ; preds = %384, %358
  %400 = load %struct.cleanup*, %struct.cleanup** %29, align 8
  %401 = call i32 @do_cleanups(%struct.cleanup* %400)
  %402 = load %struct.cleanup*, %struct.cleanup** %28, align 8
  %403 = call i32 @do_cleanups(%struct.cleanup* %402)
  %404 = load i32, i32* @null_cleanup, align 4
  %405 = call %struct.cleanup* @make_cleanup(i32 %404, i32 0)
  store %struct.cleanup* %405, %struct.cleanup** %28, align 8
  %406 = load i32, i32* @null_cleanup, align 4
  %407 = call %struct.cleanup* @make_cleanup(i32 %406, i32 0)
  store %struct.cleanup* %407, %struct.cleanup** %29, align 8
  %408 = load %struct.ui_out*, %struct.ui_out** %10, align 8
  %409 = call i32 @ui_out_text(%struct.ui_out* %408, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %410

410:                                              ; preds = %399, %384
  %411 = load i32, i32* %17, align 4
  %412 = icmp sge i32 %411, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %410
  %414 = load i32, i32* %26, align 4
  %415 = load i32, i32* %17, align 4
  %416 = icmp sge i32 %414, %415
  br i1 %416, label %417, label %418

417:                                              ; preds = %413
  br label %422

418:                                              ; preds = %413, %410
  br label %419

419:                                              ; preds = %418
  %420 = load i32, i32* %22, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %22, align 4
  br label %243

422:                                              ; preds = %417, %243
  %423 = load %struct.cleanup*, %struct.cleanup** %27, align 8
  %424 = call i32 @do_cleanups(%struct.cleanup* %423)
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i64 @find_pc_line(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qsort(%struct.dis_line_entry*, i32, i32, i32) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_list_begin_end(%struct.ui_out*, i8*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(%struct.ui_out*, i8*) #1

declare dso_local i32 @print_source_lines(%struct.symtab*, i32, i32, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i64 @dump_insns(%struct.ui_out*, %struct.disassemble_info*, i64, i64, i32, %struct.ui_stream*) #1

declare dso_local i32 @ui_out_text(%struct.ui_out*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
