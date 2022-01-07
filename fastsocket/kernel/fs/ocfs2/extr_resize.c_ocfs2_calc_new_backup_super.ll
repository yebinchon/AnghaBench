; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_resize.c_ocfs2_calc_new_backup_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_resize.c_ocfs2_calc_new_backup_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_group_desc = type { i64, i32 }

@OCFS2_MAX_BACKUP_SUPERBLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_group_desc*, i32, i32, i32, i32)* @ocfs2_calc_new_backup_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_calc_new_backup_super(%struct.inode* %0, %struct.ocfs2_group_desc* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_group_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.ocfs2_group_desc* %1, %struct.ocfs2_group_desc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %20 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @le64_to_cpu(i32 %21)
  store i64 %22, i64* %18, align 8
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %75, %6
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @OCFS2_MAX_BACKUP_SUPERBLOCKS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %23
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i64 @ocfs2_backup_super_blkno(i32 %30, i32 %31)
  store i64 %32, i64* %16, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %16, align 8
  %37 = call i32 @ocfs2_blocks_to_clusters(i32 %35, i64 %36)
  store i32 %37, i32* %15, align 4
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i64 @ocfs2_which_cluster_group(%struct.inode* %38, i32 %39)
  store i64 %40, i64* %17, align 8
  %41 = load i64, i64* %17, align 8
  %42 = load i64, i64* %18, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %75

45:                                               ; preds = %27
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* %18, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %78

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %11, align 4
  %57 = srem i32 %55, %56
  %58 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %59 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i64*
  %62 = call i32 @ocfs2_set_bit(i32 %57, i64* %61)
  br label %72

63:                                               ; preds = %51
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %11, align 4
  %66 = srem i32 %64, %65
  %67 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %8, align 8
  %68 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i64*
  %71 = call i32 @ocfs2_clear_bit(i32 %66, i64* %70)
  br label %72

72:                                               ; preds = %63, %54
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %72, %44
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %23

78:                                               ; preds = %49, %23
  %79 = call i32 (...) @mlog_exit_void()
  %80 = load i32, i32* %14, align 4
  ret i32 %80
}

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @ocfs2_backup_super_blkno(i32, i32) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i64) #1

declare dso_local i64 @ocfs2_which_cluster_group(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_set_bit(i32, i64*) #1

declare dso_local i32 @ocfs2_clear_bit(i32, i64*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
