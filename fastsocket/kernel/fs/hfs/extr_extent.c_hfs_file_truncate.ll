; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_extent.c_hfs_file_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_extent.c_hfs_file_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.address_space*, i32, %struct.super_block* }
%struct.address_space = type { i32 }
%struct.super_block = type { i32, i32 }
%struct.hfs_find_data = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32, i8*, i32, i32, i8*, i32, i8*, i8*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@DBG_INODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"truncate: %lu, %Lu -> %Lu\0A\00", align 1
@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HFS_FLG_EXT_DIRTY = common dso_local global i32 0, align 4
@HFS_FLG_EXT_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_file_truncate(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.hfs_find_data, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 3
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %3, align 8
  %17 = load i32, i32* @DBG_INODE, align 4
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dprint(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %25, i32 %28)
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.inode*, %struct.inode** %2, align 8
  %34 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %32, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %1
  %39 = load %struct.inode*, %struct.inode** %2, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load %struct.address_space*, %struct.address_space** %40, align 8
  store %struct.address_space* %41, %struct.address_space** %10, align 8
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load %struct.address_space*, %struct.address_space** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %50 = call i32 @pagecache_write_begin(i32* null, %struct.address_space* %46, i32 %48, i32 0, i32 %49, %struct.page** %12, i8** %11)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %38
  %54 = load %struct.address_space*, %struct.address_space** %10, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  %57 = load %struct.page*, %struct.page** %12, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @pagecache_write_end(i32* null, %struct.address_space* %54, i32 %56, i32 0, i32 0, %struct.page* %57, i8* %58)
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %53, %38
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.inode*, %struct.inode** %2, align 8
  %65 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.inode*, %struct.inode** %2, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %63, %60
  br label %255

71:                                               ; preds = %1
  %72 = load %struct.inode*, %struct.inode** %2, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.inode*, %struct.inode** %2, align 8
  %76 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %74, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %255

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.inode*, %struct.inode** %2, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.super_block*, %struct.super_block** %3, align 8
  %87 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %86)
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %85, %89
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.super_block*, %struct.super_block** %3, align 8
  %94 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %93)
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %92, %96
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  store i8* %99, i8** %5, align 8
  %100 = load %struct.inode*, %struct.inode** %2, align 8
  %101 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %6, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = icmp eq i8* %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %82
  br label %221

108:                                              ; preds = %82
  %109 = load %struct.inode*, %struct.inode** %2, align 8
  %110 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %109)
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  %112 = call i32 @mutex_lock(i32* %111)
  %113 = load %struct.super_block*, %struct.super_block** %3, align 8
  %114 = call %struct.TYPE_3__* @HFS_SB(%struct.super_block* %113)
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @hfs_find_init(i32 %116, %struct.hfs_find_data* %4)
  br label %118

118:                                              ; preds = %108, %193
  %119 = load i8*, i8** %6, align 8
  %120 = load %struct.inode*, %struct.inode** %2, align 8
  %121 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = icmp eq i8* %119, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %118
  %126 = load %struct.super_block*, %struct.super_block** %3, align 8
  %127 = load %struct.inode*, %struct.inode** %2, align 8
  %128 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = load i8*, i8** %6, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = inttoptr i64 %136 to i8*
  %138 = call i32 @hfs_free_extents(%struct.super_block* %126, i32 %130, i8* %131, i8* %137)
  %139 = load %struct.inode*, %struct.inode** %2, align 8
  %140 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %139)
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @hfs_dump_extent(i32 %142)
  %144 = load i8*, i8** %5, align 8
  %145 = load %struct.inode*, %struct.inode** %2, align 8
  %146 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  store i8* %144, i8** %147, align 8
  br label %211

148:                                              ; preds = %118
  %149 = load %struct.inode*, %struct.inode** %2, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = call i32 @__hfs_ext_cache_extent(%struct.hfs_find_data* %4, %struct.inode* %149, i8* %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %211

155:                                              ; preds = %148
  %156 = load %struct.inode*, %struct.inode** %2, align 8
  %157 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %156)
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 7
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %7, align 8
  %160 = load %struct.super_block*, %struct.super_block** %3, align 8
  %161 = load %struct.inode*, %struct.inode** %2, align 8
  %162 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %161)
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = ptrtoint i8* %165 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = inttoptr i64 %169 to i8*
  %171 = load i8*, i8** %6, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = inttoptr i64 %175 to i8*
  %177 = call i32 @hfs_free_extents(%struct.super_block* %160, i32 %164, i8* %170, i8* %176)
  %178 = load %struct.inode*, %struct.inode** %2, align 8
  %179 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %178)
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @hfs_dump_extent(i32 %181)
  %183 = load i8*, i8** %5, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = icmp ugt i8* %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %155
  %187 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %188 = load %struct.inode*, %struct.inode** %2, align 8
  %189 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %188)
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %187
  store i32 %192, i32* %190, align 8
  br label %211

193:                                              ; preds = %155
  %194 = load i8*, i8** %7, align 8
  store i8* %194, i8** %6, align 8
  %195 = load %struct.inode*, %struct.inode** %2, align 8
  %196 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %195)
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 6
  store i8* null, i8** %197, align 8
  %198 = load %struct.inode*, %struct.inode** %2, align 8
  %199 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %198)
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 7
  store i8* null, i8** %200, align 8
  %201 = load i32, i32* @HFS_FLG_EXT_DIRTY, align 4
  %202 = load i32, i32* @HFS_FLG_EXT_NEW, align 4
  %203 = or i32 %201, %202
  %204 = xor i32 %203, -1
  %205 = load %struct.inode*, %struct.inode** %2, align 8
  %206 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %205)
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, %204
  store i32 %209, i32* %207, align 8
  %210 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %4)
  br label %118

211:                                              ; preds = %186, %154, %125
  %212 = call i32 @hfs_find_exit(%struct.hfs_find_data* %4)
  %213 = load %struct.inode*, %struct.inode** %2, align 8
  %214 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %213)
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 5
  %216 = call i32 @mutex_unlock(i32* %215)
  %217 = load i8*, i8** %5, align 8
  %218 = load %struct.inode*, %struct.inode** %2, align 8
  %219 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %218)
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 4
  store i8* %217, i8** %220, align 8
  br label %221

221:                                              ; preds = %211, %107
  %222 = load %struct.inode*, %struct.inode** %2, align 8
  %223 = getelementptr inbounds %struct.inode, %struct.inode* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.inode*, %struct.inode** %2, align 8
  %226 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %225)
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 8
  %228 = load %struct.inode*, %struct.inode** %2, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.super_block*, %struct.super_block** %3, align 8
  %232 = getelementptr inbounds %struct.super_block, %struct.super_block* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %230, %233
  %235 = sub nsw i32 %234, 1
  %236 = load %struct.super_block*, %struct.super_block** %3, align 8
  %237 = getelementptr inbounds %struct.super_block, %struct.super_block* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = ashr i32 %235, %238
  %240 = load %struct.inode*, %struct.inode** %2, align 8
  %241 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %240)
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 3
  store i32 %239, i32* %242, align 4
  %243 = load %struct.inode*, %struct.inode** %2, align 8
  %244 = load %struct.inode*, %struct.inode** %2, align 8
  %245 = call %struct.TYPE_4__* @HFS_I(%struct.inode* %244)
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.super_block*, %struct.super_block** %3, align 8
  %249 = getelementptr inbounds %struct.super_block, %struct.super_block* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = shl i32 %247, %250
  %252 = call i32 @inode_set_bytes(%struct.inode* %243, i32 %251)
  %253 = load %struct.inode*, %struct.inode** %2, align 8
  %254 = call i32 @mark_inode_dirty(%struct.inode* %253)
  br label %255

255:                                              ; preds = %221, %80, %70
  ret void
}

declare dso_local i32 @dprint(i32, i8*, i32, i64, i32) #1

declare dso_local %struct.TYPE_4__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @pagecache_write_begin(i32*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**) #1

declare dso_local i32 @pagecache_write_end(i32*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local %struct.TYPE_3__* @HFS_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i32 @hfs_free_extents(%struct.super_block*, i32, i8*, i8*) #1

declare dso_local i32 @hfs_dump_extent(i32) #1

declare dso_local i32 @__hfs_ext_cache_extent(%struct.hfs_find_data*, %struct.inode*, i8*) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @inode_set_bytes(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
