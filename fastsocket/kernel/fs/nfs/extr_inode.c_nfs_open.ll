; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.rpc_cred = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.nfs_open_context*, align 8
  %7 = alloca %struct.rpc_cred*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = call %struct.rpc_cred* (...) @rpc_lookup_cred()
  store %struct.rpc_cred* %8, %struct.rpc_cred** %7, align 8
  %9 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %10 = call i64 @IS_ERR(%struct.rpc_cred* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %14 = call i32 @PTR_ERR(%struct.rpc_cred* %13)
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.nfs_open_context* @alloc_nfs_open_context(i32 %19, %struct.rpc_cred* %20, i32 %23)
  store %struct.nfs_open_context* %24, %struct.nfs_open_context** %6, align 8
  %25 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %26 = call i32 @put_rpccred(%struct.rpc_cred* %25)
  %27 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %28 = icmp eq %struct.nfs_open_context* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %15
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %35 = call i32 @nfs_file_set_open_context(%struct.file* %33, %struct.nfs_open_context* %34)
  %36 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %37 = call i32 @put_nfs_open_context(%struct.nfs_open_context* %36)
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = call i32 @nfs_fscache_set_inode_cookie(%struct.inode* %38, %struct.file* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %29, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.rpc_cred* @rpc_lookup_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.rpc_cred*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_cred*) #1

declare dso_local %struct.nfs_open_context* @alloc_nfs_open_context(i32, %struct.rpc_cred*, i32) #1

declare dso_local i32 @put_rpccred(%struct.rpc_cred*) #1

declare dso_local i32 @nfs_file_set_open_context(%struct.file*, %struct.nfs_open_context*) #1

declare dso_local i32 @put_nfs_open_context(%struct.nfs_open_context*) #1

declare dso_local i32 @nfs_fscache_set_inode_cookie(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
