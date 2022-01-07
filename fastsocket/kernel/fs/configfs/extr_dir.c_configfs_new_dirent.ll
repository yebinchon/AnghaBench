; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_new_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_configfs_new_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_dirent = type { i32, i32, i32, i8*, i32, i32 }

@configfs_dir_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@configfs_dirent_lock = common dso_local global i32 0, align 4
@CONFIGFS_USET_DROPPING = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.configfs_dirent* (%struct.configfs_dirent*, i8*, i32)* @configfs_new_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.configfs_dirent* @configfs_new_dirent(%struct.configfs_dirent* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.configfs_dirent*, align 8
  %5 = alloca %struct.configfs_dirent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.configfs_dirent*, align 8
  store %struct.configfs_dirent* %0, %struct.configfs_dirent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @configfs_dir_cachep, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.configfs_dirent* @kmem_cache_zalloc(i32 %9, i32 %10)
  store %struct.configfs_dirent* %11, %struct.configfs_dirent** %8, align 8
  %12 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %13 = icmp ne %struct.configfs_dirent* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.configfs_dirent* @ERR_PTR(i32 %16)
  store %struct.configfs_dirent* %17, %struct.configfs_dirent** %4, align 8
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %20 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %19, i32 0, i32 5
  %21 = call i32 @atomic_set(i32* %20, i32 1)
  %22 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %23 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %22, i32 0, i32 4
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %26 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %25, i32 0, i32 1
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %30 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %33 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %35 = call i32 @configfs_init_dirent_depth(%struct.configfs_dirent* %34)
  %36 = call i32 @spin_lock(i32* @configfs_dirent_lock)
  %37 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %38 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CONFIGFS_USET_DROPPING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %18
  %44 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %45 = load i32, i32* @configfs_dir_cachep, align 4
  %46 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %47 = call i32 @kmem_cache_free(i32 %45, %struct.configfs_dirent* %46)
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.configfs_dirent* @ERR_PTR(i32 %49)
  store %struct.configfs_dirent* %50, %struct.configfs_dirent** %4, align 8
  br label %59

51:                                               ; preds = %18
  %52 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  %53 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %52, i32 0, i32 2
  %54 = load %struct.configfs_dirent*, %struct.configfs_dirent** %5, align 8
  %55 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %54, i32 0, i32 1
  %56 = call i32 @list_add(i32* %53, i32* %55)
  %57 = call i32 @spin_unlock(i32* @configfs_dirent_lock)
  %58 = load %struct.configfs_dirent*, %struct.configfs_dirent** %8, align 8
  store %struct.configfs_dirent* %58, %struct.configfs_dirent** %4, align 8
  br label %59

59:                                               ; preds = %51, %43, %14
  %60 = load %struct.configfs_dirent*, %struct.configfs_dirent** %4, align 8
  ret %struct.configfs_dirent* %60
}

declare dso_local %struct.configfs_dirent* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.configfs_dirent* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @configfs_init_dirent_depth(%struct.configfs_dirent*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.configfs_dirent*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
