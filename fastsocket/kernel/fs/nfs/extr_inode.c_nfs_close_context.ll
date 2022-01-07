; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_close_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_close_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@NFS_MOUNT_NOCTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_close_context(%struct.nfs_open_context* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_open_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @FMODE_WRITE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %44

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %44

18:                                               ; preds = %14
  %19 = load %struct.nfs_open_context*, %struct.nfs_open_context** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %5, align 8
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %44

30:                                               ; preds = %18
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %31)
  store %struct.nfs_server* %32, %struct.nfs_server** %6, align 8
  %33 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %34 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NFS_MOUNT_NOCTO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %44

40:                                               ; preds = %30
  %41 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = call i32 @nfs_revalidate_inode(%struct.nfs_server* %41, %struct.inode* %42)
  br label %44

44:                                               ; preds = %40, %39, %29, %17, %13
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.TYPE_4__* @NFS_I(%struct.inode*) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_revalidate_inode(%struct.nfs_server*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
