; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_get_segment_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_get_segment_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_segment_usage = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_sufile_get_segment_usage(%struct.inode* %0, i64 %1, %struct.nilfs_segment_usage** %2, %struct.buffer_head** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nilfs_segment_usage**, align 8
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.nilfs_segment_usage*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.nilfs_segment_usage** %2, %struct.nilfs_segment_usage*** %8, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call i64 @nilfs_sufile_get_nsegments(%struct.inode* %15)
  %17 = icmp sge i64 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %69

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @down_write(i32* %24)
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @nilfs_sufile_get_segment_usage_block(%struct.inode* %26, i64 %27, i32 1, %struct.buffer_head** %10)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %63

32:                                               ; preds = %21
  %33 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @kmap(i32 %35)
  store i8* %36, i8** %12, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = call %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode* %37, i64 %38, %struct.buffer_head* %39, i8* %40)
  store %struct.nilfs_segment_usage* %41, %struct.nilfs_segment_usage** %11, align 8
  %42 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %11, align 8
  %43 = call i64 @nilfs_segment_usage_error(%struct.nilfs_segment_usage* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %32
  %46 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kunmap(i32 %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %51 = call i32 @brelse(%struct.buffer_head* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %63

54:                                               ; preds = %32
  %55 = load %struct.nilfs_segment_usage**, %struct.nilfs_segment_usage*** %8, align 8
  %56 = icmp ne %struct.nilfs_segment_usage** %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %11, align 8
  %59 = load %struct.nilfs_segment_usage**, %struct.nilfs_segment_usage*** %8, align 8
  store %struct.nilfs_segment_usage* %58, %struct.nilfs_segment_usage** %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %62 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %61, %struct.buffer_head** %62, align 8
  br label %63

63:                                               ; preds = %60, %45, %31
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @up_write(i32* %66)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %18
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @nilfs_sufile_get_nsegments(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_sufile_get_segment_usage_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i8* @kmap(i32) #1

declare dso_local %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode*, i64, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_segment_usage_error(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
