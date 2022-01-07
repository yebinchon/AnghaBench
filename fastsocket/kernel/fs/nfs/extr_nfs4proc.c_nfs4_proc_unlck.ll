; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_unlck.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_unlck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state = type { i32, %struct.nfs4_state_owner*, %struct.inode* }
%struct.nfs4_state_owner = type { i32 }
%struct.inode = type { i32 }
%struct.file_lock = type { i8, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nfs4_lock_state* }
%struct.nfs4_lock_state = type { i32 }
%struct.nfs_inode = type { i32 }
%struct.nfs_seqid = type { i32 }
%struct.rpc_task = type { i32 }

@FL_EXISTS = common dso_local global i8 0, align 1
@ENOENT = common dso_local global i32 0, align 4
@NFS_DELEGATED_STATE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_state*, i32, %struct.file_lock*)* @nfs4_proc_unlck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_unlck(%struct.nfs4_state* %0, i32 %1, %struct.file_lock* %2) #0 {
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nfs4_state_owner*, align 8
  %9 = alloca %struct.nfs_inode*, align 8
  %10 = alloca %struct.nfs_seqid*, align 8
  %11 = alloca %struct.nfs4_lock_state*, align 8
  %12 = alloca %struct.rpc_task*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store %struct.nfs4_state* %0, %struct.nfs4_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file_lock* %2, %struct.file_lock** %6, align 8
  %15 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %15, i32 0, i32 2
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %7, align 8
  %18 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %19 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %18, i32 0, i32 1
  %20 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %19, align 8
  store %struct.nfs4_state_owner* %20, %struct.nfs4_state_owner** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call %struct.nfs_inode* @NFS_I(%struct.inode* %21)
  store %struct.nfs_inode* %22, %struct.nfs_inode** %9, align 8
  store i32 0, i32* %13, align 4
  %23 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %24 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 8
  store i8 %25, i8* %14, align 1
  %26 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %27 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %28 = call i32 @nfs4_set_lock_state(%struct.nfs4_state* %26, %struct.file_lock* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i8, i8* @FL_EXISTS, align 1
  %30 = zext i8 %29 to i32
  %31 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %32 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %30
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 8
  %37 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %38 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %41 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %40, i32 0, i32 0
  %42 = call i32 @down_read(i32* %41)
  %43 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %44 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %47 = call i32 @do_vfs_lock(i32 %45, %struct.file_lock* %46)
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %3
  %52 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %53 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %52, i32 0, i32 0
  %54 = call i32 @up_read(i32* %53)
  %55 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %56 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %110

58:                                               ; preds = %3
  %59 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %60 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %59, i32 0, i32 0
  %61 = call i32 @up_read(i32* %60)
  %62 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %8, align 8
  %63 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %110

68:                                               ; preds = %58
  %69 = load i32, i32* @NFS_DELEGATED_STATE, align 4
  %70 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %71 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %70, i32 0, i32 0
  %72 = call i64 @test_bit(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %110

75:                                               ; preds = %68
  %76 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %77 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %79, align 8
  store %struct.nfs4_lock_state* %80, %struct.nfs4_lock_state** %11, align 8
  %81 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %11, align 8
  %82 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %81, i32 0, i32 0
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call %struct.nfs_seqid* @nfs_alloc_seqid(i32* %82, i32 %83)
  store %struct.nfs_seqid* %84, %struct.nfs_seqid** %10, align 8
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  %87 = load %struct.nfs_seqid*, %struct.nfs_seqid** %10, align 8
  %88 = icmp eq %struct.nfs_seqid* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %110

90:                                               ; preds = %75
  %91 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %92 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %93 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @nfs_file_open_context(i32 %94)
  %96 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %11, align 8
  %97 = load %struct.nfs_seqid*, %struct.nfs_seqid** %10, align 8
  %98 = call %struct.rpc_task* @nfs4_do_unlck(%struct.file_lock* %91, i32 %95, %struct.nfs4_lock_state* %96, %struct.nfs_seqid* %97)
  store %struct.rpc_task* %98, %struct.rpc_task** %12, align 8
  %99 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %100 = call i32 @PTR_ERR(%struct.rpc_task* %99)
  store i32 %100, i32* %13, align 4
  %101 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %102 = call i64 @IS_ERR(%struct.rpc_task* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %90
  br label %110

105:                                              ; preds = %90
  %106 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %107 = call i32 @nfs4_wait_for_completion_rpc_task(%struct.rpc_task* %106)
  store i32 %107, i32* %13, align 4
  %108 = load %struct.rpc_task*, %struct.rpc_task** %12, align 8
  %109 = call i32 @rpc_put_task(%struct.rpc_task* %108)
  br label %110

110:                                              ; preds = %105, %104, %89, %74, %67, %51
  %111 = load i8, i8* %14, align 1
  %112 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %113 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %112, i32 0, i32 0
  store i8 %111, i8* %113, align 8
  %114 = load i32, i32* %13, align 4
  ret i32 %114
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs4_set_lock_state(%struct.nfs4_state*, %struct.file_lock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @do_vfs_lock(i32, %struct.file_lock*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.nfs_seqid* @nfs_alloc_seqid(i32*, i32) #1

declare dso_local %struct.rpc_task* @nfs4_do_unlck(%struct.file_lock*, i32, %struct.nfs4_lock_state*, %struct.nfs_seqid*) #1

declare dso_local i32 @nfs_file_open_context(i32) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_task*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_task*) #1

declare dso_local i32 @nfs4_wait_for_completion_rpc_task(%struct.rpc_task*) #1

declare dso_local i32 @rpc_put_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
