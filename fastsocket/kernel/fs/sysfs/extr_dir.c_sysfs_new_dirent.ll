; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_new_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_new_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { i8*, i32, i32, i32, i32, i32 }

@SYSFS_COPY_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@sysfs_dir_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sysfs_dirent* @sysfs_new_dirent(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sysfs_dirent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sysfs_dirent*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @SYSFS_COPY_NAME, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kstrdup(i8* %15, i32 %16)
  store i8* %17, i8** %8, align 8
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %4, align 8
  br label %59

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i32, i32* @sysfs_dir_cachep, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sysfs_dirent* @kmem_cache_zalloc(i32 %23, i32 %24)
  store %struct.sysfs_dirent* %25, %struct.sysfs_dirent** %9, align 8
  %26 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %27 = icmp ne %struct.sysfs_dirent* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %56

29:                                               ; preds = %22
  %30 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %31 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %30, i32 0, i32 5
  %32 = call i64 @sysfs_alloc_ino(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %52

35:                                               ; preds = %29
  %36 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %37 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %36, i32 0, i32 4
  %38 = call i32 @atomic_set(i32* %37, i32 1)
  %39 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %40 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %39, i32 0, i32 3
  %41 = call i32 @atomic_set(i32* %40, i32 0)
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %44 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %47 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %50 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  store %struct.sysfs_dirent* %51, %struct.sysfs_dirent** %4, align 8
  br label %59

52:                                               ; preds = %34
  %53 = load i32, i32* @sysfs_dir_cachep, align 4
  %54 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %9, align 8
  %55 = call i32 @kmem_cache_free(i32 %53, %struct.sysfs_dirent* %54)
  br label %56

56:                                               ; preds = %52, %28
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @kfree(i8* %57)
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %4, align 8
  br label %59

59:                                               ; preds = %56, %35, %20
  %60 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  ret %struct.sysfs_dirent* %60
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local %struct.sysfs_dirent* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i64 @sysfs_alloc_ino(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.sysfs_dirent*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
