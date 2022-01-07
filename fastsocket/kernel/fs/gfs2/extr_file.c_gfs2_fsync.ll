; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_gfs2_fsync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_gfs2_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.gfs2_inode = type { i32 }

@I_DIRTY = common dso_local global i32 0, align 4
@I_DIRTY_PAGES = common dso_local global i32 0, align 4
@I_DIRTY_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dentry*, i32)* @gfs2_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_fsync(%struct.file* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gfs2_inode*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I_DIRTY, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %20)
  store %struct.gfs2_inode* %21, %struct.gfs2_inode** %10, align 8
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %23 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @I_DIRTY_PAGES, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %25, %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @I_DIRTY_SYNC, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i32 @sync_inode_metadata(%struct.inode* %42, i32 1)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %63

48:                                               ; preds = %41
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %50 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @filemap_write_and_wait(i32 %55)
  br label %57

57:                                               ; preds = %52, %48
  %58 = load %struct.gfs2_inode*, %struct.gfs2_inode** %10, align 8
  %59 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @gfs2_ail_flush(i32 %60, i32 1)
  br label %62

62:                                               ; preds = %57, %38
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @sync_inode_metadata(%struct.inode*, i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @gfs2_ail_flush(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
