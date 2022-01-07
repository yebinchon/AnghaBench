; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_do_filldir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_do_filldir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64*, i32, %struct.file* }
%struct.file = type { i32, %struct.nfs_open_dir_context* }
%struct.nfs_open_dir_context = type { i32 }
%struct.nfs_cache_array = type { i32, i64, i64, %struct.nfs_cache_array_entry* }
%struct.nfs_cache_array_entry = type { i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@DIRCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"NFS: nfs_do_filldir() filling ended @ cookie %Lu; returning = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64 (i8*, i32, i32, i32, i32, i32)*)* @nfs_do_filldir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_do_filldir(%struct.TYPE_6__* %0, i8* %1, i64 (i8*, i32, i32, i32, i32, i32)* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64 (i8*, i32, i32, i32, i32, i32)*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_cache_array*, align 8
  %11 = alloca %struct.nfs_open_dir_context*, align 8
  %12 = alloca %struct.nfs_cache_array_entry*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 (i8*, i32, i32, i32, i32, i32)* %2, i64 (i8*, i32, i32, i32, i32, i32)** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.nfs_cache_array* null, %struct.nfs_cache_array** %10, align 8
  %16 = load %struct.file*, %struct.file** %7, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %17, align 8
  store %struct.nfs_open_dir_context* %18, %struct.nfs_open_dir_context** %11, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.nfs_cache_array* @nfs_readdir_get_array(i32 %21)
  store %struct.nfs_cache_array* %22, %struct.nfs_cache_array** %10, align 8
  %23 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %10, align 8
  %24 = call i64 @IS_ERR(%struct.nfs_cache_array* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %10, align 8
  %28 = call i32 @PTR_ERR(%struct.nfs_cache_array* %27)
  store i32 %28, i32* %9, align 4
  br label %127

29:                                               ; preds = %3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %111, %29
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %10, align 8
  %36 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %114

39:                                               ; preds = %33
  %40 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %10, align 8
  %41 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %40, i32 0, i32 3
  %42 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %42, i64 %44
  store %struct.nfs_cache_array_entry* %45, %struct.nfs_cache_array_entry** %12, align 8
  %46 = load i64 (i8*, i32, i32, i32, i32, i32)*, i64 (i8*, i32, i32, i32, i32, i32)** %6, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %12, align 8
  %49 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %12, align 8
  %53 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.file*, %struct.file** %7, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %12, align 8
  %60 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @nfs_compat_user_ino64(i32 %61)
  %63 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %12, align 8
  %64 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 %46(i8* %47, i32 %51, i32 %55, i32 %58, i32 %62, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %39
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %114

71:                                               ; preds = %39
  %72 = load %struct.file*, %struct.file** %7, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %10, align 8
  %78 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %71
  %83 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %10, align 8
  %84 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %83, i32 0, i32 3
  %85 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %85, i64 %88
  %90 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  store i64 %91, i64* %94, align 8
  br label %102

95:                                               ; preds = %71
  %96 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %10, align 8
  %97 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  store i64 %98, i64* %101, align 8
  br label %102

102:                                              ; preds = %95, %82
  %103 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %11, align 8
  %104 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %11, align 8
  %109 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %102
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %33

114:                                              ; preds = %68, %33
  %115 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %10, align 8
  %116 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %114
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @nfs_readdir_release_array(i32 %125)
  br label %127

127:                                              ; preds = %122, %26
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = call i32 @cache_page_release(%struct.TYPE_6__* %128)
  %130 = load i32, i32* @DIRCACHE, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @dfprintk(i32 %130, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %134, i32 %135)
  %137 = load i32, i32* %9, align 4
  ret i32 %137
}

declare dso_local %struct.nfs_cache_array* @nfs_readdir_get_array(i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_cache_array*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_cache_array*) #1

declare dso_local i32 @nfs_compat_user_ino64(i32) #1

declare dso_local i32 @nfs_readdir_release_array(i32) #1

declare dso_local i32 @cache_page_release(%struct.TYPE_6__*) #1

declare dso_local i32 @dfprintk(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
