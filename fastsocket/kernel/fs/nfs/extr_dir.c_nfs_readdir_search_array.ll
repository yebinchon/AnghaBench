; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_search_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_search_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i32, i32, i32, i32 }
%struct.nfs_cache_array = type { i64, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @nfs_readdir_search_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir_search_array(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.nfs_cache_array*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.nfs_cache_array* @nfs_readdir_get_array(i32 %7)
  store %struct.nfs_cache_array* %8, %struct.nfs_cache_array** %3, align 8
  %9 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %3, align 8
  %10 = call i64 @IS_ERR(%struct.nfs_cache_array* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %3, align 8
  %14 = call i32 @PTR_ERR(%struct.nfs_cache_array* %13)
  store i32 %14, i32* %4, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %3, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = call i32 @nfs_readdir_search_for_pos(%struct.nfs_cache_array* %22, %struct.TYPE_5__* %23)
  store i32 %24, i32* %4, align 4
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %3, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = call i32 @nfs_readdir_search_for_cookie(%struct.nfs_cache_array* %26, %struct.TYPE_5__* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %3, align 8
  %36 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %3, align 8
  %41 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %34, %29
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @nfs_readdir_release_array(i32 %56)
  br label %58

58:                                               ; preds = %53, %12
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.nfs_cache_array* @nfs_readdir_get_array(i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_cache_array*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_cache_array*) #1

declare dso_local i32 @nfs_readdir_search_for_pos(%struct.nfs_cache_array*, %struct.TYPE_5__*) #1

declare dso_local i32 @nfs_readdir_search_for_cookie(%struct.nfs_cache_array*, %struct.TYPE_5__*) #1

declare dso_local i32 @nfs_readdir_release_array(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
