; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c___get_metapage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_metapage.c___get_metapage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.metapage = type { i32, i32, i64, i64, i64, i32, i64, %struct.page* }
%struct.page = type { i32 }
%struct.inode = type { i32, i64, i32, %struct.address_space*, i32 }
%struct.address_space = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.address_space* }

@.str = private unnamed_addr constant [50 x i8] c"__get_metapage: ino = %ld, lblock = 0x%lx, abs=%d\00", align 1
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"MetaData crosses page boundary!!\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"lblock = %lx, size  = %d\00", align 1
@PSIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"grab_cache_page failed!\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"read_mapping_page failed!\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"__get_metapage: mp->logical_size != size\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"logical_size = %d, size = %d\00", align 1
@META_discard = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"__get_metapage: using a discarded metapage\00", align 1
@mpStat = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@COMMIT_PAGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"zeroing mp = 0x%p\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"__get_metapage: returning = 0x%p data = 0x%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.metapage* @__get_metapage(%struct.inode* %0, i64 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.metapage*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.address_space*, align 8
  %15 = alloca %struct.metapage*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store %struct.metapage* null, %struct.metapage** %15, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.metapage*
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 (i8*, %struct.metapage*, ...) @jfs_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.metapage* %23, i64 %24, i32 %25)
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %31 = load i32, i32* %13, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = lshr i64 %33, %35
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %17, align 8
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 %38, %40
  %42 = sub i64 %37, %41
  %43 = load i32, i32* %13, align 4
  %44 = zext i32 %43 to i64
  %45 = shl i64 %42, %44
  store i64 %45, i64* %18, align 8
  %46 = load i64, i64* %18, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %5
  %53 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %54, i32 %55)
  %57 = call i32 (...) @dump_stack()
  store %struct.metapage* null, %struct.metapage** %6, align 8
  br label %234

58:                                               ; preds = %5
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_6__* @JFS_SBI(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.address_space*, %struct.address_space** %68, align 8
  store %struct.address_space* %69, %struct.address_space** %14, align 8
  br label %86

70:                                               ; preds = %58
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = zext i32 %74 to i64
  %76 = shl i64 %71, %75
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp uge i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  store %struct.metapage* null, %struct.metapage** %6, align 8
  br label %234

82:                                               ; preds = %70
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 3
  %85 = load %struct.address_space*, %struct.address_space** %84, align 8
  store %struct.address_space* %85, %struct.address_space** %14, align 8
  br label %86

86:                                               ; preds = %82, %61
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load i64, i64* @PSIZE, align 8
  %91 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load %struct.address_space*, %struct.address_space** %14, align 8
  %95 = load i64, i64* %17, align 8
  %96 = call %struct.page* @grab_cache_page(%struct.address_space* %94, i64 %95)
  store %struct.page* %96, %struct.page** %16, align 8
  %97 = load %struct.page*, %struct.page** %16, align 8
  %98 = icmp ne %struct.page* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store %struct.metapage* null, %struct.metapage** %6, align 8
  br label %234

101:                                              ; preds = %93
  %102 = load %struct.page*, %struct.page** %16, align 8
  %103 = call i32 @SetPageUptodate(%struct.page* %102)
  br label %120

104:                                              ; preds = %89, %86
  %105 = load %struct.address_space*, %struct.address_space** %14, align 8
  %106 = load i64, i64* %17, align 8
  %107 = call %struct.page* @read_mapping_page(%struct.address_space* %105, i64 %106, i32* null)
  store %struct.page* %107, %struct.page** %16, align 8
  %108 = load %struct.page*, %struct.page** %16, align 8
  %109 = call i64 @IS_ERR(%struct.page* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %104
  %112 = load %struct.page*, %struct.page** %16, align 8
  %113 = call i32 @PageUptodate(%struct.page* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111, %104
  %116 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store %struct.metapage* null, %struct.metapage** %6, align 8
  br label %234

117:                                              ; preds = %111
  %118 = load %struct.page*, %struct.page** %16, align 8
  %119 = call i32 @lock_page(%struct.page* %118)
  br label %120

120:                                              ; preds = %117, %101
  %121 = load %struct.page*, %struct.page** %16, align 8
  %122 = load i64, i64* %18, align 8
  %123 = call %struct.metapage* @page_to_mp(%struct.page* %121, i64 %122)
  store %struct.metapage* %123, %struct.metapage** %15, align 8
  %124 = load %struct.metapage*, %struct.metapage** %15, align 8
  %125 = icmp ne %struct.metapage* %124, null
  br i1 %125, label %126, label %171

126:                                              ; preds = %120
  %127 = load %struct.metapage*, %struct.metapage** %15, align 8
  %128 = getelementptr inbounds %struct.metapage, %struct.metapage* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %126
  %133 = load %struct.inode*, %struct.inode** %7, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @jfs_error(i32 %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %137 = load %struct.metapage*, %struct.metapage** %15, align 8
  %138 = getelementptr inbounds %struct.metapage, %struct.metapage* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %139, i32 %140)
  %142 = call i32 (...) @dump_stack()
  br label %231

143:                                              ; preds = %126
  %144 = load %struct.metapage*, %struct.metapage** %15, align 8
  %145 = getelementptr inbounds %struct.metapage, %struct.metapage* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = load %struct.metapage*, %struct.metapage** %15, align 8
  %149 = call i32 @lock_metapage(%struct.metapage* %148)
  %150 = load i32, i32* @META_discard, align 4
  %151 = load %struct.metapage*, %struct.metapage** %15, align 8
  %152 = getelementptr inbounds %struct.metapage, %struct.metapage* %151, i32 0, i32 6
  %153 = call i64 @test_bit(i32 %150, i64* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %143
  %156 = load i64, i64* %11, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %155
  %159 = load %struct.inode*, %struct.inode** %7, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @jfs_error(i32 %161, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %163 = load %struct.metapage*, %struct.metapage** %15, align 8
  %164 = call i32 @discard_metapage(%struct.metapage* %163)
  br label %231

165:                                              ; preds = %155
  %166 = load i32, i32* @META_discard, align 4
  %167 = load %struct.metapage*, %struct.metapage** %15, align 8
  %168 = getelementptr inbounds %struct.metapage, %struct.metapage* %167, i32 0, i32 6
  %169 = call i32 @clear_bit(i32 %166, i64* %168)
  br label %170

170:                                              ; preds = %165, %143
  br label %211

171:                                              ; preds = %120
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mpStat, i32 0, i32 0), align 4
  %173 = call i32 @INCREMENT(i32 %172)
  %174 = load i32, i32* @GFP_NOFS, align 4
  %175 = call %struct.metapage* @alloc_metapage(i32 %174)
  store %struct.metapage* %175, %struct.metapage** %15, align 8
  %176 = load %struct.page*, %struct.page** %16, align 8
  %177 = load %struct.metapage*, %struct.metapage** %15, align 8
  %178 = getelementptr inbounds %struct.metapage, %struct.metapage* %177, i32 0, i32 7
  store %struct.page* %176, %struct.page** %178, align 8
  %179 = load %struct.metapage*, %struct.metapage** %15, align 8
  %180 = getelementptr inbounds %struct.metapage, %struct.metapage* %179, i32 0, i32 6
  store i64 0, i64* %180, align 8
  %181 = load i32, i32* @COMMIT_PAGE, align 4
  %182 = load %struct.metapage*, %struct.metapage** %15, align 8
  %183 = getelementptr inbounds %struct.metapage, %struct.metapage* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 8
  %184 = load %struct.metapage*, %struct.metapage** %15, align 8
  %185 = getelementptr inbounds %struct.metapage, %struct.metapage* %184, i32 0, i32 1
  store i32 1, i32* %185, align 4
  %186 = load %struct.metapage*, %struct.metapage** %15, align 8
  %187 = getelementptr inbounds %struct.metapage, %struct.metapage* %186, i32 0, i32 4
  store i64 0, i64* %187, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.metapage*, %struct.metapage** %15, align 8
  %190 = getelementptr inbounds %struct.metapage, %struct.metapage* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.page*, %struct.page** %16, align 8
  %192 = call i64 @page_address(%struct.page* %191)
  %193 = load i64, i64* %18, align 8
  %194 = add i64 %192, %193
  %195 = load %struct.metapage*, %struct.metapage** %15, align 8
  %196 = getelementptr inbounds %struct.metapage, %struct.metapage* %195, i32 0, i32 3
  store i64 %194, i64* %196, align 8
  %197 = load i64, i64* %8, align 8
  %198 = load %struct.metapage*, %struct.metapage** %15, align 8
  %199 = getelementptr inbounds %struct.metapage, %struct.metapage* %198, i32 0, i32 2
  store i64 %197, i64* %199, align 8
  %200 = load %struct.page*, %struct.page** %16, align 8
  %201 = load %struct.metapage*, %struct.metapage** %15, align 8
  %202 = call i32 @insert_metapage(%struct.page* %200, %struct.metapage* %201)
  %203 = call i64 @unlikely(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %171
  %206 = load %struct.metapage*, %struct.metapage** %15, align 8
  %207 = call i32 @free_metapage(%struct.metapage* %206)
  br label %231

208:                                              ; preds = %171
  %209 = load %struct.metapage*, %struct.metapage** %15, align 8
  %210 = call i32 @lock_metapage(%struct.metapage* %209)
  br label %211

211:                                              ; preds = %208, %170
  %212 = load i64, i64* %11, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %211
  %215 = load %struct.metapage*, %struct.metapage** %15, align 8
  %216 = call i32 (i8*, %struct.metapage*, ...) @jfs_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), %struct.metapage* %215)
  %217 = load %struct.metapage*, %struct.metapage** %15, align 8
  %218 = getelementptr inbounds %struct.metapage, %struct.metapage* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @PSIZE, align 8
  %221 = call i32 @memset(i64 %219, i32 0, i64 %220)
  br label %222

222:                                              ; preds = %214, %211
  %223 = load %struct.page*, %struct.page** %16, align 8
  %224 = call i32 @unlock_page(%struct.page* %223)
  %225 = load %struct.metapage*, %struct.metapage** %15, align 8
  %226 = load %struct.metapage*, %struct.metapage** %15, align 8
  %227 = getelementptr inbounds %struct.metapage, %struct.metapage* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = call i32 (i8*, %struct.metapage*, ...) @jfs_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), %struct.metapage* %225, i64 %228)
  %230 = load %struct.metapage*, %struct.metapage** %15, align 8
  store %struct.metapage* %230, %struct.metapage** %6, align 8
  br label %234

231:                                              ; preds = %205, %158, %132
  %232 = load %struct.page*, %struct.page** %16, align 8
  %233 = call i32 @unlock_page(%struct.page* %232)
  store %struct.metapage* null, %struct.metapage** %6, align 8
  br label %234

234:                                              ; preds = %231, %222, %115, %99, %81, %52
  %235 = load %struct.metapage*, %struct.metapage** %6, align 8
  ret %struct.metapage* %235
}

declare dso_local i32 @jfs_info(i8*, %struct.metapage*, ...) #1

declare dso_local i32 @jfs_err(i8*, ...) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local %struct.TYPE_6__* @JFS_SBI(i32) #1

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i64) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i64, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local %struct.metapage* @page_to_mp(%struct.page*, i64) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @lock_metapage(%struct.metapage*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @discard_metapage(%struct.metapage*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @INCREMENT(i32) #1

declare dso_local %struct.metapage* @alloc_metapage(i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @insert_metapage(%struct.page*, %struct.metapage*) #1

declare dso_local i32 @free_metapage(%struct.metapage*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
