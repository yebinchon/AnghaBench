; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_nilfs_search_super_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_nilfs_search_super_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i64, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i64 }
%struct.nilfs_sb_info = type { i32 }
%struct.nilfs_recovery_info = type { i8*, %struct.TYPE_2__, i32, i64, i64, i64, i8*, i8*, i8*, i8*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.nilfs_segsum_info = type { i64, i64, i32 }

@segments = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_IO = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_CONSISTENCY = common dso_local global i32 0, align 4
@NILFS_RECOVERY_SR_UPDATED = common dso_local global i32 0, align 4
@NILFS_VALID_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_search_super_root(%struct.the_nilfs* %0, %struct.nilfs_sb_info* %1, %struct.nilfs_recovery_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.nilfs_sb_info*, align 8
  %7 = alloca %struct.nilfs_recovery_info*, align 8
  %8 = alloca %struct.nilfs_segsum_info, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %5, align 8
  store %struct.nilfs_sb_info* %1, %struct.nilfs_sb_info** %6, align 8
  store %struct.nilfs_recovery_info* %2, %struct.nilfs_recovery_info** %7, align 8
  store i64 0, i64* %11, align 8
  store i8* null, i8** %16, align 8
  %21 = load i32, i32* @segments, align 4
  %22 = call i32 @LIST_HEAD(i32 %21)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %23 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %24 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %27 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %26, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %14, align 8
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %30 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %17, align 8
  %32 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i8* @nilfs_get_segnum_of_block(%struct.the_nilfs* %32, i64 %33)
  store i8* %34, i8** %15, align 8
  %35 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = call i32 @nilfs_get_segment_range(%struct.the_nilfs* %35, i8* %36, i64* %12, i64* %13)
  br label %38

38:                                               ; preds = %201, %182, %172, %3
  %39 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = call i32 @load_segment_summary(%struct.nilfs_sb_info* %39, i64 %40, i8* %41, %struct.nilfs_segsum_info* %8, i32 1)
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* @NILFS_SEG_FAIL_IO, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %228

50:                                               ; preds = %45
  br label %184

51:                                               ; preds = %38
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.nilfs_segsum_info, %struct.nilfs_segsum_info* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %52, %54
  %56 = sub nsw i64 %55, 1
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp sgt i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* @NILFS_SEG_FAIL_CONSISTENCY, align 4
  store i32 %64, i32* %20, align 4
  br label %184

65:                                               ; preds = %51
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %68 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %67, i32 0, i32 10
  store i64 %66, i64* %68, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %71 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %70, i32 0, i32 9
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %74 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %73, i32 0, i32 8
  store i8* %72, i8** %74, align 8
  %75 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %76 = getelementptr inbounds %struct.nilfs_segsum_info, %struct.nilfs_segsum_info* %8, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @nilfs_get_segnum_of_block(%struct.the_nilfs* %75, i64 %77)
  store i8* %78, i8** %16, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %81 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %80, i32 0, i32 7
  store i8* %79, i8** %81, align 8
  store i32 0, i32* %18, align 4
  %82 = call i32 @NILFS_SEG_HAS_SR(%struct.nilfs_segsum_info* %8)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %112, label %84

84:                                               ; preds = %65
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @NILFS_SEG_FAIL_CONSISTENCY, align 4
  store i32 %88, i32* %20, align 4
  br label %228

89:                                               ; preds = %84
  %90 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %91 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = call i64 @NILFS_SEG_LOGBGN(%struct.nilfs_segsum_info* %8)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %100 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %99, i32 0, i32 4
  store i64 %98, i64* %100, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %103 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %102, i32 0, i32 6
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %97, %94, %89
  %105 = call i64 @NILFS_SEG_LOGEND(%struct.nilfs_segsum_info* %8)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %110 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %109, i32 0, i32 3
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %107, %104
  br label %174

112:                                              ; preds = %65
  %113 = load i8*, i8** %17, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %17, align 8
  %115 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %116 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %115, i32 0, i32 0
  store i8* %113, i8** %116, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %119 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %118, i32 0, i32 5
  store i64 %117, i64* %119, align 8
  %120 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %121 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %123 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %122, i32 0, i32 4
  store i64 0, i64* %123, align 8
  %124 = call i32 @nilfs_dispose_segment_list(i32* @segments)
  %125 = load i64, i64* %9, align 8
  store i64 %125, i64* %11, align 8
  %126 = getelementptr inbounds %struct.nilfs_segsum_info, %struct.nilfs_segsum_info* %8, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %125, %127
  %129 = load i64, i64* %12, align 8
  %130 = sub nsw i64 %128, %129
  %131 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %132 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %131, i32 0, i32 9
  store i64 %130, i64* %132, align 8
  %133 = load i8*, i8** %14, align 8
  %134 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %135 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %138 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %137, i32 0, i32 8
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** %17, align 8
  %140 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %141 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %140, i32 0, i32 7
  store i8* %139, i8** %141, align 8
  %142 = getelementptr inbounds %struct.nilfs_segsum_info, %struct.nilfs_segsum_info* %8, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %145 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 8
  %146 = load i8*, i8** %16, align 8
  %147 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %148 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %147, i32 0, i32 5
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %19, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %112
  %152 = load i32, i32* @NILFS_RECOVERY_SR_UPDATED, align 4
  %153 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %154 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  br label %164

155:                                              ; preds = %112
  %156 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %157 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @NILFS_VALID_FS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %209

163:                                              ; preds = %155
  store i32 1, i32* %19, align 4
  br label %164

164:                                              ; preds = %163, %151
  %165 = getelementptr inbounds %struct.nilfs_segsum_info, %struct.nilfs_segsum_info* %8, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %9, align 8
  %168 = add nsw i64 %167, %166
  store i64 %168, i64* %9, align 8
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* %13, align 8
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  br label %38

173:                                              ; preds = %164
  br label %189

174:                                              ; preds = %111
  %175 = getelementptr inbounds %struct.nilfs_segsum_info, %struct.nilfs_segsum_info* %8, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %9, align 8
  %178 = add nsw i64 %177, %176
  store i64 %178, i64* %9, align 8
  %179 = load i64, i64* %9, align 8
  %180 = load i64, i64* %13, align 8
  %181 = icmp slt i64 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %38

183:                                              ; preds = %174
  br label %189

184:                                              ; preds = %63, %50
  %185 = load i32, i32* %19, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %184
  br label %228

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %188, %183, %173
  %190 = load i32, i32* %18, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %18, align 4
  %192 = icmp ne i32 %190, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  br label %209

194:                                              ; preds = %189
  %195 = load i8*, i8** %15, align 8
  %196 = call i32 @nilfs_segment_list_add(i32* @segments, i8* %195)
  store i32 %196, i32* %20, align 4
  %197 = load i32, i32* %20, align 4
  %198 = call i64 @unlikely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  br label %228

201:                                              ; preds = %194
  %202 = load i8*, i8** %14, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %14, align 8
  %204 = load i8*, i8** %16, align 8
  store i8* %204, i8** %15, align 8
  %205 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %206 = load i8*, i8** %15, align 8
  %207 = call i32 @nilfs_get_segment_range(%struct.the_nilfs* %205, i8* %206, i64* %12, i64* %13)
  %208 = load i64, i64* %12, align 8
  store i64 %208, i64* %9, align 8
  br label %38

209:                                              ; preds = %193, %162
  %210 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %211 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @list_splice(i32* @segments, i32 %213)
  %215 = load i64, i64* %11, align 8
  %216 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %217 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %216, i32 0, i32 0
  store i64 %215, i64* %217, align 8
  %218 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %219 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %218, i32 0, i32 3
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %222 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %221, i32 0, i32 4
  store i8* %220, i8** %222, align 8
  %223 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %7, align 8
  %224 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %227 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %226, i32 0, i32 2
  store i8* %225, i8** %227, align 8
  store i32 0, i32* %4, align 4
  br label %239

228:                                              ; preds = %200, %187, %87, %49
  %229 = call i32 @nilfs_dispose_segment_list(i32* @segments)
  %230 = load i32, i32* %20, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = load i32, i32* %20, align 4
  br label %237

234:                                              ; preds = %228
  %235 = load i32, i32* %20, align 4
  %236 = call i32 @nilfs_warn_segment_error(i32 %235)
  br label %237

237:                                              ; preds = %234, %232
  %238 = phi i32 [ %233, %232 ], [ %236, %234 ]
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %237, %209
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i8* @nilfs_get_segnum_of_block(%struct.the_nilfs*, i64) #1

declare dso_local i32 @nilfs_get_segment_range(%struct.the_nilfs*, i8*, i64*, i64*) #1

declare dso_local i32 @load_segment_summary(%struct.nilfs_sb_info*, i64, i8*, %struct.nilfs_segsum_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NILFS_SEG_HAS_SR(%struct.nilfs_segsum_info*) #1

declare dso_local i64 @NILFS_SEG_LOGBGN(%struct.nilfs_segsum_info*) #1

declare dso_local i64 @NILFS_SEG_LOGEND(%struct.nilfs_segsum_info*) #1

declare dso_local i32 @nilfs_dispose_segment_list(i32*) #1

declare dso_local i32 @nilfs_segment_list_add(i32*, i8*) #1

declare dso_local i32 @list_splice(i32*, i32) #1

declare dso_local i32 @nilfs_warn_segment_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
