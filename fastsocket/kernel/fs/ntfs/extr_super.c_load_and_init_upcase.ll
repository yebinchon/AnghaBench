; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_super.c_load_and_init_upcase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_super.c_load_and_init_upcase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Entering.\00", align 1
@FILE_UpCase = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@UCHAR_T_SIZE_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Read %llu bytes from $UpCase (expected %zu bytes).\00", align 1
@ntfs_lock = common dso_local global i32 0, align 4
@default_upcase = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"Using volume specified $UpCase since default is not present.\00", align 1
@default_upcase_len = common dso_local global i8* null, align 8
@ntfs_nr_upcase_users = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Volume specified $UpCase matches default. Using default.\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"Using volume specified $UpCase since it does not match the default.\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Failed to load $UpCase from the volume. Using default.\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to initialize upcase table.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @load_and_init_upcase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_and_init_upcase(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %5, align 8
  %16 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = load i32, i32* @FILE_UpCase, align 4
  %19 = call %struct.page* @ntfs_iget(%struct.super_block* %17, i32 %18)
  %20 = bitcast %struct.page* %19 to %struct.inode*
  store %struct.inode* %20, %struct.inode** %6, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = bitcast %struct.inode* %21 to %struct.page*
  %23 = call i64 @IS_ERR(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = bitcast %struct.inode* %26 to %struct.page*
  %28 = call i64 @is_bad_inode(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25, %1
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = bitcast %struct.inode* %31 to %struct.page*
  %33 = call i64 @IS_ERR(%struct.page* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = bitcast %struct.inode* %36 to %struct.page*
  %38 = call i32 @iput(%struct.page* %37)
  br label %39

39:                                               ; preds = %35, %30
  br label %202

40:                                               ; preds = %25
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = bitcast %struct.inode* %41 to %struct.page*
  %43 = call i32 @i_size_read(%struct.page* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = and i64 %48, 7
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ugt i64 %53, 524288
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %46, %40
  br label %192

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @ntfs_malloc_nofs(i32 %57)
  %59 = inttoptr i64 %58 to i64*
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i64* %59, i64** %61, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %192

67:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %70 = ashr i32 %68, %69
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %87, %67
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %115, %76
  %78 = load %struct.inode*, %struct.inode** %6, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call %struct.page* @ntfs_map_page(i32 %80, i32 %81)
  store %struct.page* %82, %struct.page** %7, align 8
  %83 = load %struct.page*, %struct.page** %7, align 8
  %84 = call i64 @IS_ERR(%struct.page* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %192

87:                                               ; preds = %77
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = bitcast i64* %90 to i8*
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %95 = shl i32 %92, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %91, i64 %96
  %98 = load %struct.page*, %struct.page** %7, align 8
  %99 = call i32 @page_address(%struct.page* %98)
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @memcpy(i8* %97, i32 %99, i32 %100)
  %102 = load %struct.page*, %struct.page** %7, align 8
  %103 = call i32 @ntfs_unmap_page(%struct.page* %102)
  br label %72

104:                                              ; preds = %72
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %77

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %104
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @UCHAR_T_SIZE_BITS, align 4
  %120 = ashr i32 %118, %119
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %123, i64 524288)
  %125 = load %struct.inode*, %struct.inode** %6, align 8
  %126 = bitcast %struct.inode* %125 to %struct.page*
  %127 = call i32 @iput(%struct.page* %126)
  %128 = call i32 @mutex_lock(i32* @ntfs_lock)
  %129 = load i64*, i64** @default_upcase, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %117
  %132 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %133 = call i32 @mutex_unlock(i32* @ntfs_lock)
  store i32 1, i32* %2, align 4
  br label %223

134:                                              ; preds = %117
  %135 = load i8*, i8** @default_upcase_len, align 8
  %136 = ptrtoint i8* %135 to i32
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %137, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %142, %134
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %167, %146
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %170

151:                                              ; preds = %147
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** @default_upcase, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %158, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %151
  br label %170

166:                                              ; preds = %151
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %147

170:                                              ; preds = %165, %147
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %170
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  %178 = call i32 @ntfs_free(i64* %177)
  %179 = load i64*, i64** @default_upcase, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i64* %179, i64** %181, align 8
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* @ntfs_nr_upcase_users, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* @ntfs_nr_upcase_users, align 4
  %187 = call i32 @mutex_unlock(i32* @ntfs_lock)
  %188 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %223

189:                                              ; preds = %170
  %190 = call i32 @mutex_unlock(i32* @ntfs_lock)
  %191 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %223

192:                                              ; preds = %86, %66, %55
  %193 = load %struct.inode*, %struct.inode** %6, align 8
  %194 = bitcast %struct.inode* %193 to %struct.page*
  %195 = call i32 @iput(%struct.page* %194)
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = call i32 @ntfs_free(i64* %198)
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  store i64* null, i64** %201, align 8
  br label %202

202:                                              ; preds = %192, %39
  %203 = call i32 @mutex_lock(i32* @ntfs_lock)
  %204 = load i64*, i64** @default_upcase, align 8
  %205 = icmp ne i64* %204, null
  br i1 %205, label %206, label %219

206:                                              ; preds = %202
  %207 = load i64*, i64** @default_upcase, align 8
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  store i64* %207, i64** %209, align 8
  %210 = load i8*, i8** @default_upcase_len, align 8
  %211 = ptrtoint i8* %210 to i32
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 8
  %214 = load i32, i32* @ntfs_nr_upcase_users, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* @ntfs_nr_upcase_users, align 4
  %216 = call i32 @mutex_unlock(i32* @ntfs_lock)
  %217 = load %struct.super_block*, %struct.super_block** %5, align 8
  %218 = call i32 @ntfs_error(%struct.super_block* %217, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %223

219:                                              ; preds = %202
  %220 = call i32 @mutex_unlock(i32* @ntfs_lock)
  %221 = load %struct.super_block*, %struct.super_block** %5, align 8
  %222 = call i32 @ntfs_error(%struct.super_block* %221, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %223

223:                                              ; preds = %219, %206, %189, %174, %131
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local %struct.page* @ntfs_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @is_bad_inode(%struct.page*) #1

declare dso_local i32 @iput(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.page*) #1

declare dso_local i64 @ntfs_malloc_nofs(i32) #1

declare dso_local %struct.page* @ntfs_map_page(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @ntfs_unmap_page(%struct.page*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ntfs_free(i64*) #1

declare dso_local i32 @ntfs_error(%struct.super_block*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
