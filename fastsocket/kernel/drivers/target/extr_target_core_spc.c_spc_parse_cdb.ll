; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_parse_cdb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_parse_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i8*, i32, %struct.TYPE_4__*, i8*, i8*, %struct.se_device* }
%struct.TYPE_4__ = type { i32 (...)* }
%struct.se_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.se_device*)* }

@spc_emulate_modeselect = common dso_local global i8* null, align 8
@spc_emulate_modesense = common dso_local global i8* null, align 8
@target_scsi3_emulate_pr_in = common dso_local global i8* null, align 8
@target_scsi3_emulate_pr_out = common dso_local global i8* null, align 8
@target_scsi2_reservation_release = common dso_local global i8* null, align 8
@target_scsi2_reservation_reserve = common dso_local global i8* null, align 8
@spc_emulate_request_sense = common dso_local global i8* null, align 8
@MSG_HEAD_TAG = common dso_local global i8* null, align 8
@spc_emulate_inquiry = common dso_local global i8* null, align 8
@spc_emulate_report_luns = common dso_local global i8* null, align 8
@spc_emulate_testunitready = common dso_local global i8* null, align 8
@TYPE_ROM = common dso_local global i32 0, align 4
@MI_REPORT_TARGET_PGS = common dso_local global i8 0, align 1
@target_emulate_report_target_port_groups = common dso_local global i8* null, align 8
@MO_SET_TARGET_PGS = common dso_local global i8 0, align 1
@target_emulate_set_target_port_groups = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [75 x i8] c"TARGET_CORE[%s]: Unsupported SCSI Opcode 0x%02x, sending CHECK_CONDITION.\0A\00", align 1
@TCM_UNSUPPORTED_SCSI_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spc_parse_cdb(%struct.se_cmd* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca i8*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 5
  %10 = load %struct.se_device*, %struct.se_device** %9, align 8
  store %struct.se_device* %10, %struct.se_device** %6, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  switch i32 %17, label %369 [
    i32 148, label %18
    i32 147, label %27
    i32 146, label %42
    i32 145, label %51
    i32 152, label %66
    i32 151, label %66
    i32 144, label %78
    i32 143, label %93
    i32 139, label %108
    i32 138, label %108
    i32 135, label %135
    i32 134, label %135
    i32 136, label %162
    i32 153, label %171
    i32 133, label %189
    i32 132, label %189
    i32 154, label %213
    i32 142, label %213
    i32 141, label %213
    i32 129, label %213
    i32 140, label %237
    i32 131, label %237
    i32 128, label %249
    i32 137, label %267
    i32 130, label %297
    i32 150, label %302
    i32 149, label %336
  ]

18:                                               ; preds = %2
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i8*, i8** @spc_emulate_modeselect, align 8
  %25 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  br label %381

27:                                               ; preds = %2
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 7
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl i32 %31, 8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 %32, %36
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i8*, i8** @spc_emulate_modeselect, align 8
  %40 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  br label %381

42:                                               ; preds = %2
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i8*, i8** @spc_emulate_modesense, align 8
  %49 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  br label %381

51:                                               ; preds = %2
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 7
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %56, %60
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i8*, i8** @spc_emulate_modesense, align 8
  %64 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %65 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  br label %381

66:                                               ; preds = %2, %2
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 7
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 %70, 8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 8
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = add nsw i32 %71, %75
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  br label %381

78:                                               ; preds = %2
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 7
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, 8
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 8
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = add nsw i32 %83, %87
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i8*, i8** @target_scsi3_emulate_pr_in, align 8
  %91 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %92 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  br label %381

93:                                               ; preds = %2
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 7
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 8
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %98, %102
  %104 = load i32*, i32** %5, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i8*, i8** @target_scsi3_emulate_pr_out, align 8
  %106 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %107 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  br label %381

108:                                              ; preds = %2, %2
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 138
  br i1 %113, label %114, label %126

114:                                              ; preds = %108
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 7
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl i32 %118, 8
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 8
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %119, %123
  %125 = load i32*, i32** %5, align 8
  store i32 %124, i32* %125, align 4
  br label %131

126:                                              ; preds = %108
  %127 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %128 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %5, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %114
  %132 = load i8*, i8** @target_scsi2_reservation_release, align 8
  %133 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %134 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  br label %381

135:                                              ; preds = %2, %2
  %136 = load i8*, i8** %7, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %139, 134
  br i1 %140, label %141, label %153

141:                                              ; preds = %135
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 7
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = shl i32 %145, 8
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 8
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = or i32 %146, %150
  %152 = load i32*, i32** %5, align 8
  store i32 %151, i32* %152, align 4
  br label %158

153:                                              ; preds = %135
  %154 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %155 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32*, i32** %5, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %153, %141
  %159 = load i8*, i8** @target_scsi2_reservation_reserve, align 8
  %160 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %161 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  br label %381

162:                                              ; preds = %2
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 4
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i32*, i32** %5, align 8
  store i32 %166, i32* %167, align 4
  %168 = load i8*, i8** @spc_emulate_request_sense, align 8
  %169 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %170 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %169, i32 0, i32 3
  store i8* %168, i8** %170, align 8
  br label %381

171:                                              ; preds = %2
  %172 = load i8*, i8** %7, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 3
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = shl i32 %175, 8
  %177 = load i8*, i8** %7, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 4
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = add nsw i32 %176, %180
  %182 = load i32*, i32** %5, align 8
  store i32 %181, i32* %182, align 4
  %183 = load i8*, i8** @MSG_HEAD_TAG, align 8
  %184 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %185 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %184, i32 0, i32 4
  store i8* %183, i8** %185, align 8
  %186 = load i8*, i8** @spc_emulate_inquiry, align 8
  %187 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %188 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %187, i32 0, i32 3
  store i8* %186, i8** %188, align 8
  br label %381

189:                                              ; preds = %2, %2
  %190 = load i8*, i8** %7, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 6
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = shl i32 %193, 24
  %195 = load i8*, i8** %7, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 7
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = shl i32 %198, 16
  %200 = or i32 %194, %199
  %201 = load i8*, i8** %7, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 8
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = shl i32 %204, 8
  %206 = or i32 %200, %205
  %207 = load i8*, i8** %7, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 9
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = or i32 %206, %210
  %212 = load i32*, i32** %5, align 8
  store i32 %211, i32* %212, align 4
  br label %381

213:                                              ; preds = %2, %2, %2, %2
  %214 = load i8*, i8** %7, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 10
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = shl i32 %217, 24
  %219 = load i8*, i8** %7, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 11
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = shl i32 %222, 16
  %224 = or i32 %218, %223
  %225 = load i8*, i8** %7, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 12
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = shl i32 %228, 8
  %230 = or i32 %224, %229
  %231 = load i8*, i8** %7, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 13
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = or i32 %230, %234
  %236 = load i32*, i32** %5, align 8
  store i32 %235, i32* %236, align 4
  br label %381

237:                                              ; preds = %2, %2
  %238 = load i8*, i8** %7, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 3
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = shl i32 %241, 8
  %243 = load i8*, i8** %7, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 4
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = or i32 %242, %246
  %248 = load i32*, i32** %5, align 8
  store i32 %247, i32* %248, align 4
  br label %381

249:                                              ; preds = %2
  %250 = load i8*, i8** %7, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 6
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = shl i32 %253, 16
  %255 = load i8*, i8** %7, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 7
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = shl i32 %258, 8
  %260 = add nsw i32 %254, %259
  %261 = load i8*, i8** %7, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 8
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = add nsw i32 %260, %264
  %266 = load i32*, i32** %5, align 8
  store i32 %265, i32* %266, align 4
  br label %381

267:                                              ; preds = %2
  %268 = load i8*, i8** @spc_emulate_report_luns, align 8
  %269 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %270 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %269, i32 0, i32 3
  store i8* %268, i8** %270, align 8
  %271 = load i8*, i8** %7, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 6
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = shl i32 %274, 24
  %276 = load i8*, i8** %7, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 7
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = shl i32 %279, 16
  %281 = or i32 %275, %280
  %282 = load i8*, i8** %7, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 8
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = shl i32 %285, 8
  %287 = or i32 %281, %286
  %288 = load i8*, i8** %7, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 9
  %290 = load i8, i8* %289, align 1
  %291 = zext i8 %290 to i32
  %292 = or i32 %287, %291
  %293 = load i32*, i32** %5, align 8
  store i32 %292, i32* %293, align 4
  %294 = load i8*, i8** @MSG_HEAD_TAG, align 8
  %295 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %296 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %295, i32 0, i32 4
  store i8* %294, i8** %296, align 8
  br label %381

297:                                              ; preds = %2
  %298 = load i8*, i8** @spc_emulate_testunitready, align 8
  %299 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %300 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %299, i32 0, i32 3
  store i8* %298, i8** %300, align 8
  %301 = load i32*, i32** %5, align 8
  store i32 0, i32* %301, align 4
  br label %381

302:                                              ; preds = %2
  %303 = load %struct.se_device*, %struct.se_device** %6, align 8
  %304 = getelementptr inbounds %struct.se_device, %struct.se_device* %303, i32 0, i32 0
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 0
  %307 = load i32 (%struct.se_device*)*, i32 (%struct.se_device*)** %306, align 8
  %308 = load %struct.se_device*, %struct.se_device** %6, align 8
  %309 = call i32 %307(%struct.se_device* %308)
  %310 = load i32, i32* @TYPE_ROM, align 4
  %311 = icmp ne i32 %309, %310
  br i1 %311, label %312, label %330

312:                                              ; preds = %302
  %313 = load i8*, i8** %7, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 1
  %315 = load i8, i8* %314, align 1
  %316 = zext i8 %315 to i32
  %317 = and i32 %316, 31
  %318 = load i8, i8* @MI_REPORT_TARGET_PGS, align 1
  %319 = zext i8 %318 to i32
  %320 = icmp eq i32 %317, %319
  br i1 %320, label %321, label %325

321:                                              ; preds = %312
  %322 = load i8*, i8** @target_emulate_report_target_port_groups, align 8
  %323 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %324 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %323, i32 0, i32 3
  store i8* %322, i8** %324, align 8
  br label %325

325:                                              ; preds = %321, %312
  %326 = load i8*, i8** %7, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 6
  %328 = call i32 @get_unaligned_be32(i8* %327)
  %329 = load i32*, i32** %5, align 8
  store i32 %328, i32* %329, align 4
  br label %335

330:                                              ; preds = %302
  %331 = load i8*, i8** %7, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 8
  %333 = call i32 @get_unaligned_be16(i8* %332)
  %334 = load i32*, i32** %5, align 8
  store i32 %333, i32* %334, align 4
  br label %335

335:                                              ; preds = %330, %325
  br label %381

336:                                              ; preds = %2
  %337 = load %struct.se_device*, %struct.se_device** %6, align 8
  %338 = getelementptr inbounds %struct.se_device, %struct.se_device* %337, i32 0, i32 0
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 0
  %341 = load i32 (%struct.se_device*)*, i32 (%struct.se_device*)** %340, align 8
  %342 = load %struct.se_device*, %struct.se_device** %6, align 8
  %343 = call i32 %341(%struct.se_device* %342)
  %344 = load i32, i32* @TYPE_ROM, align 4
  %345 = icmp ne i32 %343, %344
  br i1 %345, label %346, label %363

346:                                              ; preds = %336
  %347 = load i8*, i8** %7, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 1
  %349 = load i8, i8* %348, align 1
  %350 = zext i8 %349 to i32
  %351 = load i8, i8* @MO_SET_TARGET_PGS, align 1
  %352 = zext i8 %351 to i32
  %353 = icmp eq i32 %350, %352
  br i1 %353, label %354, label %358

354:                                              ; preds = %346
  %355 = load i8*, i8** @target_emulate_set_target_port_groups, align 8
  %356 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %357 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %356, i32 0, i32 3
  store i8* %355, i8** %357, align 8
  br label %358

358:                                              ; preds = %354, %346
  %359 = load i8*, i8** %7, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 6
  %361 = call i32 @get_unaligned_be32(i8* %360)
  %362 = load i32*, i32** %5, align 8
  store i32 %361, i32* %362, align 4
  br label %368

363:                                              ; preds = %336
  %364 = load i8*, i8** %7, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 8
  %366 = call i32 @get_unaligned_be16(i8* %365)
  %367 = load i32*, i32** %5, align 8
  store i32 %366, i32* %367, align 4
  br label %368

368:                                              ; preds = %363, %358
  br label %381

369:                                              ; preds = %2
  %370 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %371 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %370, i32 0, i32 2
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 0
  %374 = load i32 (...)*, i32 (...)** %373, align 8
  %375 = call i32 (...) %374()
  %376 = load i8*, i8** %7, align 8
  %377 = getelementptr inbounds i8, i8* %376, i64 0
  %378 = load i8, i8* %377, align 1
  %379 = call i32 @pr_warn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %375, i8 zeroext %378)
  %380 = load i32, i32* @TCM_UNSUPPORTED_SCSI_OPCODE, align 4
  store i32 %380, i32* %3, align 4
  br label %382

381:                                              ; preds = %368, %335, %297, %267, %249, %237, %213, %189, %171, %162, %158, %131, %93, %78, %66, %51, %42, %27, %18
  store i32 0, i32* %3, align 4
  br label %382

382:                                              ; preds = %381, %369
  %383 = load i32, i32* %3, align 4
  ret i32 %383
}

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i32 @pr_warn(i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
