; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_access_get_cached.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_access_get_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.nfs_access_entry = type { i32, i32, i32, i32, i64 }
%struct.nfs_inode = type { i32, i32, i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACCESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.rpc_cred*, %struct.nfs_access_entry*)* @nfs_access_get_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_access_get_cached(%struct.inode* %0, %struct.rpc_cred* %1, %struct.nfs_access_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca %struct.nfs_access_entry*, align 8
  %8 = alloca %struct.nfs_inode*, align 8
  %9 = alloca %struct.nfs_access_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %6, align 8
  store %struct.nfs_access_entry* %2, %struct.nfs_access_entry** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.nfs_inode* @NFS_I(%struct.inode* %11)
  store %struct.nfs_inode* %12, %struct.nfs_inode** %8, align 8
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.nfs_inode*, %struct.nfs_inode** %8, align 8
  %19 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NFS_INO_INVALID_ACCESS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %93

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %28 = call %struct.nfs_access_entry* @nfs_access_search_rbtree(%struct.inode* %26, %struct.rpc_cred* %27)
  store %struct.nfs_access_entry* %28, %struct.nfs_access_entry** %9, align 8
  %29 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %9, align 8
  %30 = icmp eq %struct.nfs_access_entry* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %72

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i32 @nfs_have_delegated_attributes(%struct.inode* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @jiffies, align 4
  %38 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %9, align 8
  %39 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %9, align 8
  %42 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nfs_inode*, %struct.nfs_inode** %8, align 8
  %45 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = call i32 @time_in_range_open(i32 %37, i64 %40, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %36
  br label %77

51:                                               ; preds = %36, %32
  %52 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %9, align 8
  %53 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %7, align 8
  %56 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  %57 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %9, align 8
  %58 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %7, align 8
  %61 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %9, align 8
  %63 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %7, align 8
  %66 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %9, align 8
  %68 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %67, i32 0, i32 0
  %69 = load %struct.nfs_inode*, %struct.nfs_inode** %8, align 8
  %70 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %69, i32 0, i32 2
  %71 = call i32 @list_move_tail(i32* %68, i32* %70)
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %51, %31
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %101

77:                                               ; preds = %50
  %78 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %9, align 8
  %79 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %78, i32 0, i32 1
  %80 = load %struct.nfs_inode*, %struct.nfs_inode** %8, align 8
  %81 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %80, i32 0, i32 1
  %82 = call i32 @rb_erase(i32* %79, i32* %81)
  %83 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %9, align 8
  %84 = getelementptr inbounds %struct.nfs_access_entry, %struct.nfs_access_entry* %83, i32 0, i32 0
  %85 = call i32 @list_del(i32* %84)
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.nfs_access_entry*, %struct.nfs_access_entry** %9, align 8
  %90 = call i32 @nfs_access_free_entry(%struct.nfs_access_entry* %89)
  %91 = load i32, i32* @ENOENT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %101

93:                                               ; preds = %24
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = call i32 @nfs_access_zap_cache(%struct.inode* %97)
  %99 = load i32, i32* @ENOENT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %93, %77, %72
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs_access_entry* @nfs_access_search_rbtree(%struct.inode*, %struct.rpc_cred*) #1

declare dso_local i32 @nfs_have_delegated_attributes(%struct.inode*) #1

declare dso_local i32 @time_in_range_open(i32, i64, i64) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @nfs_access_free_entry(%struct.nfs_access_entry*) #1

declare dso_local i32 @nfs_access_zap_cache(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
