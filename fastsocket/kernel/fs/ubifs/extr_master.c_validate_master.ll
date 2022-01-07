; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_master.c_validate_master.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_master.c_validate_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_4__, i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64, i64, i64, i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i32, i64 }

@SQNUM_WATERMARK = common dso_local global i64 0, align 8
@INUM_WATERMARK = common dso_local global i64 0, align 8
@UBIFS_LOG_LNUM = common dso_local global i64 0, align 8
@UBIFS_IDX_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"bad master node at offset %d error %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @validate_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_master(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SQNUM_WATERMARK, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %571

12:                                               ; preds = %1
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 2, i32* %5, align 4
  br label %571

21:                                               ; preds = %12
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INUM_WATERMARK, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 3, i32* %5, align 4
  br label %571

28:                                               ; preds = %21
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UBIFS_LOG_LNUM, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %67, label %34

34:                                               ; preds = %28
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UBIFS_LOG_LNUM, align 8
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = icmp sge i64 %37, %42
  br i1 %43, label %67, label %44

44:                                               ; preds = %34
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %44
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %52, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %49
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %62 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %60, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57, %49, %44, %34, %28
  store i32 4, i32* %5, align 4
  br label %571

68:                                               ; preds = %57
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %70 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %69, i32 0, i32 34
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %72, %75
  br i1 %76, label %102, label %77

77:                                               ; preds = %68
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 34
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %82, i32 0, i32 9
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %102, label %86

86:                                               ; preds = %77
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 34
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %92 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %90, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %86
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 34
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 7
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95, %86, %77, %68
  store i32 5, i32* %5, align 4
  br label %571

103:                                              ; preds = %95
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %105 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %104, i32 0, i32 34
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %109 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %108, i32 0, i32 33
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i64, i64* @UBIFS_IDX_NODE, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %107, %114
  br i1 %115, label %129, label %116

116:                                              ; preds = %103
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %118 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %117, i32 0, i32 34
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %122 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %121, i32 0, i32 33
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i64, i64* @UBIFS_IDX_NODE, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %120, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %116, %103
  store i32 6, i32* %5, align 4
  br label %571

130:                                              ; preds = %116
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %132 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %131, i32 0, i32 10
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %134, i32 0, i32 8
  %136 = load i64, i64* %135, align 8
  %137 = icmp sge i64 %133, %136
  br i1 %137, label %146, label %138

138:                                              ; preds = %130
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %140 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %139, i32 0, i32 10
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %143 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %142, i32 0, i32 9
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %141, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %138, %130
  store i32 7, i32* %5, align 4
  br label %571

147:                                              ; preds = %138
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %149 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %148, i32 0, i32 11
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %152 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %151, i32 0, i32 8
  %153 = load i64, i64* %152, align 8
  %154 = icmp sge i64 %150, %153
  br i1 %154, label %191, label %155

155:                                              ; preds = %147
  %156 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %157 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %156, i32 0, i32 11
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %160 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %159, i32 0, i32 9
  %161 = load i64, i64* %160, align 8
  %162 = icmp slt i64 %158, %161
  br i1 %162, label %191, label %163

163:                                              ; preds = %155
  %164 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %165 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %164, i32 0, i32 12
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %168 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 8
  %170 = srem i32 %166, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %191, label %172

172:                                              ; preds = %163
  %173 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %174 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %173, i32 0, i32 12
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %191, label %177

177:                                              ; preds = %172
  %178 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %179 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %178, i32 0, i32 12
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %182 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = icmp sgt i32 %180, %183
  br i1 %184, label %191, label %185

185:                                              ; preds = %177
  %186 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %187 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %186, i32 0, i32 12
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, 7
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %185, %177, %172, %163, %155, %147
  store i32 8, i32* %5, align 4
  br label %571

192:                                              ; preds = %185
  %193 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %194 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %193, i32 0, i32 13
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %198 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = mul nsw i64 %196, %200
  store i64 %201, i64* %4, align 8
  %202 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %203 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %202, i32 0, i32 14
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, 7
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %192
  %208 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %209 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %208, i32 0, i32 14
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* %4, align 8
  %213 = icmp sge i64 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %207, %192
  store i32 9, i32* %5, align 4
  br label %571

215:                                              ; preds = %207
  %216 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %217 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %216, i32 0, i32 15
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %220 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %219, i32 0, i32 16
  %221 = load i64, i64* %220, align 8
  %222 = icmp slt i64 %218, %221
  br i1 %222, label %249, label %223

223:                                              ; preds = %215
  %224 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %225 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %224, i32 0, i32 15
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %228 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %227, i32 0, i32 17
  %229 = load i64, i64* %228, align 8
  %230 = icmp sgt i64 %226, %229
  br i1 %230, label %249, label %231

231:                                              ; preds = %223
  %232 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %233 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %232, i32 0, i32 18
  %234 = load i64, i64* %233, align 8
  %235 = icmp slt i64 %234, 0
  br i1 %235, label %249, label %236

236:                                              ; preds = %231
  %237 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %238 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %237, i32 0, i32 18
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %241 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %240, i32 0, i32 19
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %239, %242
  %244 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %245 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = icmp sgt i64 %243, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %236, %231, %223, %215
  store i32 10, i32* %5, align 4
  br label %571

250:                                              ; preds = %236
  %251 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %252 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %251, i32 0, i32 20
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %255 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %254, i32 0, i32 16
  %256 = load i64, i64* %255, align 8
  %257 = icmp slt i64 %253, %256
  br i1 %257, label %288, label %258

258:                                              ; preds = %250
  %259 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %260 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %259, i32 0, i32 20
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %263 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %262, i32 0, i32 17
  %264 = load i64, i64* %263, align 8
  %265 = icmp sgt i64 %261, %264
  br i1 %265, label %288, label %266

266:                                              ; preds = %258
  %267 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %268 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %267, i32 0, i32 21
  %269 = load i32, i32* %268, align 8
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %288, label %271

271:                                              ; preds = %266
  %272 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %273 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %272, i32 0, i32 21
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %276 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 8
  %278 = srem i32 %274, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %288, label %280

280:                                              ; preds = %271
  %281 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %282 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %281, i32 0, i32 21
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %285 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 4
  %287 = icmp sgt i32 %283, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %280, %271, %266, %258, %250
  store i32 11, i32* %5, align 4
  br label %571

289:                                              ; preds = %280
  %290 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %291 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %290, i32 0, i32 22
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %294 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %293, i32 0, i32 16
  %295 = load i64, i64* %294, align 8
  %296 = icmp slt i64 %292, %295
  br i1 %296, label %323, label %297

297:                                              ; preds = %289
  %298 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %299 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %298, i32 0, i32 22
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %302 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %301, i32 0, i32 17
  %303 = load i64, i64* %302, align 8
  %304 = icmp sgt i64 %300, %303
  br i1 %304, label %323, label %305

305:                                              ; preds = %297
  %306 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %307 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %306, i32 0, i32 23
  %308 = load i64, i64* %307, align 8
  %309 = icmp slt i64 %308, 0
  br i1 %309, label %323, label %310

310:                                              ; preds = %305
  %311 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %312 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %311, i32 0, i32 23
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %315 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %314, i32 0, i32 24
  %316 = load i64, i64* %315, align 8
  %317 = add nsw i64 %313, %316
  %318 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %319 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %318, i32 0, i32 6
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %320 to i64
  %322 = icmp sgt i64 %317, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %310, %305, %297, %289
  store i32 12, i32* %5, align 4
  br label %571

324:                                              ; preds = %310
  %325 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %326 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %325, i32 0, i32 32
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %364

329:                                              ; preds = %324
  %330 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %331 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %330, i32 0, i32 25
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %334 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %333, i32 0, i32 16
  %335 = load i64, i64* %334, align 8
  %336 = icmp slt i64 %332, %335
  br i1 %336, label %363, label %337

337:                                              ; preds = %329
  %338 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %339 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %338, i32 0, i32 25
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %342 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %341, i32 0, i32 17
  %343 = load i64, i64* %342, align 8
  %344 = icmp sgt i64 %340, %343
  br i1 %344, label %363, label %345

345:                                              ; preds = %337
  %346 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %347 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %346, i32 0, i32 26
  %348 = load i64, i64* %347, align 8
  %349 = icmp slt i64 %348, 0
  br i1 %349, label %363, label %350

350:                                              ; preds = %345
  %351 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %352 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %351, i32 0, i32 26
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %355 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %354, i32 0, i32 27
  %356 = load i64, i64* %355, align 8
  %357 = add nsw i64 %353, %356
  %358 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %359 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %358, i32 0, i32 6
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  %362 = icmp sgt i64 %357, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %350, %345, %337, %329
  store i32 13, i32* %5, align 4
  br label %571

364:                                              ; preds = %350, %324
  %365 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %366 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %365, i32 0, i32 28
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %369 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %368, i32 0, i32 9
  %370 = load i64, i64* %369, align 8
  %371 = icmp slt i64 %367, %370
  br i1 %371, label %380, label %372

372:                                              ; preds = %364
  %373 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %374 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %373, i32 0, i32 28
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %377 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %376, i32 0, i32 8
  %378 = load i64, i64* %377, align 8
  %379 = icmp sge i64 %375, %378
  br i1 %379, label %380, label %381

380:                                              ; preds = %372, %364
  store i32 14, i32* %5, align 4
  br label %571

381:                                              ; preds = %372
  %382 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %383 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %382, i32 0, i32 31
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = icmp slt i64 %385, 0
  br i1 %386, label %398, label %387

387:                                              ; preds = %381
  %388 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %389 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %388, i32 0, i32 31
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %393 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %392, i32 0, i32 13
  %394 = load i32, i32* %393, align 4
  %395 = sub nsw i32 %394, 2
  %396 = sext i32 %395 to i64
  %397 = icmp sgt i64 %391, %396
  br i1 %397, label %398, label %399

398:                                              ; preds = %387, %381
  store i32 15, i32* %5, align 4
  br label %571

399:                                              ; preds = %387
  %400 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %401 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %400, i32 0, i32 31
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = icmp slt i64 %403, 0
  br i1 %404, label %416, label %405

405:                                              ; preds = %399
  %406 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %407 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %406, i32 0, i32 31
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 1
  %409 = load i64, i64* %408, align 8
  %410 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %411 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %410, i32 0, i32 13
  %412 = load i32, i32* %411, align 4
  %413 = sub nsw i32 %412, 1
  %414 = sext i32 %413 to i64
  %415 = icmp sgt i64 %409, %414
  br i1 %415, label %416, label %417

416:                                              ; preds = %405, %399
  store i32 16, i32* %5, align 4
  br label %571

417:                                              ; preds = %405
  %418 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %419 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %418, i32 0, i32 31
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 2
  %421 = load i64, i64* %420, align 8
  %422 = icmp slt i64 %421, 0
  br i1 %422, label %437, label %423

423:                                              ; preds = %417
  %424 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %425 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %424, i32 0, i32 31
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 2
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* %4, align 8
  %429 = icmp sgt i64 %427, %428
  br i1 %429, label %437, label %430

430:                                              ; preds = %423
  %431 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %432 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %431, i32 0, i32 31
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 2
  %434 = load i64, i64* %433, align 8
  %435 = and i64 %434, 7
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %430, %423, %417
  store i32 17, i32* %5, align 4
  br label %571

438:                                              ; preds = %430
  %439 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %440 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %439, i32 0, i32 31
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 8
  %443 = icmp slt i32 %442, 0
  br i1 %443, label %451, label %444

444:                                              ; preds = %438
  %445 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %446 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %445, i32 0, i32 31
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 3
  %448 = load i32, i32* %447, align 8
  %449 = and i32 %448, 7
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %444, %438
  store i32 18, i32* %5, align 4
  br label %571

452:                                              ; preds = %444
  %453 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %454 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %453, i32 0, i32 31
  %455 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %454, i32 0, i32 4
  %456 = load i32, i32* %455, align 4
  %457 = icmp slt i32 %456, 0
  br i1 %457, label %465, label %458

458:                                              ; preds = %452
  %459 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %460 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %459, i32 0, i32 31
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 4
  %462 = load i32, i32* %461, align 4
  %463 = and i32 %462, 7
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %458, %452
  store i32 19, i32* %5, align 4
  br label %571

466:                                              ; preds = %458
  %467 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %468 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %467, i32 0, i32 31
  %469 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %468, i32 0, i32 2
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %472 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %471, i32 0, i32 31
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 8
  %475 = sext i32 %474 to i64
  %476 = add nsw i64 %470, %475
  %477 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %478 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %477, i32 0, i32 31
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %478, i32 0, i32 4
  %480 = load i32, i32* %479, align 4
  %481 = sext i32 %480 to i64
  %482 = add nsw i64 %476, %481
  %483 = load i64, i64* %4, align 8
  %484 = icmp sgt i64 %482, %483
  br i1 %484, label %485, label %486

485:                                              ; preds = %466
  store i32 20, i32* %5, align 4
  br label %571

486:                                              ; preds = %466
  %487 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %488 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %487, i32 0, i32 31
  %489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %488, i32 0, i32 5
  %490 = load i64, i64* %489, align 8
  %491 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %492 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %491, i32 0, i32 31
  %493 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %492, i32 0, i32 6
  %494 = load i64, i64* %493, align 8
  %495 = add nsw i64 %490, %494
  %496 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %497 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %496, i32 0, i32 31
  %498 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i32 0, i32 4
  %499 = load i32, i32* %498, align 4
  %500 = sext i32 %499 to i64
  %501 = add nsw i64 %495, %500
  %502 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %503 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %502, i32 0, i32 14
  %504 = load i32, i32* %503, align 8
  %505 = sext i32 %504 to i64
  %506 = add nsw i64 %501, %505
  %507 = load i64, i64* %4, align 8
  %508 = icmp sgt i64 %506, %507
  br i1 %508, label %509, label %510

509:                                              ; preds = %486
  store i32 21, i32* %5, align 4
  br label %571

510:                                              ; preds = %486
  %511 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %512 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %511, i32 0, i32 31
  %513 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %512, i32 0, i32 5
  %514 = load i64, i64* %513, align 8
  %515 = icmp slt i64 %514, 0
  br i1 %515, label %539, label %516

516:                                              ; preds = %510
  %517 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %518 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %517, i32 0, i32 31
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 5
  %520 = load i64, i64* %519, align 8
  %521 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %522 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %521, i32 0, i32 31
  %523 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %522, i32 0, i32 2
  %524 = load i64, i64* %523, align 8
  %525 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %526 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %525, i32 0, i32 31
  %527 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %526, i32 0, i32 3
  %528 = load i32, i32* %527, align 8
  %529 = sext i32 %528 to i64
  %530 = add nsw i64 %524, %529
  %531 = icmp sgt i64 %520, %530
  br i1 %531, label %539, label %532

532:                                              ; preds = %516
  %533 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %534 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %533, i32 0, i32 31
  %535 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %534, i32 0, i32 5
  %536 = load i64, i64* %535, align 8
  %537 = and i64 %536, 7
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %540

539:                                              ; preds = %532, %516, %510
  store i32 22, i32* %5, align 4
  br label %571

540:                                              ; preds = %532
  %541 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %542 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %541, i32 0, i32 31
  %543 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %542, i32 0, i32 6
  %544 = load i64, i64* %543, align 8
  %545 = icmp slt i64 %544, 0
  br i1 %545, label %569, label %546

546:                                              ; preds = %540
  %547 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %548 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %547, i32 0, i32 31
  %549 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %548, i32 0, i32 6
  %550 = load i64, i64* %549, align 8
  %551 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %552 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %551, i32 0, i32 31
  %553 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %552, i32 0, i32 2
  %554 = load i64, i64* %553, align 8
  %555 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %556 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %555, i32 0, i32 31
  %557 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %556, i32 0, i32 3
  %558 = load i32, i32* %557, align 8
  %559 = sext i32 %558 to i64
  %560 = add nsw i64 %554, %559
  %561 = icmp sgt i64 %550, %560
  br i1 %561, label %569, label %562

562:                                              ; preds = %546
  %563 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %564 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %563, i32 0, i32 31
  %565 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %564, i32 0, i32 6
  %566 = load i64, i64* %565, align 8
  %567 = and i64 %566, 7
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %569, label %570

569:                                              ; preds = %562, %546, %540
  store i32 23, i32* %5, align 4
  br label %571

570:                                              ; preds = %562
  store i32 0, i32* %2, align 4
  br label %584

571:                                              ; preds = %569, %539, %509, %485, %465, %451, %437, %416, %398, %380, %363, %323, %288, %249, %214, %191, %146, %129, %102, %67, %27, %20, %11
  %572 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %573 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %572, i32 0, i32 30
  %574 = load i32, i32* %573, align 4
  %575 = load i32, i32* %5, align 4
  %576 = call i32 @ubifs_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %574, i32 %575)
  %577 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %578 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %579 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %578, i32 0, i32 29
  %580 = load i32, i32* %579, align 8
  %581 = call i32 @dbg_dump_node(%struct.ubifs_info* %577, i32 %580)
  %582 = load i32, i32* @EINVAL, align 4
  %583 = sub nsw i32 0, %582
  store i32 %583, i32* %2, align 4
  br label %584

584:                                              ; preds = %571, %570
  %585 = load i32, i32* %2, align 4
  ret i32 %585
}

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
