; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_maybe_insert_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_maybe_insert_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function_info = type { i64, i64, i32, %struct.TYPE_9__, i32*, i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct._spu_elf_section_data = type { %struct.spu_elf_stack_info* }
%struct.spu_elf_stack_info = type { i32, i32, %struct.function_info* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.elf_link_hash_entry = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.function_info* (i32*, i8*, i8*, i8*)* @maybe_insert_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.function_info* @maybe_insert_function(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.function_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._spu_elf_section_data*, align 8
  %11 = alloca %struct.spu_elf_stack_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.elf_link_hash_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call %struct._spu_elf_section_data* @spu_elf_section_data(i32* %19)
  store %struct._spu_elf_section_data* %20, %struct._spu_elf_section_data** %10, align 8
  %21 = load %struct._spu_elf_section_data*, %struct._spu_elf_section_data** %10, align 8
  %22 = getelementptr inbounds %struct._spu_elf_section_data, %struct._spu_elf_section_data* %21, i32 0, i32 0
  %23 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %22, align 8
  store %struct.spu_elf_stack_info* %23, %struct.spu_elf_stack_info** %11, align 8
  %24 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %25 = icmp eq %struct.spu_elf_stack_info* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load i32*, i32** %6, align 8
  %28 = call %struct.spu_elf_stack_info* @alloc_stack_info(i32* %27, i32 20)
  store %struct.spu_elf_stack_info* %28, %struct.spu_elf_stack_info** %11, align 8
  %29 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %30 = icmp eq %struct.spu_elf_stack_info* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store %struct.function_info* null, %struct.function_info** %5, align 8
  br label %339

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %4
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %15, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %13, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %14, align 8
  br label %57

45:                                               ; preds = %33
  %46 = load i8*, i8** %7, align 8
  %47 = bitcast i8* %46 to %struct.elf_link_hash_entry*
  store %struct.elf_link_hash_entry* %47, %struct.elf_link_hash_entry** %16, align 8
  %48 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %49 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %13, align 8
  %54 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %16, align 8
  %55 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %14, align 8
  br label %57

57:                                               ; preds = %45, %36
  %58 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %59 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %77, %57
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %12, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %67 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %66, i32 0, i32 2
  %68 = load %struct.function_info*, %struct.function_info** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.function_info, %struct.function_info* %68, i64 %70
  %72 = getelementptr inbounds %struct.function_info, %struct.function_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %13, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %78

77:                                               ; preds = %65
  br label %61

78:                                               ; preds = %76, %61
  %79 = load i32, i32* %12, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %165

81:                                               ; preds = %78
  %82 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %83 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %82, i32 0, i32 2
  %84 = load %struct.function_info*, %struct.function_info** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.function_info, %struct.function_info* %84, i64 %86
  %88 = getelementptr inbounds %struct.function_info, %struct.function_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %13, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %142

92:                                               ; preds = %81
  %93 = load i8*, i8** %8, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %123

95:                                               ; preds = %92
  %96 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %97 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %96, i32 0, i32 2
  %98 = load %struct.function_info*, %struct.function_info** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.function_info, %struct.function_info* %98, i64 %100
  %102 = getelementptr inbounds %struct.function_info, %struct.function_info* %101, i32 0, i32 5
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %123, label %105

105:                                              ; preds = %95
  %106 = load i8*, i8** @TRUE, align 8
  %107 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %108 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %107, i32 0, i32 2
  %109 = load %struct.function_info*, %struct.function_info** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.function_info, %struct.function_info* %109, i64 %111
  %113 = getelementptr inbounds %struct.function_info, %struct.function_info* %112, i32 0, i32 5
  store i8* %106, i8** %113, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %116 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %115, i32 0, i32 2
  %117 = load %struct.function_info*, %struct.function_info** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.function_info, %struct.function_info* %117, i64 %119
  %121 = getelementptr inbounds %struct.function_info, %struct.function_info* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  store i8* %114, i8** %122, align 8
  br label %123

123:                                              ; preds = %105, %95, %92
  %124 = load i8*, i8** %9, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load i8*, i8** @TRUE, align 8
  %128 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %129 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %128, i32 0, i32 2
  %130 = load %struct.function_info*, %struct.function_info** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.function_info, %struct.function_info* %130, i64 %132
  %134 = getelementptr inbounds %struct.function_info, %struct.function_info* %133, i32 0, i32 6
  store i8* %127, i8** %134, align 8
  br label %135

135:                                              ; preds = %126, %123
  %136 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %137 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %136, i32 0, i32 2
  %138 = load %struct.function_info*, %struct.function_info** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.function_info, %struct.function_info* %138, i64 %140
  store %struct.function_info* %141, %struct.function_info** %5, align 8
  br label %339

142:                                              ; preds = %81
  %143 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %144 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %143, i32 0, i32 2
  %145 = load %struct.function_info*, %struct.function_info** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.function_info, %struct.function_info* %145, i64 %147
  %149 = getelementptr inbounds %struct.function_info, %struct.function_info* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %13, align 8
  %152 = icmp sgt i64 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %142
  %154 = load i64, i64* %14, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %158 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %157, i32 0, i32 2
  %159 = load %struct.function_info*, %struct.function_info** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.function_info, %struct.function_info* %159, i64 %161
  store %struct.function_info* %162, %struct.function_info** %5, align 8
  br label %339

163:                                              ; preds = %153, %142
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164, %78
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  %168 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %169 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %195

172:                                              ; preds = %165
  %173 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %174 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %173, i32 0, i32 2
  %175 = load %struct.function_info*, %struct.function_info** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.function_info, %struct.function_info* %175, i64 %178
  %180 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %181 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %180, i32 0, i32 2
  %182 = load %struct.function_info*, %struct.function_info** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.function_info, %struct.function_info* %182, i64 %184
  %186 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %187 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sub nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 64
  %193 = trunc i64 %192 to i32
  %194 = call i32 @memmove(%struct.function_info* %179, %struct.function_info* %185, i32 %193)
  br label %252

195:                                              ; preds = %165
  %196 = load i32, i32* %12, align 4
  %197 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %198 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp sge i32 %196, %199
  br i1 %200, label %201, label %251

201:                                              ; preds = %195
  store i32 16, i32* %17, align 4
  %202 = load i32, i32* %17, align 4
  store i32 %202, i32* %18, align 4
  %203 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %204 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = mul i64 %207, 64
  %209 = load i32, i32* %18, align 4
  %210 = sext i32 %209 to i64
  %211 = add i64 %210, %208
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %18, align 4
  %213 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %214 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = ashr i32 %215, 1
  %217 = add nsw i32 20, %216
  %218 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %219 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, %217
  store i32 %221, i32* %219, align 4
  %222 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %223 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = mul i64 %226, 64
  %228 = load i32, i32* %17, align 4
  %229 = sext i32 %228 to i64
  %230 = add i64 %229, %227
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %17, align 4
  %232 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %233 = load i32, i32* %17, align 4
  %234 = call %struct.spu_elf_stack_info* @bfd_realloc(%struct.spu_elf_stack_info* %232, i32 %233)
  store %struct.spu_elf_stack_info* %234, %struct.spu_elf_stack_info** %11, align 8
  %235 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %236 = icmp eq %struct.spu_elf_stack_info* %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %201
  store %struct.function_info* null, %struct.function_info** %5, align 8
  br label %339

238:                                              ; preds = %201
  %239 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %240 = bitcast %struct.spu_elf_stack_info* %239 to i8*
  %241 = load i32, i32* %18, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* %18, align 4
  %246 = sub nsw i32 %244, %245
  %247 = call i32 @memset(i8* %243, i32 0, i32 %246)
  %248 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %249 = load %struct._spu_elf_section_data*, %struct._spu_elf_section_data** %10, align 8
  %250 = getelementptr inbounds %struct._spu_elf_section_data, %struct._spu_elf_section_data* %249, i32 0, i32 0
  store %struct.spu_elf_stack_info* %248, %struct.spu_elf_stack_info** %250, align 8
  br label %251

251:                                              ; preds = %238, %195
  br label %252

252:                                              ; preds = %251, %172
  %253 = load i8*, i8** %9, align 8
  %254 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %255 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %254, i32 0, i32 2
  %256 = load %struct.function_info*, %struct.function_info** %255, align 8
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.function_info, %struct.function_info* %256, i64 %258
  %260 = getelementptr inbounds %struct.function_info, %struct.function_info* %259, i32 0, i32 6
  store i8* %253, i8** %260, align 8
  %261 = load i8*, i8** %8, align 8
  %262 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %263 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %262, i32 0, i32 2
  %264 = load %struct.function_info*, %struct.function_info** %263, align 8
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.function_info, %struct.function_info* %264, i64 %266
  %268 = getelementptr inbounds %struct.function_info, %struct.function_info* %267, i32 0, i32 5
  store i8* %261, i8** %268, align 8
  %269 = load i32*, i32** %6, align 8
  %270 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %271 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %270, i32 0, i32 2
  %272 = load %struct.function_info*, %struct.function_info** %271, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.function_info, %struct.function_info* %272, i64 %274
  %276 = getelementptr inbounds %struct.function_info, %struct.function_info* %275, i32 0, i32 4
  store i32* %269, i32** %276, align 8
  %277 = load i8*, i8** %8, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %289

279:                                              ; preds = %252
  %280 = load i8*, i8** %7, align 8
  %281 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %282 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %281, i32 0, i32 2
  %283 = load %struct.function_info*, %struct.function_info** %282, align 8
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.function_info, %struct.function_info* %283, i64 %285
  %287 = getelementptr inbounds %struct.function_info, %struct.function_info* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 1
  store i8* %280, i8** %288, align 8
  br label %299

289:                                              ; preds = %252
  %290 = load i8*, i8** %7, align 8
  %291 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %292 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %291, i32 0, i32 2
  %293 = load %struct.function_info*, %struct.function_info** %292, align 8
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.function_info, %struct.function_info* %293, i64 %295
  %297 = getelementptr inbounds %struct.function_info, %struct.function_info* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  store i8* %290, i8** %298, align 8
  br label %299

299:                                              ; preds = %289, %279
  %300 = load i64, i64* %13, align 8
  %301 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %302 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %301, i32 0, i32 2
  %303 = load %struct.function_info*, %struct.function_info** %302, align 8
  %304 = load i32, i32* %12, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.function_info, %struct.function_info* %303, i64 %305
  %307 = getelementptr inbounds %struct.function_info, %struct.function_info* %306, i32 0, i32 0
  store i64 %300, i64* %307, align 8
  %308 = load i64, i64* %13, align 8
  %309 = load i64, i64* %14, align 8
  %310 = add nsw i64 %308, %309
  %311 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %312 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %311, i32 0, i32 2
  %313 = load %struct.function_info*, %struct.function_info** %312, align 8
  %314 = load i32, i32* %12, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.function_info, %struct.function_info* %313, i64 %315
  %317 = getelementptr inbounds %struct.function_info, %struct.function_info* %316, i32 0, i32 1
  store i64 %310, i64* %317, align 8
  %318 = load i32*, i32** %6, align 8
  %319 = load i64, i64* %13, align 8
  %320 = call i32 @find_function_stack_adjust(i32* %318, i64 %319)
  %321 = sub nsw i32 0, %320
  %322 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %323 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %322, i32 0, i32 2
  %324 = load %struct.function_info*, %struct.function_info** %323, align 8
  %325 = load i32, i32* %12, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.function_info, %struct.function_info* %324, i64 %326
  %328 = getelementptr inbounds %struct.function_info, %struct.function_info* %327, i32 0, i32 2
  store i32 %321, i32* %328, align 8
  %329 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %330 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %330, align 8
  %333 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %11, align 8
  %334 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %333, i32 0, i32 2
  %335 = load %struct.function_info*, %struct.function_info** %334, align 8
  %336 = load i32, i32* %12, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.function_info, %struct.function_info* %335, i64 %337
  store %struct.function_info* %338, %struct.function_info** %5, align 8
  br label %339

339:                                              ; preds = %299, %237, %156, %135, %31
  %340 = load %struct.function_info*, %struct.function_info** %5, align 8
  ret %struct.function_info* %340
}

declare dso_local %struct._spu_elf_section_data* @spu_elf_section_data(i32*) #1

declare dso_local %struct.spu_elf_stack_info* @alloc_stack_info(i32*, i32) #1

declare dso_local i32 @memmove(%struct.function_info*, %struct.function_info*, i32) #1

declare dso_local %struct.spu_elf_stack_info* @bfd_realloc(%struct.spu_elf_stack_info*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @find_function_stack_adjust(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
