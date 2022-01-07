; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.writeback_control = type { i64 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.address_space = type { %struct.backing_dev_info* }
%struct.backing_dev_info = type { i64 }

@WB_SYNC_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.writeback_control*)* @gfs2_write_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.backing_dev_info*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %10)
  store %struct.gfs2_inode* %11, %struct.gfs2_inode** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %12)
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %6, align 8
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.address_space* @gfs2_glock2aspace(i32 %16)
  store %struct.address_space* %17, %struct.address_space** %7, align 8
  %18 = load %struct.address_space*, %struct.address_space** %7, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 0
  %20 = load %struct.backing_dev_info*, %struct.backing_dev_info** %19, align 8
  store %struct.backing_dev_info* %20, %struct.backing_dev_info** %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %22 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WB_SYNC_ALL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %27)
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %28, i32 %31)
  br label %33

33:                                               ; preds = %26, %2
  %34 = load %struct.backing_dev_info*, %struct.backing_dev_info** %8, align 8
  %35 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %40 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %41 = call i32 @gfs2_ail1_flush(%struct.gfs2_sbd* %39, %struct.writeback_control* %40)
  br label %45

42:                                               ; preds = %33
  %43 = load %struct.address_space*, %struct.address_space** %7, align 8
  %44 = call i32 @filemap_fdatawrite(%struct.address_space* %43)
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %47 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @WB_SYNC_ALL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.address_space*, %struct.address_space** %7, align 8
  %53 = call i32 @filemap_fdatawait(%struct.address_space* %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = call i32 @mark_inode_dirty_sync(%struct.inode* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local %struct.address_space* @gfs2_glock2aspace(i32) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_ail1_flush(%struct.gfs2_sbd*, %struct.writeback_control*) #1

declare dso_local i32 @filemap_fdatawrite(%struct.address_space*) #1

declare dso_local i32 @filemap_fdatawait(%struct.address_space*) #1

declare dso_local i32 @mark_inode_dirty_sync(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
