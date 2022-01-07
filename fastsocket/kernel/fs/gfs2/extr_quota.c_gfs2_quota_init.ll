; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_quota_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gfs2_inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_quota_change_host = type { i32, i64, i32 }
%struct.gfs2_quota_data = type { i32, i32, i32, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@GFS2_METATYPE_QC = common dso_local global i32 0, align 4
@GFS2_QCF_USER = common dso_local global i32 0, align 4
@QDF_CHANGE = common dso_local global i32 0, align 4
@qd_lru_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"found %u quota changes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_quota_init(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.gfs2_quota_change_host, align 8
  %17 = alloca %struct.gfs2_quota_data*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %19 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.gfs2_inode* @GFS2_I(i32 %20)
  store %struct.gfs2_inode* %21, %struct.gfs2_inode** %4, align 8
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %23 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %22, i32 0, i32 1
  %24 = call i32 @i_size_read(i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %27 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = lshr i32 %25, %29
  store i32 %30, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = icmp ugt i32 %34, 67108864
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %39 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36, %33, %1
  %46 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %47 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %46)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %251

50:                                               ; preds = %36
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %53 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul i32 %51, %54
  %56 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %57 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %59 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = mul nsw i32 8, %61
  %63 = call i32 @DIV_ROUND_UP(i32 %60, i32 %62)
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %65 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  %68 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %69 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @GFP_NOFS, align 4
  %72 = call i32* @kcalloc(i32 %70, i32 8, i32 %71)
  %73 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %74 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %73, i32 0, i32 5
  store i32* %72, i32** %74, align 8
  %75 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %76 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %50
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %2, align 4
  br label %251

81:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %108, %81
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %85 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ult i32 %83, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %82
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = load i32, i32* @GFP_NOFS, align 4
  %91 = call i32 @kzalloc(i32 %89, i32 %90)
  %92 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %93 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  %98 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %99 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %88
  br label %247

107:                                              ; preds = %88
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %82

111:                                              ; preds = %82
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %236, %111
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %239

116:                                              ; preds = %112
  %117 = load i64, i64* %11, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %116
  store i32 0, i32* %15, align 4
  %120 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %121 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %120, i32 0, i32 1
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @gfs2_extent_map(i32* %121, i32 %122, i32* %15, i32* %10, i64* %11)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %247

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %116
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %12, align 4
  %131 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %132 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i64, i64* %11, align 8
  %136 = call %struct.buffer_head* @gfs2_meta_ra(i32 %133, i32 %134, i64 %135)
  store %struct.buffer_head* %136, %struct.buffer_head** %13, align 8
  %137 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %138 = icmp ne %struct.buffer_head* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %128
  br label %247

140:                                              ; preds = %128
  %141 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %142 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %143 = load i32, i32* @GFS2_METATYPE_QC, align 4
  %144 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %141, %struct.buffer_head* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %148 = call i32 @brelse(%struct.buffer_head* %147)
  br label %247

149:                                              ; preds = %140
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %224, %149
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %153 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ult i32 %151, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %159 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ult i32 %157, %160
  br label %162

162:                                              ; preds = %156, %150
  %163 = phi i1 [ false, %150 ], [ %161, %156 ]
  br i1 %163, label %164, label %229

164:                                              ; preds = %162
  %165 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %166 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %167, 4
  %169 = load i32, i32* %14, align 4
  %170 = zext i32 %169 to i64
  %171 = mul i64 %170, 4
  %172 = add i64 %168, %171
  %173 = call i32 @gfs2_quota_change_in(%struct.gfs2_quota_change_host* %16, i64 %172)
  %174 = getelementptr inbounds %struct.gfs2_quota_change_host, %struct.gfs2_quota_change_host* %16, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %164
  br label %224

178:                                              ; preds = %164
  %179 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %180 = getelementptr inbounds %struct.gfs2_quota_change_host, %struct.gfs2_quota_change_host* %16, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @GFS2_QCF_USER, align 4
  %183 = and i32 %181, %182
  %184 = getelementptr inbounds %struct.gfs2_quota_change_host, %struct.gfs2_quota_change_host* %16, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @qd_alloc(%struct.gfs2_sbd* %179, i32 %183, i32 %185, %struct.gfs2_quota_data** %17)
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %12, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %178
  %190 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %191 = call i32 @brelse(%struct.buffer_head* %190)
  br label %247

192:                                              ; preds = %178
  %193 = load i32, i32* @QDF_CHANGE, align 4
  %194 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %17, align 8
  %195 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %194, i32 0, i32 4
  %196 = call i32 @set_bit(i32 %193, i32* %195)
  %197 = getelementptr inbounds %struct.gfs2_quota_change_host, %struct.gfs2_quota_change_host* %16, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %17, align 8
  %200 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %199, i32 0, i32 3
  store i64 %198, i64* %200, align 8
  %201 = load i32, i32* %8, align 4
  %202 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %17, align 8
  %203 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %17, align 8
  %205 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %204, i32 0, i32 1
  store i32 1, i32* %205, align 4
  %206 = call i32 @spin_lock(i32* @qd_lru_lock)
  %207 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %208 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %209 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %208, i32 0, i32 5
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @gfs2_icbit_munge(%struct.gfs2_sbd* %207, i32* %210, i32 %211, i32 1)
  %213 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %17, align 8
  %214 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %213, i32 0, i32 2
  %215 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %216 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %215, i32 0, i32 4
  %217 = call i32 @list_add(i32* %214, i32* %216)
  %218 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %219 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %218, i32 0, i32 3
  %220 = call i32 @atomic_inc(i32* %219)
  %221 = call i32 @spin_unlock(i32* @qd_lru_lock)
  %222 = load i32, i32* %9, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %224

224:                                              ; preds = %192, %177
  %225 = load i32, i32* %14, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %14, align 4
  %227 = load i32, i32* %8, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %8, align 4
  br label %150

229:                                              ; preds = %162
  %230 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %231 = call i32 @brelse(%struct.buffer_head* %230)
  %232 = load i32, i32* %10, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %10, align 4
  %234 = load i64, i64* %11, align 8
  %235 = add nsw i64 %234, -1
  store i64 %235, i64* %11, align 8
  br label %236

236:                                              ; preds = %229
  %237 = load i32, i32* %7, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %7, align 4
  br label %112

239:                                              ; preds = %112
  %240 = load i32, i32* %9, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %244 = load i32, i32* %9, align 4
  %245 = call i32 @fs_info(%struct.gfs2_sbd* %243, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %242, %239
  store i32 0, i32* %2, align 4
  br label %251

247:                                              ; preds = %189, %146, %139, %126, %106
  %248 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %249 = call i32 @gfs2_quota_cleanup(%struct.gfs2_sbd* %248)
  %250 = load i32, i32* %12, align 4
  store i32 %250, i32* %2, align 4
  br label %251

251:                                              ; preds = %247, %246, %79, %45
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @i_size_read(i32*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @gfs2_extent_map(i32*, i32, i32*, i32*, i64*) #1

declare dso_local %struct.buffer_head* @gfs2_meta_ra(i32, i32, i64) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_quota_change_in(%struct.gfs2_quota_change_host*, i64) #1

declare dso_local i32 @qd_alloc(%struct.gfs2_sbd*, i32, i32, %struct.gfs2_quota_data**) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gfs2_icbit_munge(%struct.gfs2_sbd*, i32*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @gfs2_quota_cleanup(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
