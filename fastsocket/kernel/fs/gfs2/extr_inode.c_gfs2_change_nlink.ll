; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_change_nlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_gfs2_change_nlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.buffer_head = type { i32 }

@EIO = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_change_nlink(%struct.gfs2_inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, -1
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %19 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %14
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %36 = call i64 @gfs2_consist_inode(%struct.gfs2_inode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %40 = call i32 @gfs2_dinode_print(%struct.gfs2_inode* %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %93

44:                                               ; preds = %27, %14
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %46 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %45, %struct.buffer_head** %6)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %93

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %56 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %55, i32 0, i32 0
  %57 = call i32 @inc_nlink(%struct.TYPE_5__* %56)
  br label %62

58:                                               ; preds = %51
  %59 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %60 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %59, i32 0, i32 0
  %61 = call i32 @drop_nlink(%struct.TYPE_5__* %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @CURRENT_TIME, align 4
  %64 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %65 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %71 = call i32 @gfs2_trans_add_meta(i32 %69, %struct.buffer_head* %70)
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %72, i32 %75)
  %77 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %78 = call i32 @brelse(%struct.buffer_head* %77)
  %79 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %80 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %79, i32 0, i32 0
  %81 = call i32 @mark_inode_dirty(%struct.TYPE_5__* %80)
  %82 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %83 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %62
  %88 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %89 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %88, i32 0, i32 0
  %90 = call i32 @gfs2_unlink_di(%struct.TYPE_5__* %89)
  br label %91

91:                                               ; preds = %87, %62
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %49, %41
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dinode_print(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @inc_nlink(%struct.TYPE_5__*) #1

declare dso_local i32 @drop_nlink(%struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mark_inode_dirty(%struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_unlink_di(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
