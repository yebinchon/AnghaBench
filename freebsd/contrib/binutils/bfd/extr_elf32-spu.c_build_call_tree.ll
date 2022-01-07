; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_build_call_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_build_call_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__* }
%struct.bfd_link_info = type { %struct.TYPE_10__* }
%struct.spu_link_hash_table = type { i32 }
%struct._spu_elf_section_data = type { %struct.spu_elf_stack_info* }
%struct.spu_elf_stack_info = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.call_info*, i32* }
%struct.call_info = type { %struct.call_info* }

@bfd_elf32_spu_vec = external dso_local constant i32, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.bfd_link_info*)* @build_call_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_call_tree(%struct.TYPE_10__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.spu_link_hash_table*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct._spu_elf_section_data*, align 8
  %10 = alloca %struct.spu_elf_stack_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.call_info*, align 8
  %13 = alloca %struct.call_info*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct._spu_elf_section_data*, align 8
  %16 = alloca %struct.spu_elf_stack_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct._spu_elf_section_data*, align 8
  %20 = alloca %struct.spu_elf_stack_info*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %22 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %23 = call %struct.spu_link_hash_table* @spu_hash_table(%struct.bfd_link_info* %22)
  store %struct.spu_link_hash_table* %23, %struct.spu_link_hash_table** %6, align 8
  %24 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %25 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %7, align 8
  br label %27

27:                                               ; preds = %160, %2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %164

30:                                               ; preds = %27
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, @bfd_elf32_spu_vec
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %160

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %8, align 8
  br label %40

40:                                               ; preds = %64, %36
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = icmp ne %struct.TYPE_11__* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %6, align 8
  %47 = call i32 @interesting_section(%struct.TYPE_11__* %44, %struct.TYPE_10__* %45, %struct.spu_link_hash_table* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %43
  br label %64

55:                                               ; preds = %49
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i32 @mark_functions_via_relocs(%struct.TYPE_11__* %56, %struct.bfd_link_info* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %305

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %54
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %8, align 8
  br label %40

68:                                               ; preds = %40
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %8, align 8
  br label %72

72:                                               ; preds = %155, %68
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = icmp ne %struct.TYPE_11__* %73, null
  br i1 %74, label %75, label %159

75:                                               ; preds = %72
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = call %struct._spu_elf_section_data* @spu_elf_section_data(%struct.TYPE_11__* %76)
  store %struct._spu_elf_section_data* %77, %struct._spu_elf_section_data** %9, align 8
  %78 = icmp ne %struct._spu_elf_section_data* %77, null
  br i1 %78, label %79, label %154

79:                                               ; preds = %75
  %80 = load %struct._spu_elf_section_data*, %struct._spu_elf_section_data** %9, align 8
  %81 = getelementptr inbounds %struct._spu_elf_section_data, %struct._spu_elf_section_data* %80, i32 0, i32 0
  %82 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %81, align 8
  store %struct.spu_elf_stack_info* %82, %struct.spu_elf_stack_info** %10, align 8
  %83 = icmp ne %struct.spu_elf_stack_info* %82, null
  br i1 %83, label %84, label %154

84:                                               ; preds = %79
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %150, %84
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %10, align 8
  %88 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %153

91:                                               ; preds = %85
  %92 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %10, align 8
  %93 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %149

101:                                              ; preds = %91
  %102 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %10, align 8
  %103 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load %struct.call_info*, %struct.call_info** %108, align 8
  store %struct.call_info* %109, %struct.call_info** %12, align 8
  br label %110

110:                                              ; preds = %131, %101
  %111 = load %struct.call_info*, %struct.call_info** %12, align 8
  %112 = icmp ne %struct.call_info* %111, null
  br i1 %112, label %113, label %133

113:                                              ; preds = %110
  %114 = load %struct.call_info*, %struct.call_info** %12, align 8
  %115 = getelementptr inbounds %struct.call_info, %struct.call_info* %114, i32 0, i32 0
  %116 = load %struct.call_info*, %struct.call_info** %115, align 8
  store %struct.call_info* %116, %struct.call_info** %13, align 8
  %117 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %10, align 8
  %118 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %117, i32 0, i32 1
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.call_info*, %struct.call_info** %12, align 8
  %126 = call i32 @insert_callee(i32* %124, %struct.call_info* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %113
  %129 = load %struct.call_info*, %struct.call_info** %12, align 8
  %130 = call i32 @free(%struct.call_info* %129)
  br label %131

131:                                              ; preds = %128, %113
  %132 = load %struct.call_info*, %struct.call_info** %13, align 8
  store %struct.call_info* %132, %struct.call_info** %12, align 8
  br label %110

133:                                              ; preds = %110
  %134 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %10, align 8
  %135 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %134, i32 0, i32 1
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  store %struct.call_info* null, %struct.call_info** %140, align 8
  %141 = load i32, i32* @TRUE, align 4
  %142 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %10, align 8
  %143 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %142, i32 0, i32 1
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  store i32 %141, i32* %148, align 8
  br label %149

149:                                              ; preds = %133, %91
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %85

153:                                              ; preds = %85
  br label %154

154:                                              ; preds = %153, %79, %75
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  store %struct.TYPE_11__* %158, %struct.TYPE_11__** %8, align 8
  br label %72

159:                                              ; preds = %72
  br label %160

160:                                              ; preds = %159, %35
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  store %struct.TYPE_10__* %163, %struct.TYPE_10__** %7, align 8
  br label %27

164:                                              ; preds = %27
  %165 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %166 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %165, i32 0, i32 0
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  store %struct.TYPE_10__* %167, %struct.TYPE_10__** %7, align 8
  br label %168

168:                                              ; preds = %229, %164
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %170 = icmp ne %struct.TYPE_10__* %169, null
  br i1 %170, label %171, label %233

171:                                              ; preds = %168
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, @bfd_elf32_spu_vec
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %229

177:                                              ; preds = %171
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  store %struct.TYPE_11__* %180, %struct.TYPE_11__** %14, align 8
  br label %181

181:                                              ; preds = %224, %177
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %183 = icmp ne %struct.TYPE_11__* %182, null
  br i1 %183, label %184, label %228

184:                                              ; preds = %181
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %186 = call %struct._spu_elf_section_data* @spu_elf_section_data(%struct.TYPE_11__* %185)
  store %struct._spu_elf_section_data* %186, %struct._spu_elf_section_data** %15, align 8
  %187 = icmp ne %struct._spu_elf_section_data* %186, null
  br i1 %187, label %188, label %223

188:                                              ; preds = %184
  %189 = load %struct._spu_elf_section_data*, %struct._spu_elf_section_data** %15, align 8
  %190 = getelementptr inbounds %struct._spu_elf_section_data, %struct._spu_elf_section_data* %189, i32 0, i32 0
  %191 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %190, align 8
  store %struct.spu_elf_stack_info* %191, %struct.spu_elf_stack_info** %16, align 8
  %192 = icmp ne %struct.spu_elf_stack_info* %191, null
  br i1 %192, label %193, label %223

193:                                              ; preds = %188
  store i32 0, i32* %17, align 4
  br label %194

194:                                              ; preds = %219, %193
  %195 = load i32, i32* %17, align 4
  %196 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %16, align 8
  %197 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %222

200:                                              ; preds = %194
  %201 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %16, align 8
  %202 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %201, i32 0, i32 1
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %200
  %211 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %16, align 8
  %212 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %211, i32 0, i32 1
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = load i32, i32* %17, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i64 %215
  %217 = call i32 @mark_non_root(%struct.TYPE_12__* %216)
  br label %218

218:                                              ; preds = %210, %200
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %17, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %17, align 4
  br label %194

222:                                              ; preds = %194
  br label %223

223:                                              ; preds = %222, %188, %184
  br label %224

224:                                              ; preds = %223
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  store %struct.TYPE_11__* %227, %struct.TYPE_11__** %14, align 8
  br label %181

228:                                              ; preds = %181
  br label %229

229:                                              ; preds = %228, %176
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  store %struct.TYPE_10__* %232, %struct.TYPE_10__** %7, align 8
  br label %168

233:                                              ; preds = %168
  %234 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %235 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %234, i32 0, i32 0
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  store %struct.TYPE_10__* %236, %struct.TYPE_10__** %7, align 8
  br label %237

237:                                              ; preds = %299, %233
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %239 = icmp ne %struct.TYPE_10__* %238, null
  br i1 %239, label %240, label %303

240:                                              ; preds = %237
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = icmp ne i32* %243, @bfd_elf32_spu_vec
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  br label %299

246:                                              ; preds = %240
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %248, align 8
  store %struct.TYPE_11__* %249, %struct.TYPE_11__** %18, align 8
  br label %250

250:                                              ; preds = %294, %246
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %252 = icmp ne %struct.TYPE_11__* %251, null
  br i1 %252, label %253, label %298

253:                                              ; preds = %250
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %255 = call %struct._spu_elf_section_data* @spu_elf_section_data(%struct.TYPE_11__* %254)
  store %struct._spu_elf_section_data* %255, %struct._spu_elf_section_data** %19, align 8
  %256 = icmp ne %struct._spu_elf_section_data* %255, null
  br i1 %256, label %257, label %293

257:                                              ; preds = %253
  %258 = load %struct._spu_elf_section_data*, %struct._spu_elf_section_data** %19, align 8
  %259 = getelementptr inbounds %struct._spu_elf_section_data, %struct._spu_elf_section_data* %258, i32 0, i32 0
  %260 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %259, align 8
  store %struct.spu_elf_stack_info* %260, %struct.spu_elf_stack_info** %20, align 8
  %261 = icmp ne %struct.spu_elf_stack_info* %260, null
  br i1 %261, label %262, label %293

262:                                              ; preds = %257
  store i32 0, i32* %21, align 4
  br label %263

263:                                              ; preds = %289, %262
  %264 = load i32, i32* %21, align 4
  %265 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %20, align 8
  %266 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %292

269:                                              ; preds = %263
  %270 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %20, align 8
  %271 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %270, i32 0, i32 1
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = load i32, i32* %21, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %288, label %279

279:                                              ; preds = %269
  %280 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %20, align 8
  %281 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %280, i32 0, i32 1
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %281, align 8
  %283 = load i32, i32* %21, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i64 %284
  %286 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %287 = call i32 @call_graph_traverse(%struct.TYPE_12__* %285, %struct.bfd_link_info* %286)
  br label %288

288:                                              ; preds = %279, %269
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %21, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %21, align 4
  br label %263

292:                                              ; preds = %263
  br label %293

293:                                              ; preds = %292, %257, %253
  br label %294

294:                                              ; preds = %293
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %296, align 8
  store %struct.TYPE_11__* %297, %struct.TYPE_11__** %18, align 8
  br label %250

298:                                              ; preds = %250
  br label %299

299:                                              ; preds = %298, %245
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %301, align 8
  store %struct.TYPE_10__* %302, %struct.TYPE_10__** %7, align 8
  br label %237

303:                                              ; preds = %237
  %304 = load i32, i32* @TRUE, align 4
  store i32 %304, i32* %3, align 4
  br label %305

305:                                              ; preds = %303, %61
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local %struct.spu_link_hash_table* @spu_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @interesting_section(%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.spu_link_hash_table*) #1

declare dso_local i32 @mark_functions_via_relocs(%struct.TYPE_11__*, %struct.bfd_link_info*, i32) #1

declare dso_local %struct._spu_elf_section_data* @spu_elf_section_data(%struct.TYPE_11__*) #1

declare dso_local i32 @insert_callee(i32*, %struct.call_info*) #1

declare dso_local i32 @free(%struct.call_info*) #1

declare dso_local i32 @mark_non_root(%struct.TYPE_12__*) #1

declare dso_local i32 @call_graph_traverse(%struct.TYPE_12__*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
