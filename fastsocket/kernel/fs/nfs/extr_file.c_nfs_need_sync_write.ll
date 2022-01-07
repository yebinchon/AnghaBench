; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_need_sync_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_need_sync_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_open_context = type { i32 }

@O_SYNC = common dso_local global i32 0, align 4
@NFS_CONTEXT_ERROR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.inode*)* @nfs_need_sync_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_need_sync_write(%struct.file* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs_open_context*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %5, align 8
  %8 = call i64 @IS_SYNC(%struct.inode* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @O_SYNC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %2
  store i32 1, i32* %3, align 4
  br label %28

18:                                               ; preds = %10
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = call %struct.nfs_open_context* @nfs_file_open_context(%struct.file* %19)
  store %struct.nfs_open_context* %20, %struct.nfs_open_context** %6, align 8
  %21 = load i32, i32* @NFS_CONTEXT_ERROR_WRITE, align 4
  %22 = load %struct.nfs_open_context*, %struct.nfs_open_context** %6, align 8
  %23 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(%struct.file*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
