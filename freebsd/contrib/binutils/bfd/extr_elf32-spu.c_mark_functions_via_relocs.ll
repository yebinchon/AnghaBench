; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_mark_functions_via_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_mark_functions_via_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }
%struct.bfd_link_info = type { %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32 (i32, i64, %struct.TYPE_31__*, i32, i64, %struct.TYPE_31__*)* }
%struct.TYPE_22__ = type { i64, i32, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.elf_link_hash_entry = type { i32, %struct.TYPE_30__*, i32, i32, %struct.TYPE_28__ }
%struct.TYPE_30__ = type { i32, i64, %struct.function_info* }
%struct.function_info = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.elf_link_hash_entry* }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.call_info = type { i32, %struct.TYPE_30__*, i32, i32, %struct.TYPE_28__ }
%struct.TYPE_23__ = type { %struct.TYPE_32__ }

@mark_functions_via_relocs.warned = internal global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@R_SPU_REL16 = common dso_local global i32 0, align 4
@R_SPU_ADDR16 = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"%B(%A+0x%v): call to non-code section %B(%A), stack analysis incomplete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.bfd_link_info*, i32)* @mark_functions_via_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_functions_via_relocs(%struct.TYPE_31__* %0, %struct.bfd_link_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.elf_link_hash_entry*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_31__*, align 8
  %17 = alloca %struct.elf_link_hash_entry*, align 8
  %18 = alloca %struct.elf_link_hash_entry*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [4 x i8], align 1
  %21 = alloca i32, align 4
  %22 = alloca %struct.function_info*, align 8
  %23 = alloca %struct.call_info*, align 8
  %24 = alloca %struct.function_info*, align 8
  %25 = alloca %struct.elf_link_hash_entry*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.TYPE_23__* @elf_tdata(i64 %28)
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  store %struct.TYPE_32__* %30, %struct.TYPE_32__** %11, align 8
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %35 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %36 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.TYPE_22__* @_bfd_elf_link_read_relocs(i64 %33, %struct.TYPE_31__* %34, i32* null, i32* null, i32 %37)
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %8, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %40 = icmp eq %struct.TYPE_22__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %4, align 4
  br label %373

43:                                               ; preds = %3
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.TYPE_23__* @elf_tdata(i64 %46)
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  store %struct.TYPE_32__* %48, %struct.TYPE_32__** %11, align 8
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 0
  %51 = bitcast i32* %50 to i8*
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = bitcast i8* %52 to %struct.elf_link_hash_entry**
  %54 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %53, align 8
  store %struct.elf_link_hash_entry* %54, %struct.elf_link_hash_entry** %12, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %55, %struct.TYPE_22__** %10, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i64 %60
  store %struct.TYPE_22__* %61, %struct.TYPE_22__** %9, align 8
  br label %62

62:                                               ; preds = %368, %43
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %65 = icmp ult %struct.TYPE_22__* %63, %64
  br i1 %65, label %66, label %371

66:                                               ; preds = %62
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ELF32_R_TYPE(i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @R_SPU_REL16, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @R_SPU_ADDR16, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %368

79:                                               ; preds = %74, %66
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ELF32_R_SYM(i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @get_sym_h(%struct.elf_link_hash_entry** %18, %struct.elf_link_hash_entry** %17, %struct.TYPE_31__** %16, i8* %84, i32 %85, i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %79
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %4, align 4
  br label %373

93:                                               ; preds = %79
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %95 = icmp eq %struct.TYPE_31__* %94, null
  br i1 %95, label %113, label %96

96:                                               ; preds = %93
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %98, align 8
  %100 = icmp eq %struct.TYPE_24__* %99, null
  br i1 %100, label %113, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %106, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %101, %96, %93
  br label %368

114:                                              ; preds = %101
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %119 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @bfd_get_section_contents(i64 %117, %struct.TYPE_31__* %118, i8* %119, i32 %122, i32 4)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %114
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %4, align 4
  br label %373

127:                                              ; preds = %114
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  %129 = call i32 @is_branch(i8* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  br label %368

132:                                              ; preds = %127
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SEC_ALLOC, align 4
  %137 = load i32, i32* @SEC_LOAD, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @SEC_CODE, align 4
  %140 = or i32 %138, %139
  %141 = and i32 %135, %140
  %142 = load i32, i32* @SEC_ALLOC, align 4
  %143 = load i32, i32* @SEC_LOAD, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @SEC_CODE, align 4
  %146 = or i32 %144, %145
  %147 = icmp ne i32 %141, %146
  br i1 %147, label %148, label %179

148:                                              ; preds = %132
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @TRUE, align 4
  store i32 %152, i32* @mark_functions_via_relocs.warned, align 4
  br label %153

153:                                              ; preds = %151, %148
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* @mark_functions_via_relocs.warned, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %178, label %159

159:                                              ; preds = %156, %153
  %160 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %161 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %160, i32 0, i32 0
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  %164 = load i32 (i32, i64, %struct.TYPE_31__*, i32, i64, %struct.TYPE_31__*)*, i32 (i32, i64, %struct.TYPE_31__*, i32, i64, %struct.TYPE_31__*)** %163, align 8
  %165 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %177 = call i32 %164(i32 %165, i64 %168, %struct.TYPE_31__* %169, i32 %172, i64 %175, %struct.TYPE_31__* %176)
  br label %178

178:                                              ; preds = %159, %156
  br label %368

179:                                              ; preds = %132
  %180 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = and i32 %182, 253
  %184 = icmp eq i32 %183, 49
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %21, align 4
  %186 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %187 = icmp ne %struct.elf_link_hash_entry* %186, null
  br i1 %187, label %188, label %195

188:                                              ; preds = %179
  %189 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %190 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  store i32 %194, i32* %19, align 4
  br label %199

195:                                              ; preds = %179
  %196 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %197 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %19, align 4
  br label %199

199:                                              ; preds = %195, %188
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %19, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %204, %202
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %19, align 4
  %207 = load i32, i32* %7, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %268, label %209

209:                                              ; preds = %199
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %232

214:                                              ; preds = %209
  %215 = call %struct.elf_link_hash_entry* @bfd_zmalloc(i32 32)
  store %struct.elf_link_hash_entry* %215, %struct.elf_link_hash_entry** %25, align 8
  %216 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %25, align 8
  %217 = icmp eq %struct.elf_link_hash_entry* %216, null
  br i1 %217, label %218, label %220

218:                                              ; preds = %214
  %219 = load i32, i32* @FALSE, align 4
  store i32 %219, i32* %4, align 4
  br label %373

220:                                              ; preds = %214
  %221 = load i32, i32* %19, align 4
  %222 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %25, align 8
  %223 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %228 = call i32 @_bfd_elf_section_from_bfd_section(i64 %226, %struct.TYPE_31__* %227)
  %229 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %25, align 8
  %230 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  %231 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %25, align 8
  store %struct.elf_link_hash_entry* %231, %struct.elf_link_hash_entry** %17, align 8
  br label %232

232:                                              ; preds = %220, %209
  %233 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %234 = icmp ne %struct.elf_link_hash_entry* %233, null
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %237 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %238 = load i32, i32* @FALSE, align 4
  %239 = load i32, i32* %21, align 4
  %240 = call %struct.function_info* @maybe_insert_function(%struct.TYPE_31__* %236, %struct.elf_link_hash_entry* %237, i32 %238, i32 %239)
  store %struct.function_info* %240, %struct.function_info** %24, align 8
  br label %247

241:                                              ; preds = %232
  %242 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %243 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %18, align 8
  %244 = load i32, i32* @TRUE, align 4
  %245 = load i32, i32* %21, align 4
  %246 = call %struct.function_info* @maybe_insert_function(%struct.TYPE_31__* %242, %struct.elf_link_hash_entry* %243, i32 %244, i32 %245)
  store %struct.function_info* %246, %struct.function_info** %24, align 8
  br label %247

247:                                              ; preds = %241, %235
  %248 = load %struct.function_info*, %struct.function_info** %24, align 8
  %249 = icmp eq %struct.function_info* %248, null
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = load i32, i32* @FALSE, align 4
  store i32 %251, i32* %4, align 4
  br label %373

252:                                              ; preds = %247
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %252
  %258 = load %struct.function_info*, %struct.function_info** %24, align 8
  %259 = getelementptr inbounds %struct.function_info, %struct.function_info* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i32 0, i32 0
  %261 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %260, align 8
  %262 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %263 = icmp ne %struct.elf_link_hash_entry* %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %257
  %265 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %17, align 8
  %266 = call i32 @free(%struct.elf_link_hash_entry* %265)
  br label %267

267:                                              ; preds = %264, %257, %252
  br label %368

268:                                              ; preds = %199
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %274 = call i8* @find_function(%struct.TYPE_31__* %269, i32 %272, %struct.bfd_link_info* %273)
  %275 = bitcast i8* %274 to %struct.function_info*
  store %struct.function_info* %275, %struct.function_info** %22, align 8
  %276 = load %struct.function_info*, %struct.function_info** %22, align 8
  %277 = icmp eq %struct.function_info* %276, null
  br i1 %277, label %278, label %280

278:                                              ; preds = %268
  %279 = load i32, i32* @FALSE, align 4
  store i32 %279, i32* %4, align 4
  br label %373

280:                                              ; preds = %268
  %281 = call %struct.elf_link_hash_entry* @bfd_malloc(i32 32)
  %282 = bitcast %struct.elf_link_hash_entry* %281 to %struct.call_info*
  store %struct.call_info* %282, %struct.call_info** %23, align 8
  %283 = load %struct.call_info*, %struct.call_info** %23, align 8
  %284 = icmp eq %struct.call_info* %283, null
  br i1 %284, label %285, label %287

285:                                              ; preds = %280
  %286 = load i32, i32* @FALSE, align 4
  store i32 %286, i32* %4, align 4
  br label %373

287:                                              ; preds = %280
  %288 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %289 = load i32, i32* %19, align 4
  %290 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %291 = call i8* @find_function(%struct.TYPE_31__* %288, i32 %289, %struct.bfd_link_info* %290)
  %292 = bitcast i8* %291 to %struct.TYPE_30__*
  %293 = load %struct.call_info*, %struct.call_info** %23, align 8
  %294 = getelementptr inbounds %struct.call_info, %struct.call_info* %293, i32 0, i32 1
  store %struct.TYPE_30__* %292, %struct.TYPE_30__** %294, align 8
  %295 = load %struct.call_info*, %struct.call_info** %23, align 8
  %296 = getelementptr inbounds %struct.call_info, %struct.call_info* %295, i32 0, i32 1
  %297 = load %struct.TYPE_30__*, %struct.TYPE_30__** %296, align 8
  %298 = icmp eq %struct.TYPE_30__* %297, null
  br i1 %298, label %299, label %301

299:                                              ; preds = %287
  %300 = load i32, i32* @FALSE, align 4
  store i32 %300, i32* %4, align 4
  br label %373

301:                                              ; preds = %287
  %302 = load i32, i32* %21, align 4
  %303 = icmp ne i32 %302, 0
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = load %struct.call_info*, %struct.call_info** %23, align 8
  %307 = getelementptr inbounds %struct.call_info, %struct.call_info* %306, i32 0, i32 0
  store i32 %305, i32* %307, align 8
  %308 = load %struct.function_info*, %struct.function_info** %22, align 8
  %309 = load %struct.call_info*, %struct.call_info** %23, align 8
  %310 = bitcast %struct.call_info* %309 to %struct.elf_link_hash_entry*
  %311 = call i32 @insert_callee(%struct.function_info* %308, %struct.elf_link_hash_entry* %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %317, label %313

313:                                              ; preds = %301
  %314 = load %struct.call_info*, %struct.call_info** %23, align 8
  %315 = bitcast %struct.call_info* %314 to %struct.elf_link_hash_entry*
  %316 = call i32 @free(%struct.elf_link_hash_entry* %315)
  br label %367

317:                                              ; preds = %301
  %318 = load i32, i32* %21, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %366, label %320

320:                                              ; preds = %317
  %321 = load %struct.call_info*, %struct.call_info** %23, align 8
  %322 = getelementptr inbounds %struct.call_info, %struct.call_info* %321, i32 0, i32 1
  %323 = load %struct.TYPE_30__*, %struct.TYPE_30__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %366, label %327

327:                                              ; preds = %320
  %328 = load %struct.call_info*, %struct.call_info** %23, align 8
  %329 = getelementptr inbounds %struct.call_info, %struct.call_info* %328, i32 0, i32 1
  %330 = load %struct.TYPE_30__*, %struct.TYPE_30__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %334, label %366

334:                                              ; preds = %327
  %335 = load %struct.call_info*, %struct.call_info** %23, align 8
  %336 = getelementptr inbounds %struct.call_info, %struct.call_info* %335, i32 0, i32 1
  %337 = load %struct.TYPE_30__*, %struct.TYPE_30__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %337, i32 0, i32 2
  %339 = load %struct.function_info*, %struct.function_info** %338, align 8
  %340 = icmp ne %struct.function_info* %339, null
  br i1 %340, label %349, label %341

341:                                              ; preds = %334
  %342 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %346 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %344, %347
  br i1 %348, label %349, label %359

349:                                              ; preds = %341, %334
  %350 = load %struct.call_info*, %struct.call_info** %23, align 8
  %351 = getelementptr inbounds %struct.call_info, %struct.call_info* %350, i32 0, i32 1
  %352 = load %struct.TYPE_30__*, %struct.TYPE_30__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %352, i32 0, i32 2
  store %struct.function_info* null, %struct.function_info** %353, align 8
  %354 = load i32, i32* @TRUE, align 4
  %355 = load %struct.call_info*, %struct.call_info** %23, align 8
  %356 = getelementptr inbounds %struct.call_info, %struct.call_info* %355, i32 0, i32 1
  %357 = load %struct.TYPE_30__*, %struct.TYPE_30__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %357, i32 0, i32 0
  store i32 %354, i32* %358, align 8
  br label %365

359:                                              ; preds = %341
  %360 = load %struct.function_info*, %struct.function_info** %22, align 8
  %361 = load %struct.call_info*, %struct.call_info** %23, align 8
  %362 = getelementptr inbounds %struct.call_info, %struct.call_info* %361, i32 0, i32 1
  %363 = load %struct.TYPE_30__*, %struct.TYPE_30__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %363, i32 0, i32 2
  store %struct.function_info* %360, %struct.function_info** %364, align 8
  br label %365

365:                                              ; preds = %359, %349
  br label %366

366:                                              ; preds = %365, %327, %320, %317
  br label %367

367:                                              ; preds = %366, %313
  br label %368

368:                                              ; preds = %367, %267, %178, %131, %113, %78
  %369 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %369, i32 1
  store %struct.TYPE_22__* %370, %struct.TYPE_22__** %10, align 8
  br label %62

371:                                              ; preds = %62
  %372 = load i32, i32* @TRUE, align 4
  store i32 %372, i32* %4, align 4
  br label %373

373:                                              ; preds = %371, %299, %285, %278, %250, %218, %125, %91, %41
  %374 = load i32, i32* %4, align 4
  ret i32 %374
}

declare dso_local %struct.TYPE_23__* @elf_tdata(i64) #1

declare dso_local %struct.TYPE_22__* @_bfd_elf_link_read_relocs(i64, %struct.TYPE_31__*, i32*, i32*, i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @ELF32_R_SYM(i32) #1

declare dso_local i32 @get_sym_h(%struct.elf_link_hash_entry**, %struct.elf_link_hash_entry**, %struct.TYPE_31__**, i8*, i32, i64) #1

declare dso_local i32 @bfd_get_section_contents(i64, %struct.TYPE_31__*, i8*, i32, i32) #1

declare dso_local i32 @is_branch(i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.elf_link_hash_entry* @bfd_zmalloc(i32) #1

declare dso_local i32 @_bfd_elf_section_from_bfd_section(i64, %struct.TYPE_31__*) #1

declare dso_local %struct.function_info* @maybe_insert_function(%struct.TYPE_31__*, %struct.elf_link_hash_entry*, i32, i32) #1

declare dso_local i32 @free(%struct.elf_link_hash_entry*) #1

declare dso_local i8* @find_function(%struct.TYPE_31__*, i32, %struct.bfd_link_info*) #1

declare dso_local %struct.elf_link_hash_entry* @bfd_malloc(i32) #1

declare dso_local i32 @insert_callee(%struct.function_info*, %struct.elf_link_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
