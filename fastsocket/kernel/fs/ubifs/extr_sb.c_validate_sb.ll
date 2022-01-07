; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_sb.c_validate_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_sb.c_validate_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ubifs_sb_node = type { i64, i32, i32, i32 }

@UBIFS_SIMPLE_KEY_FMT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"min. I/O unit mismatch: %d in superblock, %d real\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"LEB size mismatch: %d in superblock, %d real\00", align 1
@UBIFS_MIN_LOG_LEBS = common dso_local global i64 0, align 8
@UBIFS_MIN_LPT_LEBS = common dso_local global i64 0, align 8
@UBIFS_MIN_ORPH_LEBS = common dso_local global i64 0, align 8
@UBIFS_MIN_MAIN_LEBS = common dso_local global i64 0, align 8
@UBIFS_SB_LEBS = common dso_local global i64 0, align 8
@UBIFS_MST_LEBS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"bad LEB count: %d in superblock, %d on UBI volume, %d minimum required\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"max. LEB count %d less than LEB count %d\00", align 1
@UBIFS_MIN_BUD_LEBS = common dso_local global i64 0, align 8
@NONDATA_JHEADS_CNT = common dso_local global i64 0, align 8
@UBIFS_MAX_JHEADS = common dso_local global i64 0, align 8
@UBIFS_MIN_FANOUT = common dso_local global i64 0, align 8
@DEFAULT_LSAVE_CNT = common dso_local global i64 0, align 8
@UBIFS_COMPR_TYPES_CNT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"bad superblock, error %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_sb_node*)* @validate_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_sb(%struct.ubifs_info* %0, %struct.ubifs_sb_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_sb_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_sb_node* %1, %struct.ubifs_sb_node** %5, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 15
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %322

14:                                               ; preds = %2
  %15 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %16 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UBIFS_SIMPLE_KEY_FMT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 3, i32* %7, align 4
  br label %322

21:                                               ; preds = %14
  %22 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %23 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %32 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  br label %322

39:                                               ; preds = %21
  %40 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %41 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %50 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  br label %322

57:                                               ; preds = %39
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @UBIFS_MIN_LOG_LEBS, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %81, label %63

63:                                               ; preds = %57
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %65 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UBIFS_MIN_LPT_LEBS, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %63
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %71 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @UBIFS_MIN_ORPH_LEBS, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @UBIFS_MIN_MAIN_LEBS, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75, %69, %63, %57
  store i32 4, i32* %7, align 4
  br label %322

82:                                               ; preds = %75
  %83 = load i64, i64* @UBIFS_SB_LEBS, align 8
  %84 = load i64, i64* @UBIFS_MST_LEBS, align 8
  %85 = add nsw i64 %83, %84
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %87 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %8, align 4
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %92 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %95 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = add nsw i64 %101, 6
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %8, align 4
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %108 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %121, label %112

112:                                              ; preds = %82
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %114 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %116, i32 0, i32 14
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %115, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %112, %82
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %123 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %126 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %125, i32 0, i32 14
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %128, i32 %129)
  br label %322

131:                                              ; preds = %112
  %132 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %133 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %136 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %131
  %140 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %141 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %144 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %142, i32 %145)
  br label %322

147:                                              ; preds = %131
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %149 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @UBIFS_MIN_MAIN_LEBS, align 8
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store i32 7, i32* %7, align 4
  br label %322

154:                                              ; preds = %147
  %155 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %156 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %155, i32 0, i32 9
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %159 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* @UBIFS_MIN_BUD_LEBS, align 8
  %163 = mul nsw i64 %161, %162
  %164 = icmp slt i64 %157, %163
  br i1 %164, label %178, label %165

165:                                              ; preds = %154
  %166 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %167 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %166, i32 0, i32 9
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %170 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %174 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = mul nsw i64 %172, %175
  %177 = icmp sgt i64 %168, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %165, %154
  store i32 8, i32* %7, align 4
  br label %322

179:                                              ; preds = %165
  %180 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %181 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @NONDATA_JHEADS_CNT, align 8
  %184 = add nsw i64 %183, 1
  %185 = icmp slt i64 %182, %184
  br i1 %185, label %194, label %186

186:                                              ; preds = %179
  %187 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %188 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @NONDATA_JHEADS_CNT, align 8
  %191 = load i64, i64* @UBIFS_MAX_JHEADS, align 8
  %192 = add nsw i64 %190, %191
  %193 = icmp sgt i64 %189, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %186, %179
  store i32 9, i32* %7, align 4
  br label %322

195:                                              ; preds = %186
  %196 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %197 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %196, i32 0, i32 10
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @UBIFS_MIN_FANOUT, align 8
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %212, label %201

201:                                              ; preds = %195
  %202 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %203 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %204 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %203, i32 0, i32 10
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @ubifs_idx_node_sz(%struct.ubifs_info* %202, i64 %205)
  %207 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %208 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = icmp sgt i64 %206, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %201, %195
  store i32 10, i32* %7, align 4
  br label %322

213:                                              ; preds = %201
  %214 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %215 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %214, i32 0, i32 11
  %216 = load i64, i64* %215, align 8
  %217 = icmp slt i64 %216, 0
  br i1 %217, label %249, label %218

218:                                              ; preds = %213
  %219 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %220 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %219, i32 0, i32 11
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @DEFAULT_LSAVE_CNT, align 8
  %223 = icmp sgt i64 %221, %222
  br i1 %223, label %224, label %250

224:                                              ; preds = %218
  %225 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %226 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %225, i32 0, i32 11
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %229 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = load i64, i64* @UBIFS_SB_LEBS, align 8
  %233 = sub nsw i64 %231, %232
  %234 = load i64, i64* @UBIFS_MST_LEBS, align 8
  %235 = sub nsw i64 %233, %234
  %236 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %237 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = sub nsw i64 %235, %238
  %240 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %241 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = sub nsw i64 %239, %242
  %244 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %245 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = sub nsw i64 %243, %246
  %248 = icmp sgt i64 %227, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %224, %213
  store i32 11, i32* %7, align 4
  br label %322

250:                                              ; preds = %224, %218
  %251 = load i64, i64* @UBIFS_SB_LEBS, align 8
  %252 = load i64, i64* @UBIFS_MST_LEBS, align 8
  %253 = add nsw i64 %251, %252
  %254 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %255 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %253, %256
  %258 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %259 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %257, %260
  %262 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %263 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %262, i32 0, i32 4
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %261, %264
  %266 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %267 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %265, %268
  %270 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %271 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = icmp ne i64 %269, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %250
  store i32 12, i32* %7, align 4
  br label %322

276:                                              ; preds = %250
  %277 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %278 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %277, i32 0, i32 12
  %279 = load i64, i64* %278, align 8
  %280 = icmp slt i64 %279, 0
  br i1 %280, label %287, label %281

281:                                              ; preds = %276
  %282 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %283 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %282, i32 0, i32 12
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @UBIFS_COMPR_TYPES_CNT, align 8
  %286 = icmp sge i64 %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %281, %276
  store i32 13, i32* %7, align 4
  br label %322

288:                                              ; preds = %281
  %289 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %290 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %289, i32 0, i32 5
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %293 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = mul nsw i64 %291, %295
  store i64 %296, i64* %6, align 8
  %297 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %298 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %297, i32 0, i32 13
  %299 = load i64, i64* %298, align 8
  %300 = icmp slt i64 %299, 0
  br i1 %300, label %307, label %301

301:                                              ; preds = %288
  %302 = load i64, i64* %6, align 8
  %303 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %304 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %303, i32 0, i32 13
  %305 = load i64, i64* %304, align 8
  %306 = icmp slt i64 %302, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %301, %288
  store i32 14, i32* %7, align 4
  br label %322

308:                                              ; preds = %301
  %309 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %310 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @le32_to_cpu(i32 %311)
  %313 = icmp sgt i32 %312, 1000000000
  br i1 %313, label %320, label %314

314:                                              ; preds = %308
  %315 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %316 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @le32_to_cpu(i32 %317)
  %319 = icmp slt i32 %318, 1
  br i1 %319, label %320, label %321

320:                                              ; preds = %314, %308
  store i32 15, i32* %7, align 4
  br label %322

321:                                              ; preds = %314
  store i32 0, i32* %3, align 4
  br label %330

322:                                              ; preds = %320, %307, %287, %275, %249, %212, %194, %178, %153, %139, %121, %81, %48, %30, %20, %13
  %323 = load i32, i32* %7, align 4
  %324 = call i32 (i8*, i32, ...) @ubifs_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %323)
  %325 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %326 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %327 = call i32 @dbg_dump_node(%struct.ubifs_info* %325, %struct.ubifs_sb_node* %326)
  %328 = load i32, i32* @EINVAL, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %3, align 4
  br label %330

330:                                              ; preds = %322, %321
  %331 = load i32, i32* %3, align 4
  ret i32 %331
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(i8*, i32, ...) #1

declare dso_local i64 @ubifs_idx_node_sz(%struct.ubifs_info*, i64) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, %struct.ubifs_sb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
