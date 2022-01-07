; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_wbuf_write_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_io.c_ubifs_wbuf_write_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_wbuf = type { i64, i32, i32, i32, i8*, i32 (%struct.ubifs_info*, i64, i32, i32)*, i32, i64, i32, i32, i32, %struct.ubifs_info.0* }
%struct.ubifs_info = type opaque
%struct.ubifs_info.0 = type { i64, i32, i32, i32, i32, i64 }
%struct.ubifs_ch = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"%d bytes (%s) to jhead %s wbuf at LEB %d:%d\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"flush jhead %s wbuf to LEB %d:%d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"write %d bytes to LEB %d:%d\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"cannot write %d bytes to LEB %d:%d, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_wbuf_write_nolock(%struct.ubifs_wbuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_wbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info.0*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ubifs_wbuf* %0, %struct.ubifs_wbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %16 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %15, i32 0, i32 11
  %17 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %16, align 8
  store %struct.ubifs_info.0* %17, %struct.ubifs_info.0** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ALIGN(i32 %18, i32 8)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.ubifs_ch*
  %23 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dbg_ntype(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %28 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dbg_jhead(i32 %29)
  %31 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %32 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %35 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %38 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = call i32 (i8*, i32, i64, i32, ...) @dbg_io(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %26, i32 %30, i64 %33, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %3
  %45 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %46 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %51 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %54 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br label %57

57:                                               ; preds = %49, %44, %3
  %58 = phi i1 [ false, %44 ], [ false, %3 ], [ %56, %49 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @ubifs_assert(i32 %59)
  %61 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %62 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %67 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %70 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = srem i32 %68, %71
  %73 = icmp eq i32 %72, 0
  br label %74

74:                                               ; preds = %65, %57
  %75 = phi i1 [ false, %57 ], [ %73, %65 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @ubifs_assert(i32 %76)
  %78 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %79 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 7
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %74
  %84 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %85 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %88 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %86, %89
  br label %91

91:                                               ; preds = %83, %74
  %92 = phi i1 [ false, %74 ], [ %90, %83 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @ubifs_assert(i32 %93)
  %95 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %96 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %91
  %100 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %101 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %104 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp sle i32 %102, %105
  br label %107

107:                                              ; preds = %99, %91
  %108 = phi i1 [ false, %91 ], [ %106, %99 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @ubifs_assert(i32 %109)
  %111 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %112 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %111, i32 0, i32 10
  %113 = call i32 @mutex_is_locked(i32* %112)
  %114 = call i32 @ubifs_assert(i32 %113)
  %115 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %116 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %119 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %117, %120
  %122 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %123 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %121, %124
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %107
  %129 = load i32, i32* @ENOSPC, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %9, align 4
  br label %433

131:                                              ; preds = %107
  %132 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %133 = call i32 @cancel_wbuf_timer_nolock(%struct.ubifs_wbuf* %132)
  %134 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %135 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* @EROFS, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %453

141:                                              ; preds = %131
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %144 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = icmp sle i32 %142, %145
  br i1 %146, label %147, label %239

147:                                              ; preds = %141
  %148 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %149 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %148, i32 0, i32 4
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %152 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr i8, i8* %150, i64 %154
  %156 = load i8*, i8** %6, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @memcpy(i8* %155, i8* %156, i32 %157)
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %161 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %159, %162
  br i1 %163, label %164, label %221

164:                                              ; preds = %147
  %165 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %166 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @dbg_jhead(i32 %167)
  %169 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %170 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %173 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i8*, i32, i64, i32, ...) @dbg_io(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %168, i64 %171, i32 %174)
  %176 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %177 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %180 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %183 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %182, i32 0, i32 4
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %186 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %189 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %192 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @ubi_leb_write(i32 %178, i64 %181, i8* %184, i32 %187, i32 %190, i32 %193)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %164
  br label %433

198:                                              ; preds = %164
  %199 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %200 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %199, i32 0, i32 6
  %201 = call i32 @spin_lock(i32* %200)
  %202 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %203 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %206 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, %204
  store i32 %208, i32* %206, align 8
  %209 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %210 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %213 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 8
  %214 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %215 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %214, i32 0, i32 2
  store i32 0, i32* %215, align 4
  %216 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %217 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %216, i32 0, i32 7
  store i64 0, i64* %217, align 8
  %218 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %219 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %218, i32 0, i32 6
  %220 = call i32 @spin_unlock(i32* %219)
  br label %238

221:                                              ; preds = %147
  %222 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %223 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %222, i32 0, i32 6
  %224 = call i32 @spin_lock(i32* %223)
  %225 = load i32, i32* %12, align 4
  %226 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %227 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = sub nsw i32 %228, %225
  store i32 %229, i32* %227, align 8
  %230 = load i32, i32* %12, align 4
  %231 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %232 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, %230
  store i32 %234, i32* %232, align 4
  %235 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %236 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %235, i32 0, i32 6
  %237 = call i32 @spin_unlock(i32* %236)
  br label %238

238:                                              ; preds = %221, %198
  br label %393

239:                                              ; preds = %141
  %240 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %241 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @dbg_jhead(i32 %242)
  %244 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %245 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %248 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i8*, i32, i64, i32, ...) @dbg_io(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %243, i64 %246, i32 %249)
  %251 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %252 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %251, i32 0, i32 4
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %255 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr i8, i8* %253, i64 %257
  %259 = load i8*, i8** %6, align 8
  %260 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %261 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @memcpy(i8* %258, i8* %259, i32 %262)
  %264 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %265 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %268 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %271 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %270, i32 0, i32 4
  %272 = load i8*, i8** %271, align 8
  %273 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %274 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %277 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %280 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %279, i32 0, i32 8
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @ubi_leb_write(i32 %266, i64 %269, i8* %272, i32 %275, i32 %278, i32 %281)
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %9, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %239
  br label %433

286:                                              ; preds = %239
  %287 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %288 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %291 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = add nsw i32 %289, %292
  store i32 %293, i32* %13, align 4
  %294 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %295 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* %7, align 4
  %298 = sub nsw i32 %297, %296
  store i32 %298, i32* %7, align 4
  %299 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %300 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* %12, align 4
  %303 = sub nsw i32 %302, %301
  store i32 %303, i32* %12, align 4
  %304 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %305 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  store i32 %306, i32* %10, align 4
  %307 = load i32, i32* %12, align 4
  %308 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %309 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 8
  %311 = ashr i32 %307, %310
  store i32 %311, i32* %11, align 4
  %312 = load i32, i32* %11, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %358

314:                                              ; preds = %286
  %315 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %316 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* %11, align 4
  %319 = shl i32 %318, %317
  store i32 %319, i32* %11, align 4
  %320 = load i32, i32* %11, align 4
  %321 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %322 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i32, i32* %13, align 4
  %325 = call i32 (i8*, i32, i64, i32, ...) @dbg_io(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %320, i64 %323, i32 %324)
  %326 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %327 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %330 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i8*, i8** %6, align 8
  %333 = load i32, i32* %10, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr i8, i8* %332, i64 %334
  %336 = load i32, i32* %13, align 4
  %337 = load i32, i32* %11, align 4
  %338 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %339 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %338, i32 0, i32 8
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @ubi_leb_write(i32 %328, i64 %331, i8* %335, i32 %336, i32 %337, i32 %340)
  store i32 %341, i32* %9, align 4
  %342 = load i32, i32* %9, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %314
  br label %433

345:                                              ; preds = %314
  %346 = load i32, i32* %11, align 4
  %347 = load i32, i32* %13, align 4
  %348 = add nsw i32 %347, %346
  store i32 %348, i32* %13, align 4
  %349 = load i32, i32* %11, align 4
  %350 = load i32, i32* %12, align 4
  %351 = sub nsw i32 %350, %349
  store i32 %351, i32* %12, align 4
  %352 = load i32, i32* %11, align 4
  %353 = load i32, i32* %7, align 4
  %354 = sub nsw i32 %353, %352
  store i32 %354, i32* %7, align 4
  %355 = load i32, i32* %11, align 4
  %356 = load i32, i32* %10, align 4
  %357 = add nsw i32 %356, %355
  store i32 %357, i32* %10, align 4
  br label %358

358:                                              ; preds = %345, %286
  %359 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %360 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %359, i32 0, i32 6
  %361 = call i32 @spin_lock(i32* %360)
  %362 = load i32, i32* %12, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %374

364:                                              ; preds = %358
  %365 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %366 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %365, i32 0, i32 4
  %367 = load i8*, i8** %366, align 8
  %368 = load i8*, i8** %6, align 8
  %369 = load i32, i32* %10, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr i8, i8* %368, i64 %370
  %372 = load i32, i32* %7, align 4
  %373 = call i32 @memcpy(i8* %367, i8* %371, i32 %372)
  br label %374

374:                                              ; preds = %364, %358
  %375 = load i32, i32* %13, align 4
  %376 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %377 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %376, i32 0, i32 1
  store i32 %375, i32* %377, align 8
  %378 = load i32, i32* %12, align 4
  %379 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %380 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %379, i32 0, i32 2
  store i32 %378, i32* %380, align 4
  %381 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %382 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* %12, align 4
  %385 = sub nsw i32 %383, %384
  %386 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %387 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %386, i32 0, i32 3
  store i32 %385, i32* %387, align 8
  %388 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %389 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %388, i32 0, i32 7
  store i64 0, i64* %389, align 8
  %390 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %391 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %390, i32 0, i32 6
  %392 = call i32 @spin_unlock(i32* %391)
  br label %393

393:                                              ; preds = %374, %238
  %394 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %395 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %394, i32 0, i32 5
  %396 = load i32 (%struct.ubifs_info*, i64, i32, i32)*, i32 (%struct.ubifs_info*, i64, i32, i32)** %395, align 8
  %397 = icmp ne i32 (%struct.ubifs_info*, i64, i32, i32)* %396, null
  br i1 %397, label %398, label %424

398:                                              ; preds = %393
  %399 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %400 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %403 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 8
  %405 = sub nsw i32 %401, %404
  %406 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %407 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 4
  %409 = sub nsw i32 %405, %408
  store i32 %409, i32* %14, align 4
  %410 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %411 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %410, i32 0, i32 5
  %412 = load i32 (%struct.ubifs_info*, i64, i32, i32)*, i32 (%struct.ubifs_info*, i64, i32, i32)** %411, align 8
  %413 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %414 = bitcast %struct.ubifs_info.0* %413 to %struct.ubifs_info*
  %415 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %416 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load i32, i32* %14, align 4
  %419 = call i32 %412(%struct.ubifs_info* %414, i64 %417, i32 %418, i32 0)
  store i32 %419, i32* %9, align 4
  %420 = load i32, i32* %9, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %398
  br label %433

423:                                              ; preds = %398
  br label %424

424:                                              ; preds = %423, %393
  %425 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %426 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %424
  %430 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %431 = call i32 @new_wbuf_timer_nolock(%struct.ubifs_wbuf* %430)
  br label %432

432:                                              ; preds = %429, %424
  store i32 0, i32* %4, align 4
  br label %453

433:                                              ; preds = %422, %344, %285, %197, %128
  %434 = load i32, i32* %7, align 4
  %435 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %436 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %439 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* %9, align 4
  %442 = call i32 @ubifs_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %434, i64 %437, i32 %440, i32 %441)
  %443 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %444 = load i8*, i8** %6, align 8
  %445 = call i32 @dbg_dump_node(%struct.ubifs_info.0* %443, i8* %444)
  %446 = call i32 (...) @dbg_dump_stack()
  %447 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %448 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %449 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = call i32 @dbg_dump_leb(%struct.ubifs_info.0* %447, i64 %450)
  %452 = load i32, i32* %9, align 4
  store i32 %452, i32* %4, align 4
  br label %453

453:                                              ; preds = %433, %432, %138
  %454 = load i32, i32* %4, align 4
  ret i32 %454
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dbg_io(i8*, i32, i64, i32, ...) #1

declare dso_local i32 @dbg_ntype(i32) #1

declare dso_local i32 @dbg_jhead(i32) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @cancel_wbuf_timer_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ubi_leb_write(i32, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @new_wbuf_timer_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @ubifs_err(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info.0*, i8*) #1

declare dso_local i32 @dbg_dump_stack(...) #1

declare dso_local i32 @dbg_dump_leb(%struct.ubifs_info.0*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
