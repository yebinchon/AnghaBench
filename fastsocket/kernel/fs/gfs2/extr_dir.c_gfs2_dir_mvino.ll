; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_mvino.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_mvino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.gfs2_inode = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_dirent = type { i32 }

@gfs2_dirent_find = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_dir_mvino(%struct.gfs2_inode* %0, %struct.qstr* %1, %struct.gfs2_inode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.gfs2_dirent*, align 8
  %12 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store %struct.gfs2_inode* %2, %struct.gfs2_inode** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %14 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %13, i32 0, i32 1
  %15 = load %struct.qstr*, %struct.qstr** %7, align 8
  %16 = load i32, i32* @gfs2_dirent_find, align 4
  %17 = call %struct.gfs2_dirent* @gfs2_dirent_search(%struct.TYPE_2__* %14, %struct.qstr* %15, i32 %16, %struct.buffer_head** %10)
  store %struct.gfs2_dirent* %17, %struct.gfs2_dirent** %11, align 8
  %18 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  %19 = icmp ne %struct.gfs2_dirent* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %22 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %21)
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %81

25:                                               ; preds = %4
  %26 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  %27 = call i64 @IS_ERR(%struct.gfs2_dirent* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  %31 = call i32 @PTR_ERR(%struct.gfs2_dirent* %30)
  store i32 %31, i32* %5, align 4
  br label %81

32:                                               ; preds = %25
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %34 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %37 = call i32 @gfs2_trans_add_meta(i32 %35, %struct.buffer_head* %36)
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %39 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  %40 = call i32 @gfs2_inum_out(%struct.gfs2_inode* %38, %struct.gfs2_dirent* %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @cpu_to_be16(i32 %41)
  %43 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %11, align 8
  %44 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %46 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %32
  %52 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %53 = call i32 @brelse(%struct.buffer_head* %52)
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %55 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %54, %struct.buffer_head** %10)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %81

60:                                               ; preds = %51
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %62 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %65 = call i32 @gfs2_trans_add_meta(i32 %63, %struct.buffer_head* %64)
  br label %66

66:                                               ; preds = %60, %32
  %67 = load i32, i32* @CURRENT_TIME, align 4
  %68 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %69 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %72 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %67, i32* %73, align 4
  %74 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %74, i32 %77)
  %79 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %80 = call i32 @brelse(%struct.buffer_head* %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %66, %58, %29, %20
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.gfs2_dirent* @gfs2_dirent_search(%struct.TYPE_2__*, %struct.qstr*, i32, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i64 @IS_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @PTR_ERR(%struct.gfs2_dirent*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_inum_out(%struct.gfs2_inode*, %struct.gfs2_dirent*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
