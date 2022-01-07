; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_init_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_init_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_file = type { i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.inode = type { i32 }

@file_slab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@current_fileid = common dso_local global i32 0, align 4
@recall_lock = common dso_local global i32 0, align 4
@file_hashtbl = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_file* (%struct.inode*)* @alloc_init_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_file* @alloc_init_file(%struct.inode* %0) #0 {
  %2 = alloca %struct.nfs4_file*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs4_file*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call i32 @file_hashval(%struct.inode* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @file_slab, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nfs4_file* @kmem_cache_alloc(i32 %8, i32 %9)
  store %struct.nfs4_file* %10, %struct.nfs4_file** %4, align 8
  %11 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %12 = icmp ne %struct.nfs4_file* %11, null
  br i1 %12, label %13, label %55

13:                                               ; preds = %1
  %14 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %15 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %14, i32 0, i32 8
  %16 = call i32 @atomic_set(i32* %15, i32 1)
  %17 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %18 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %21 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %20, i32 0, i32 7
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %24 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %23, i32 0, i32 6
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call i32 @igrab(%struct.inode* %26)
  %28 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %29 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @current_fileid, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @current_fileid, align 4
  %32 = sext i32 %30 to i64
  %33 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %34 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %33, i32 0, i32 4
  store i64 %32, i64* %34, align 8
  %35 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %36 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %38 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memset(i32 %39, i32 0, i32 4)
  %41 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %42 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @memset(i32 %43, i32 0, i32 4)
  %45 = call i32 @spin_lock(i32* @recall_lock)
  %46 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  %47 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %46, i32 0, i32 1
  %48 = load i32*, i32** @file_hashtbl, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @list_add(i32* %47, i32* %51)
  %53 = call i32 @spin_unlock(i32* @recall_lock)
  %54 = load %struct.nfs4_file*, %struct.nfs4_file** %4, align 8
  store %struct.nfs4_file* %54, %struct.nfs4_file** %2, align 8
  br label %56

55:                                               ; preds = %1
  store %struct.nfs4_file* null, %struct.nfs4_file** %2, align 8
  br label %56

56:                                               ; preds = %55, %13
  %57 = load %struct.nfs4_file*, %struct.nfs4_file** %2, align 8
  ret %struct.nfs4_file* %57
}

declare dso_local i32 @file_hashval(%struct.inode*) #1

declare dso_local %struct.nfs4_file* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
