; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_ubifs_recover_leb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_ubifs_recover_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_scan_leb = type { i64 }
%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_ch = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"look at LEB %d:%d (%d bytes left)\00", align 1
@SCANNED_A_NODE = common dso_local global i32 0, align 4
@SCANNED_EMPTY_SPACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"bad node\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"corrupt empty space LEB %d:%d, corruption starts at %d\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"LEB %d scanning failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_scan_leb* @ubifs_recover_leb(%struct.ubifs_info* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ubifs_scan_leb*, align 8
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ubifs_scan_leb*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ubifs_ch*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %17, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %30, i64 %32
  store i8* %33, i8** %19, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = call %struct.ubifs_scan_leb* @ubifs_start_scan(%struct.ubifs_info* %37, i32 %38, i32 %39, i8* %40)
  store %struct.ubifs_scan_leb* %41, %struct.ubifs_scan_leb** %18, align 8
  %42 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %43 = call i64 @IS_ERR(%struct.ubifs_scan_leb* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %5
  %46 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  store %struct.ubifs_scan_leb* %46, %struct.ubifs_scan_leb** %6, align 8
  br label %279

47:                                               ; preds = %5
  %48 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %49 = getelementptr inbounds %struct.ubifs_scan_leb, %struct.ubifs_scan_leb* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %14, align 4
  br label %53

53:                                               ; preds = %52, %47
  br label %54

54:                                               ; preds = %171, %103, %84, %53
  %55 = load i32, i32* %13, align 4
  %56 = icmp sge i32 %55, 8
  br i1 %56, label %57, label %182

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @dbg_scan(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  %62 = call i32 (...) @cond_resched()
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %64 = load i8*, i8** %19, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @ubifs_scan_a_node(%struct.ubifs_info* %63, i8* %64, i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* @SCANNED_A_NODE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %57
  %74 = load i8*, i8** %19, align 8
  %75 = bitcast i8* %74 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %75, %struct.ubifs_ch** %21, align 8
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %77 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %78 = load i8*, i8** %19, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @ubifs_add_snod(%struct.ubifs_info* %76, %struct.ubifs_scan_leb* %77, i8* %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %272

84:                                               ; preds = %73
  %85 = load %struct.ubifs_ch*, %struct.ubifs_ch** %21, align 8
  %86 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = call i32 @ALIGN(i32 %88, i32 8)
  store i32 %89, i32* %22, align 4
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %22, align 4
  %94 = load i8*, i8** %19, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr i8, i8* %94, i64 %95
  store i8* %96, i8** %19, align 8
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %13, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %13, align 4
  br label %54

100:                                              ; preds = %57
  %101 = load i32, i32* %20, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %20, align 4
  %108 = load i8*, i8** %19, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr i8, i8* %108, i64 %109
  store i8* %110, i8** %19, align 8
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %13, align 4
  br label %54

114:                                              ; preds = %100
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* @SCANNED_EMPTY_SPACE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %114
  %119 = load i8*, i8** %19, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @is_empty(i8* %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %118
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %125 = load i8*, i8** %19, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i64 @is_last_write(%struct.ubifs_info* %124, i8* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  br label %182

130:                                              ; preds = %123
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @clean_buf(%struct.ubifs_info* %131, i8** %19, i32 %132, i32* %9, i32* %13)
  store i32 1, i32* %14, align 4
  br label %134

134:                                              ; preds = %130, %118
  store i32 1, i32* %16, align 4
  br label %182

135:                                              ; preds = %114
  %136 = load i32, i32* %20, align 4
  %137 = icmp eq i32 %136, 128
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %20, align 4
  %140 = icmp eq i32 %139, 130
  br i1 %140, label %141, label %152

141:                                              ; preds = %138, %135
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %143 = load i8*, i8** %19, align 8
  %144 = load i32, i32* %9, align 4
  %145 = call i64 @is_last_write(%struct.ubifs_info* %142, i8* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @clean_buf(%struct.ubifs_info* %148, i8** %19, i32 %149, i32* %9, i32* %13)
  store i32 1, i32* %14, align 4
  store i32 1, i32* %16, align 4
  br label %182

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151, %138
  %153 = load i32, i32* %20, align 4
  %154 = icmp eq i32 %153, 129
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %157 = load i8*, i8** %19, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i64 @no_more_nodes(%struct.ubifs_info* %156, i8* %157, i32 %158, i32 %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %155
  %164 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @clean_buf(%struct.ubifs_info* %164, i8** %19, i32 %165, i32* %9, i32* %13)
  store i32 1, i32* %14, align 4
  store i32 1, i32* %16, align 4
  br label %182

167:                                              ; preds = %155
  br label %168

168:                                              ; preds = %167, %152
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 0, i32* %15, align 4
  br label %54

172:                                              ; preds = %168
  %173 = load i32, i32* %20, align 4
  switch i32 %173, label %178 [
    i32 128, label %174
    i32 129, label %176
    i32 130, label %176
  ]

174:                                              ; preds = %172
  %175 = call i32 @dbg_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %264

176:                                              ; preds = %172, %172
  %177 = call i32 @dbg_err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %264

178:                                              ; preds = %172
  %179 = call i32 @dbg_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %12, align 4
  br label %272

182:                                              ; preds = %163, %147, %134, %129, %54
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %214, label %185

185:                                              ; preds = %182
  %186 = load i8*, i8** %19, align 8
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @is_empty(i8* %186, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %214, label %190

190:                                              ; preds = %185
  %191 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %192 = load i8*, i8** %19, align 8
  %193 = load i32, i32* %9, align 4
  %194 = call i64 @is_last_write(%struct.ubifs_info* %191, i8* %192, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @clean_buf(%struct.ubifs_info* %197, i8** %19, i32 %198, i32* %9, i32* %13)
  store i32 1, i32* %14, align 4
  br label %213

200:                                              ; preds = %190
  %201 = load i8*, i8** %19, align 8
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @first_non_ff(i8* %201, i32 %202)
  store i32 %203, i32* %23, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %23, align 4
  %207 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %204, i32 %205, i32 %206)
  %208 = load i32, i32* %23, align 4
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %23, align 4
  %210 = load i8*, i8** %19, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr i8, i8* %210, i64 %211
  store i8* %212, i8** %19, align 8
  br label %264

213:                                              ; preds = %196
  br label %214

214:                                              ; preds = %213, %185, %182
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %234

217:                                              ; preds = %214
  %218 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %219 = call i64 @drop_incomplete_group(%struct.ubifs_scan_leb* %218, i32* %9)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %217
  %222 = load i8*, i8** %10, align 8
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr i8, i8* %222, i64 %224
  store i8* %225, i8** %19, align 8
  %226 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %227 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %9, align 4
  %230 = sub nsw i32 %228, %229
  store i32 %230, i32* %13, align 4
  %231 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %232 = load i32, i32* %8, align 4
  %233 = call i32 @clean_buf(%struct.ubifs_info* %231, i8** %19, i32 %232, i32* %9, i32* %13)
  store i32 1, i32* %14, align 4
  br label %234

234:                                              ; preds = %221, %217, %214
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %237 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = srem i32 %235, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %234
  %242 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @clean_buf(%struct.ubifs_info* %242, i8** %19, i32 %243, i32* %9, i32* %13)
  store i32 1, i32* %14, align 4
  br label %245

245:                                              ; preds = %241, %234
  %246 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %247 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @ubifs_end_scan(%struct.ubifs_info* %246, %struct.ubifs_scan_leb* %247, i32 %248, i32 %249)
  %251 = load i32, i32* %14, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %245
  %254 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %255 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %256 = load i32, i32* %17, align 4
  %257 = call i32 @fix_unclean_leb(%struct.ubifs_info* %254, %struct.ubifs_scan_leb* %255, i32 %256)
  store i32 %257, i32* %12, align 4
  %258 = load i32, i32* %12, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  br label %272

261:                                              ; preds = %253
  br label %262

262:                                              ; preds = %261, %245
  %263 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  store %struct.ubifs_scan_leb* %263, %struct.ubifs_scan_leb** %6, align 8
  br label %279

264:                                              ; preds = %200, %176, %174
  %265 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* %9, align 4
  %268 = load i8*, i8** %19, align 8
  %269 = call i32 @ubifs_scanned_corruption(%struct.ubifs_info* %265, i32 %266, i32 %267, i8* %268)
  %270 = load i32, i32* @EUCLEAN, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %12, align 4
  br label %272

272:                                              ; preds = %264, %260, %178, %83
  %273 = load i32, i32* %8, align 4
  %274 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %273)
  %275 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %276 = call i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb* %275)
  %277 = load i32, i32* %12, align 4
  %278 = call %struct.ubifs_scan_leb* @ERR_PTR(i32 %277)
  store %struct.ubifs_scan_leb* %278, %struct.ubifs_scan_leb** %6, align 8
  br label %279

279:                                              ; preds = %272, %262, %45
  %280 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %6, align 8
  ret %struct.ubifs_scan_leb* %280
}

declare dso_local i32 @dbg_rcvry(i8*, i32, i32) #1

declare dso_local %struct.ubifs_scan_leb* @ubifs_start_scan(%struct.ubifs_info*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_scan_leb*) #1

declare dso_local i32 @dbg_scan(i8*, i32, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @ubifs_scan_a_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_add_snod(%struct.ubifs_info*, %struct.ubifs_scan_leb*, i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @is_empty(i8*, i32) #1

declare dso_local i64 @is_last_write(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @clean_buf(%struct.ubifs_info*, i8**, i32, i32*, i32*) #1

declare dso_local i64 @no_more_nodes(%struct.ubifs_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @dbg_err(i8*) #1

declare dso_local i32 @first_non_ff(i8*, i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, ...) #1

declare dso_local i64 @drop_incomplete_group(%struct.ubifs_scan_leb*, i32*) #1

declare dso_local i32 @ubifs_end_scan(%struct.ubifs_info*, %struct.ubifs_scan_leb*, i32, i32) #1

declare dso_local i32 @fix_unclean_leb(%struct.ubifs_info*, %struct.ubifs_scan_leb*, i32) #1

declare dso_local i32 @ubifs_scanned_corruption(%struct.ubifs_info*, i32, i32, i8*) #1

declare dso_local i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb*) #1

declare dso_local %struct.ubifs_scan_leb* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
