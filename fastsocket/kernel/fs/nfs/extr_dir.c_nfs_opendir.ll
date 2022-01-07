; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_opendir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_opendir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_12__, %struct.rpc_cred* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.nfs_open_dir_context = type opaque

@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"NFS: open dir(%s/%s)\0A\00", align 1
@NFSIOS_VFSOPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @nfs_opendir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_opendir(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_open_dir_context*, align 8
  %8 = alloca %struct.rpc_cred*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @FILE, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dfprintk(i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %25)
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load i32, i32* @NFSIOS_VFSOPEN, align 4
  %29 = call i32 @nfs_inc_stats(%struct.inode* %27, i32 %28)
  %30 = call %struct.rpc_cred* (...) @rpc_lookup_cred()
  store %struct.rpc_cred* %30, %struct.rpc_cred** %8, align 8
  %31 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  %32 = call i64 @IS_ERR(%struct.rpc_cred* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.rpc_cred* %35)
  store i32 %36, i32* %3, align 4
  br label %76

37:                                               ; preds = %2
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  %40 = call %struct.rpc_cred* @alloc_nfs_open_dir_context(%struct.inode* %38, %struct.rpc_cred* %39)
  %41 = bitcast %struct.rpc_cred* %40 to %struct.nfs_open_dir_context*
  store %struct.nfs_open_dir_context* %41, %struct.nfs_open_dir_context** %7, align 8
  %42 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %7, align 8
  %43 = bitcast %struct.nfs_open_dir_context* %42 to %struct.rpc_cred*
  %44 = call i64 @IS_ERR(%struct.rpc_cred* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %7, align 8
  %48 = bitcast %struct.nfs_open_dir_context* %47 to %struct.rpc_cred*
  %49 = call i32 @PTR_ERR(%struct.rpc_cred* %48)
  store i32 %49, i32* %6, align 4
  br label %72

50:                                               ; preds = %37
  %51 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %7, align 8
  %52 = bitcast %struct.nfs_open_dir_context* %51 to %struct.rpc_cred*
  %53 = load %struct.file*, %struct.file** %5, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 1
  store %struct.rpc_cred* %52, %struct.rpc_cred** %54, align 8
  %55 = load %struct.file*, %struct.file** %5, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = icmp eq %struct.TYPE_10__* %58, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %50
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call i32 @NFS_SERVER(%struct.inode* %67)
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call i32 @__nfs_revalidate_inode(i32 %68, %struct.inode* %69)
  br label %71

71:                                               ; preds = %66, %50
  br label %72

72:                                               ; preds = %71, %46
  %73 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  %74 = call i32 @put_rpccred(%struct.rpc_cred* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %34
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local %struct.rpc_cred* @rpc_lookup_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.rpc_cred*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_cred*) #1

declare dso_local %struct.rpc_cred* @alloc_nfs_open_dir_context(%struct.inode*, %struct.rpc_cred*) #1

declare dso_local i32 @__nfs_revalidate_inode(i32, %struct.inode*) #1

declare dso_local i32 @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @put_rpccred(%struct.rpc_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
