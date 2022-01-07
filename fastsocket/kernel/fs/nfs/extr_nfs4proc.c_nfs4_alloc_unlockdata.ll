; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_alloc_unlockdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_alloc_unlockdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_unlockdata = type { i32, i32, i32, %struct.nfs4_lock_state*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, %struct.nfs_seqid*, i32*, i32 }
%struct.TYPE_5__ = type { %struct.nfs_seqid* }
%struct.file_lock = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.nfs4_lock_state = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_seqid = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_unlockdata* (%struct.file_lock*, %struct.nfs_open_context*, %struct.nfs4_lock_state*, %struct.nfs_seqid*)* @nfs4_alloc_unlockdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_unlockdata* @nfs4_alloc_unlockdata(%struct.file_lock* %0, %struct.nfs_open_context* %1, %struct.nfs4_lock_state* %2, %struct.nfs_seqid* %3) #0 {
  %5 = alloca %struct.nfs4_unlockdata*, align 8
  %6 = alloca %struct.file_lock*, align 8
  %7 = alloca %struct.nfs_open_context*, align 8
  %8 = alloca %struct.nfs4_lock_state*, align 8
  %9 = alloca %struct.nfs_seqid*, align 8
  %10 = alloca %struct.nfs4_unlockdata*, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %6, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %7, align 8
  store %struct.nfs4_lock_state* %2, %struct.nfs4_lock_state** %8, align 8
  store %struct.nfs_seqid* %3, %struct.nfs_seqid** %9, align 8
  %12 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %13 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %11, align 8
  %17 = load i32, i32* @GFP_NOFS, align 4
  %18 = call %struct.nfs4_unlockdata* @kzalloc(i32 64, i32 %17)
  store %struct.nfs4_unlockdata* %18, %struct.nfs4_unlockdata** %10, align 8
  %19 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %20 = icmp eq %struct.nfs4_unlockdata* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store %struct.nfs4_unlockdata* null, %struct.nfs4_unlockdata** %5, align 8
  br label %65

22:                                               ; preds = %4
  %23 = load %struct.inode*, %struct.inode** %11, align 8
  %24 = call i32 @NFS_FH(%struct.inode* %23)
  %25 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %26 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 8
  %28 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %29 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %28, i32 0, i32 1
  %30 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %31 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  store i32* %29, i32** %32, align 8
  %33 = load %struct.nfs_seqid*, %struct.nfs_seqid** %9, align 8
  %34 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %35 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store %struct.nfs_seqid* %33, %struct.nfs_seqid** %36, align 8
  %37 = load %struct.nfs_seqid*, %struct.nfs_seqid** %9, align 8
  %38 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %39 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store %struct.nfs_seqid* %37, %struct.nfs_seqid** %40, align 8
  %41 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %42 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %41, i32 0, i32 1
  %43 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %44 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32* %42, i32** %45, align 8
  %46 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %47 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %48 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %47, i32 0, i32 3
  store %struct.nfs4_lock_state* %46, %struct.nfs4_lock_state** %48, align 8
  %49 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %8, align 8
  %50 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %49, i32 0, i32 0
  %51 = call i32 @atomic_inc(i32* %50)
  %52 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %53 = call i32 @get_nfs_open_context(%struct.nfs_open_context* %52)
  %54 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %55 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %57 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %56, i32 0, i32 1
  %58 = load %struct.file_lock*, %struct.file_lock** %6, align 8
  %59 = call i32 @memcpy(i32* %57, %struct.file_lock* %58, i32 4)
  %60 = load %struct.inode*, %struct.inode** %11, align 8
  %61 = call i32 @NFS_SERVER(%struct.inode* %60)
  %62 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  %63 = getelementptr inbounds %struct.nfs4_unlockdata, %struct.nfs4_unlockdata* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %10, align 8
  store %struct.nfs4_unlockdata* %64, %struct.nfs4_unlockdata** %5, align 8
  br label %65

65:                                               ; preds = %22, %21
  %66 = load %struct.nfs4_unlockdata*, %struct.nfs4_unlockdata** %5, align 8
  ret %struct.nfs4_unlockdata* %66
}

declare dso_local %struct.nfs4_unlockdata* @kzalloc(i32, i32) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @get_nfs_open_context(%struct.nfs_open_context*) #1

declare dso_local i32 @memcpy(i32*, %struct.file_lock*, i32) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
