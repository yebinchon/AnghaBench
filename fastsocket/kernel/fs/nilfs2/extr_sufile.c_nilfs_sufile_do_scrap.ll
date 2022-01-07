; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_do_scrap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_do_scrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_segment_usage = type { i64, i64, i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@NILFS_SEGMENT_USAGE_DIRTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_sufile_do_scrap(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.nilfs_segment_usage*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KM_USER0, align 4
  %17 = call i8* @kmap_atomic(i32 %15, i32 %16)
  store i8* %17, i8** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode* %18, i32 %19, %struct.buffer_head* %20, i8* %21)
  store %struct.nilfs_segment_usage* %22, %struct.nilfs_segment_usage** %9, align 8
  %23 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %24 = getelementptr inbounds %struct.nilfs_segment_usage, %struct.nilfs_segment_usage* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NILFS_SEGMENT_USAGE_DIRTY, align 8
  %27 = shl i64 1, %26
  %28 = call i64 @cpu_to_le32(i64 %27)
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %4
  %31 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %32 = getelementptr inbounds %struct.nilfs_segment_usage, %struct.nilfs_segment_usage* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @cpu_to_le32(i64 0)
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* @KM_USER0, align 4
  %39 = call i32 @kunmap_atomic(i8* %37, i32 %38)
  br label %73

40:                                               ; preds = %30, %4
  %41 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %42 = call i32 @nilfs_segment_usage_clean(%struct.nilfs_segment_usage* %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %44 = call i32 @nilfs_segment_usage_dirty(%struct.nilfs_segment_usage* %43)
  store i32 %44, i32* %12, align 4
  %45 = call i32 @cpu_to_le64(i32 0)
  %46 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %47 = getelementptr inbounds %struct.nilfs_segment_usage, %struct.nilfs_segment_usage* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = call i64 @cpu_to_le32(i64 0)
  %49 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %50 = getelementptr inbounds %struct.nilfs_segment_usage, %struct.nilfs_segment_usage* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* @NILFS_SEGMENT_USAGE_DIRTY, align 8
  %52 = shl i64 1, %51
  %53 = call i64 @cpu_to_le32(i64 %52)
  %54 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %55 = getelementptr inbounds %struct.nilfs_segment_usage, %struct.nilfs_segment_usage* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* @KM_USER0, align 4
  %58 = call i32 @kunmap_atomic(i8* %56, i32 %57)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 -1, i32 0
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 1
  %68 = call i32 @nilfs_sufile_mod_counter(%struct.buffer_head* %59, i32 %63, i32 %67)
  %69 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %70 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %69)
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %71)
  br label %73

73:                                               ; preds = %40, %36
  ret void
}

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode*, i32, %struct.buffer_head*, i8*) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @nilfs_segment_usage_clean(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @nilfs_segment_usage_dirty(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @nilfs_sufile_mod_counter(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
