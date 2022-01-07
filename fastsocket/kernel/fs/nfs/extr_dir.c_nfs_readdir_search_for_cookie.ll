; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_search_for_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_search_for_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_cache_array = type { i32, i64, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_12__ = type { i64*, i64, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_18__*, %struct.nfs_open_dir_context*, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.nfs_open_dir_context = type { i64, i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.nfs_inode = type { i64, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ATTR = common dso_local global i32 0, align 4
@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [121 x i8] c"NFS: directory %s/%s contains a readdir loop.Please contact your server vendor.  The file: %s has duplicate cookie %llu\0A\00", align 1
@ELOOP = common dso_local global i32 0, align 4
@EBADCOOKIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_cache_array*, %struct.TYPE_12__*)* @nfs_readdir_search_for_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir_search_for_cookie(%struct.nfs_cache_array* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_cache_array*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_inode*, align 8
  %10 = alloca %struct.nfs_open_dir_context*, align 8
  store %struct.nfs_cache_array* %0, %struct.nfs_cache_array** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %159, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %16 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %162

19:                                               ; preds = %13
  %20 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %20, i32 0, i32 3
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %158

33:                                               ; preds = %19
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.nfs_inode* @NFS_I(i32 %41)
  store %struct.nfs_inode* %42, %struct.nfs_inode** %9, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 2
  %47 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %46, align 8
  store %struct.nfs_open_dir_context* %47, %struct.nfs_open_dir_context** %10, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  store i64 %53, i64* %7, align 8
  %54 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %55 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %58 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %33
  %62 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %63 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %66 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %61, %33
  %71 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %72 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %71, i32 0, i32 1
  store i32 0, i32* %72, align 8
  %73 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %74 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %77 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %149

78:                                               ; preds = %61
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %79, %84
  br i1 %85, label %86, label %148

86:                                               ; preds = %78
  %87 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %88 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %139

91:                                               ; preds = %86
  %92 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %93 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %94, %98
  br i1 %99, label %100, label %139

100:                                              ; preds = %91
  %101 = call i64 (...) @printk_ratelimit()
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %136

103:                                              ; preds = %100
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %123 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %122, i32 0, i32 3
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @pr_notice(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %121, i32 %130, i64 %134)
  br label %136

136:                                              ; preds = %103, %100
  %137 = load i32, i32* @ELOOP, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %8, align 4
  br label %183

139:                                              ; preds = %91, %86
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %145 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %144, i32 0, i32 2
  store i64 %143, i64* %145, align 8
  %146 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %147 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %146, i32 0, i32 1
  store i32 -1, i32* %147, align 8
  br label %148

148:                                              ; preds = %139, %78
  br label %149

149:                                              ; preds = %148, %70
  %150 = load i64, i64* %7, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  store i64 %150, i64* %154, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  store i32 0, i32* %3, align 4
  br label %185

158:                                              ; preds = %19
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %13

162:                                              ; preds = %13
  %163 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %164 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp sge i64 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %162
  %168 = load i32, i32* @EBADCOOKIE, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %8, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %175 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %173, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %167
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 3
  store i32 1, i32* %180, align 4
  br label %181

181:                                              ; preds = %178, %167
  br label %182

182:                                              ; preds = %181, %162
  br label %183

183:                                              ; preds = %182, %136
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %183, %149
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local %struct.nfs_inode* @NFS_I(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
