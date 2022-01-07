; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_xdr_filler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_xdr_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.nfs_entry = type { i32 }
%struct.file = type { %struct.TYPE_7__, %struct.nfs_open_dir_context* }
%struct.TYPE_7__ = type { i32 }
%struct.nfs_open_dir_context = type { %struct.rpc_cred* }
%struct.rpc_cred = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_10__ = type { i32 (i32, %struct.rpc_cred*, i32, %struct.page**, i32, i64)* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@NFS_CAP_READDIRPLUS = common dso_local global i32 0, align 4
@NFS_INO_ADVISE_RDPLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page**, %struct.TYPE_8__*, %struct.nfs_entry*, %struct.file*, %struct.inode*)* @nfs_readdir_xdr_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir_xdr_filler(%struct.page** %0, %struct.TYPE_8__* %1, %struct.nfs_entry* %2, %struct.file* %3, %struct.inode* %4) #0 {
  %6 = alloca %struct.page**, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.nfs_entry*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.nfs_open_dir_context*, align 8
  %12 = alloca %struct.rpc_cred*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.nfs_entry* %2, %struct.nfs_entry** %8, align 8
  store %struct.file* %3, %struct.file** %9, align 8
  store %struct.inode* %4, %struct.inode** %10, align 8
  %16 = load %struct.file*, %struct.file** %9, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %17, align 8
  store %struct.nfs_open_dir_context* %18, %struct.nfs_open_dir_context** %11, align 8
  %19 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %11, align 8
  %20 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %19, i32 0, i32 0
  %21 = load %struct.rpc_cred*, %struct.rpc_cred** %20, align 8
  store %struct.rpc_cred* %21, %struct.rpc_cred** %12, align 8
  br label %22

22:                                               ; preds = %58, %5
  %23 = load i64, i64* @jiffies, align 8
  store i64 %23, i64* %13, align 8
  %24 = call i64 (...) @nfs_inc_attr_generation_counter()
  store i64 %24, i64* %14, align 8
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = call %struct.TYPE_10__* @NFS_PROTO(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32 (i32, %struct.rpc_cred*, i32, %struct.page**, i32, i64)*, i32 (i32, %struct.rpc_cred*, i32, %struct.page**, i32, i64)** %27, align 8
  %29 = load %struct.file*, %struct.file** %9, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.rpc_cred*, %struct.rpc_cred** %12, align 8
  %34 = load %struct.nfs_entry*, %struct.nfs_entry** %8, align 8
  %35 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.page**, %struct.page*** %6, align 8
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = call %struct.TYPE_9__* @NFS_SERVER(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 %28(i32 %32, %struct.rpc_cred* %33, i32 %36, %struct.page** %37, i32 %41, i64 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %22
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @ENOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i32, i32* @NFS_CAP_READDIRPLUS, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = call %struct.TYPE_9__* @NFS_SERVER(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @NFS_INO_ADVISE_RDPLUS, align 4
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = call %struct.TYPE_11__* @NFS_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = call i32 @clear_bit(i32 %66, i32* %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  br label %22

73:                                               ; preds = %53, %48
  br label %81

74:                                               ; preds = %22
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %74, %73
  %82 = load i32, i32* %15, align 4
  ret i32 %82
}

declare dso_local i64 @nfs_inc_attr_generation_counter(...) #1

declare dso_local %struct.TYPE_10__* @NFS_PROTO(%struct.inode*) #1

declare dso_local %struct.TYPE_9__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.TYPE_11__* @NFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
