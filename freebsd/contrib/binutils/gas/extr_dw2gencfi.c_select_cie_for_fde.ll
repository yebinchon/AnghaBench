; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_select_cie_for_fde.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_select_cie_for_fde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cie_entry = type { i64, i64, i64, i64, %struct.cfi_insn_data*, %struct.cfi_insn_data*, %struct.TYPE_8__, %struct.cie_entry* }
%struct.cfi_insn_data = type { i32, %struct.cfi_insn_data*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32 }
%struct.fde_entry = type { i64, i64, i64, i64, %struct.cfi_insn_data*, %struct.TYPE_8__ }

@cie_root = common dso_local global %struct.cie_entry* null, align 8
@DW_EH_PE_omit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cie_entry* (%struct.fde_entry*, %struct.cfi_insn_data**)* @select_cie_for_fde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cie_entry* @select_cie_for_fde(%struct.fde_entry* %0, %struct.cfi_insn_data** %1) #0 {
  %3 = alloca %struct.cie_entry*, align 8
  %4 = alloca %struct.fde_entry*, align 8
  %5 = alloca %struct.cfi_insn_data**, align 8
  %6 = alloca %struct.cfi_insn_data*, align 8
  %7 = alloca %struct.cfi_insn_data*, align 8
  %8 = alloca %struct.cie_entry*, align 8
  store %struct.fde_entry* %0, %struct.fde_entry** %4, align 8
  store %struct.cfi_insn_data** %1, %struct.cfi_insn_data*** %5, align 8
  %9 = load %struct.cie_entry*, %struct.cie_entry** @cie_root, align 8
  store %struct.cie_entry* %9, %struct.cie_entry** %8, align 8
  br label %10

10:                                               ; preds = %256, %2
  %11 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %12 = icmp ne %struct.cie_entry* %11, null
  br i1 %12, label %13, label %260

13:                                               ; preds = %10
  %14 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %15 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %18 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %45, label %21

21:                                               ; preds = %13
  %22 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %23 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %26 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %21
  %30 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %31 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %34 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %39 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %42 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37, %29, %21, %13
  br label %256

46:                                               ; preds = %37
  %47 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %48 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DW_EH_PE_omit, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %105

52:                                               ; preds = %46
  %53 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %54 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %58 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %56, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %52
  %63 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %64 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %68 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62, %52
  br label %256

73:                                               ; preds = %62
  %74 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %75 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %102 [
    i32 129, label %78
    i32 128, label %90
  ]

78:                                               ; preds = %73
  %79 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %80 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %84 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %256

89:                                               ; preds = %78
  br label %104

90:                                               ; preds = %73
  %91 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %92 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %96 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %256

101:                                              ; preds = %90
  br label %104

102:                                              ; preds = %73
  %103 = call i32 (...) @abort() #4
  unreachable

104:                                              ; preds = %101, %89
  br label %105

105:                                              ; preds = %104, %46
  %106 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %107 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %106, i32 0, i32 5
  %108 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %107, align 8
  store %struct.cfi_insn_data* %108, %struct.cfi_insn_data** %6, align 8
  %109 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %110 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %109, i32 0, i32 4
  %111 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %110, align 8
  store %struct.cfi_insn_data* %111, %struct.cfi_insn_data** %7, align 8
  br label %112

112:                                              ; preds = %219, %105
  %113 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %114 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %115 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %114, i32 0, i32 4
  %116 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %115, align 8
  %117 = icmp ne %struct.cfi_insn_data* %113, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %120 = icmp ne %struct.cfi_insn_data* %119, null
  br label %121

121:                                              ; preds = %118, %112
  %122 = phi i1 [ false, %112 ], [ %120, %118 ]
  br i1 %122, label %123, label %226

123:                                              ; preds = %121
  %124 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %125 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %128 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %126, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %255

132:                                              ; preds = %123
  %133 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %134 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %216 [
    i32 139, label %136
    i32 133, label %136
    i32 135, label %137
    i32 138, label %137
    i32 134, label %164
    i32 136, label %191
    i32 132, label %191
    i32 130, label %191
    i32 131, label %191
    i32 137, label %203
    i32 140, label %215
  ]

136:                                              ; preds = %132, %132
  br label %255

137:                                              ; preds = %132, %132
  %138 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %139 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %144 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %142, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  br label %255

150:                                              ; preds = %137
  %151 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %152 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %157 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %155, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %150
  br label %255

163:                                              ; preds = %150
  br label %218

164:                                              ; preds = %132
  %165 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %166 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %171 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %169, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %164
  br label %255

177:                                              ; preds = %164
  %178 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %179 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %184 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %182, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %177
  br label %255

190:                                              ; preds = %177
  br label %218

191:                                              ; preds = %132, %132, %132, %132
  %192 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %193 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %197 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %195, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %191
  br label %255

202:                                              ; preds = %191
  br label %218

203:                                              ; preds = %132
  %204 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %205 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %209 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %207, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  br label %255

214:                                              ; preds = %203
  br label %218

215:                                              ; preds = %132
  br label %255

216:                                              ; preds = %132
  %217 = call i32 (...) @abort() #4
  unreachable

218:                                              ; preds = %214, %202, %190, %163
  br label %219

219:                                              ; preds = %218
  %220 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %221 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %220, i32 0, i32 1
  %222 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %221, align 8
  store %struct.cfi_insn_data* %222, %struct.cfi_insn_data** %6, align 8
  %223 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %224 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %223, i32 0, i32 1
  %225 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %224, align 8
  store %struct.cfi_insn_data* %225, %struct.cfi_insn_data** %7, align 8
  br label %112

226:                                              ; preds = %121
  %227 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %228 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %229 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %228, i32 0, i32 4
  %230 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %229, align 8
  %231 = icmp eq %struct.cfi_insn_data* %227, %230
  br i1 %231, label %232, label %254

232:                                              ; preds = %226
  %233 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %234 = icmp ne %struct.cfi_insn_data* %233, null
  br i1 %234, label %235, label %250

235:                                              ; preds = %232
  %236 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %237 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %238, 139
  br i1 %239, label %250, label %240

240:                                              ; preds = %235
  %241 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %242 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %243, 133
  br i1 %244, label %250, label %245

245:                                              ; preds = %240
  %246 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %247 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %248, 140
  br i1 %249, label %250, label %254

250:                                              ; preds = %245, %240, %235, %232
  %251 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %252 = load %struct.cfi_insn_data**, %struct.cfi_insn_data*** %5, align 8
  store %struct.cfi_insn_data* %251, %struct.cfi_insn_data** %252, align 8
  %253 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  store %struct.cie_entry* %253, %struct.cie_entry** %3, align 8
  br label %333

254:                                              ; preds = %245, %226
  br label %255

255:                                              ; preds = %254, %215, %213, %201, %189, %176, %162, %149, %136, %131
  br label %256

256:                                              ; preds = %255, %100, %88, %72, %45
  %257 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %258 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %257, i32 0, i32 7
  %259 = load %struct.cie_entry*, %struct.cie_entry** %258, align 8
  store %struct.cie_entry* %259, %struct.cie_entry** %8, align 8
  br label %10

260:                                              ; preds = %10
  %261 = call %struct.cie_entry* @xmalloc(i32 80)
  store %struct.cie_entry* %261, %struct.cie_entry** %8, align 8
  %262 = load %struct.cie_entry*, %struct.cie_entry** @cie_root, align 8
  %263 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %264 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %263, i32 0, i32 7
  store %struct.cie_entry* %262, %struct.cie_entry** %264, align 8
  %265 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  store %struct.cie_entry* %265, %struct.cie_entry** @cie_root, align 8
  %266 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %267 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %270 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %269, i32 0, i32 0
  store i64 %268, i64* %270, align 8
  %271 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %272 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %275 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %274, i32 0, i32 1
  store i64 %273, i64* %275, align 8
  %276 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %277 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %280 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %279, i32 0, i32 2
  store i64 %278, i64* %280, align 8
  %281 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %282 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %285 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %284, i32 0, i32 3
  store i64 %283, i64* %285, align 8
  %286 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %287 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %286, i32 0, i32 6
  %288 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %289 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %288, i32 0, i32 5
  %290 = bitcast %struct.TYPE_8__* %287 to i8*
  %291 = bitcast %struct.TYPE_8__* %289 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %290, i8* align 8 %291, i64 24, i1 false)
  %292 = load %struct.fde_entry*, %struct.fde_entry** %4, align 8
  %293 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %292, i32 0, i32 4
  %294 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %293, align 8
  %295 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %296 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %295, i32 0, i32 5
  store %struct.cfi_insn_data* %294, %struct.cfi_insn_data** %296, align 8
  %297 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %298 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %297, i32 0, i32 5
  %299 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %298, align 8
  store %struct.cfi_insn_data* %299, %struct.cfi_insn_data** %6, align 8
  br label %300

300:                                              ; preds = %320, %260
  %301 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %302 = icmp ne %struct.cfi_insn_data* %301, null
  br i1 %302, label %303, label %324

303:                                              ; preds = %300
  %304 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %305 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = icmp eq i32 %306, 139
  br i1 %307, label %318, label %308

308:                                              ; preds = %303
  %309 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %310 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp eq i32 %311, 133
  br i1 %312, label %318, label %313

313:                                              ; preds = %308
  %314 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %315 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp eq i32 %316, 140
  br i1 %317, label %318, label %319

318:                                              ; preds = %313, %308, %303
  br label %324

319:                                              ; preds = %313
  br label %320

320:                                              ; preds = %319
  %321 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %322 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %321, i32 0, i32 1
  %323 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %322, align 8
  store %struct.cfi_insn_data* %323, %struct.cfi_insn_data** %6, align 8
  br label %300

324:                                              ; preds = %318, %300
  %325 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %326 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %327 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %326, i32 0, i32 4
  store %struct.cfi_insn_data* %325, %struct.cfi_insn_data** %327, align 8
  %328 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %329 = load %struct.cfi_insn_data**, %struct.cfi_insn_data*** %5, align 8
  store %struct.cfi_insn_data* %328, %struct.cfi_insn_data** %329, align 8
  %330 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  %331 = call i32 @output_cie(%struct.cie_entry* %330)
  %332 = load %struct.cie_entry*, %struct.cie_entry** %8, align 8
  store %struct.cie_entry* %332, %struct.cie_entry** %3, align 8
  br label %333

333:                                              ; preds = %324, %250
  %334 = load %struct.cie_entry*, %struct.cie_entry** %3, align 8
  ret %struct.cie_entry* %334
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local %struct.cie_entry* @xmalloc(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @output_cie(%struct.cie_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
