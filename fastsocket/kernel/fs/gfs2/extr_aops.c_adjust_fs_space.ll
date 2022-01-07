; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_adjust_fs_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_adjust_fs_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32 }
%struct.gfs2_statfs_change_host = type { i64 }
%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"File system extended by %llu blocks.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @adjust_fs_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_fs_space(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_statfs_change_host*, align 8
  %7 = alloca %struct.gfs2_statfs_change_host*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %15, align 8
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %3, align 8
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %18 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.gfs2_inode* @GFS2_I(i32 %19)
  store %struct.gfs2_inode* %20, %struct.gfs2_inode** %4, align 8
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.gfs2_inode* @GFS2_I(i32 %23)
  store %struct.gfs2_inode* %24, %struct.gfs2_inode** %5, align 8
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %25, i32 0, i32 2
  store %struct.gfs2_statfs_change_host* %26, %struct.gfs2_statfs_change_host** %6, align 8
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %28 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %27, i32 0, i32 1
  store %struct.gfs2_statfs_change_host* %28, %struct.gfs2_statfs_change_host** %7, align 8
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %30 = call i64 @gfs2_ri_total(%struct.gfs2_sbd* %29)
  store i64 %30, i64* %10, align 8
  %31 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %32 = call i64 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %31, %struct.buffer_head** %8)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %90

35:                                               ; preds = %1
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %37 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %6, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 4
  %44 = call i32 @gfs2_statfs_change_in(%struct.gfs2_statfs_change_host* %39, i64 %43)
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %6, align 8
  %47 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %7, align 8
  %50 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = icmp sgt i64 %45, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %35
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %6, align 8
  %57 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %7, align 8
  %60 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = sub nsw i64 %55, %62
  store i64 %63, i64* %11, align 8
  br label %65

64:                                               ; preds = %35
  store i64 0, i64* %11, align 8
  br label %65

65:                                               ; preds = %64, %54
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %67 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @fs_warn(%struct.gfs2_sbd* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @gfs2_statfs_change(%struct.gfs2_sbd* %72, i64 %73, i64 %74, i32 0)
  %76 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %77 = call i64 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %76, %struct.buffer_head** %9)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %87

80:                                               ; preds = %65
  %81 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %84 = call i32 @update_statfs(%struct.gfs2_sbd* %81, %struct.buffer_head* %82, %struct.buffer_head* %83)
  %85 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %86 = call i32 @brelse(%struct.buffer_head* %85)
  br label %87

87:                                               ; preds = %80, %79
  %88 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %89 = call i32 @brelse(%struct.buffer_head* %88)
  br label %90

90:                                               ; preds = %87, %34
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i64 @gfs2_ri_total(%struct.gfs2_sbd*) #1

declare dso_local i64 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gfs2_statfs_change_in(%struct.gfs2_statfs_change_host*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i64) #1

declare dso_local i32 @gfs2_statfs_change(%struct.gfs2_sbd*, i64, i64, i32) #1

declare dso_local i32 @update_statfs(%struct.gfs2_sbd*, %struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
