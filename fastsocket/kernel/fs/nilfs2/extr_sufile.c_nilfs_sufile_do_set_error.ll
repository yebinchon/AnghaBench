; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_do_set_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_sufile.c_nilfs_sufile_do_set_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_segment_usage = type { i32 }

@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_sufile_do_set_error(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.nilfs_segment_usage*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @KM_USER0, align 4
  %16 = call i8* @kmap_atomic(i32 %14, i32 %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode* %17, i32 %18, %struct.buffer_head* %19, i8* %20)
  store %struct.nilfs_segment_usage* %21, %struct.nilfs_segment_usage** %9, align 8
  %22 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %23 = call i64 @nilfs_segment_usage_error(%struct.nilfs_segment_usage* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* @KM_USER0, align 4
  %28 = call i32 @kunmap_atomic(i8* %26, i32 %27)
  br label %47

29:                                               ; preds = %4
  %30 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %31 = call i32 @nilfs_segment_usage_clean(%struct.nilfs_segment_usage* %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.nilfs_segment_usage*, %struct.nilfs_segment_usage** %9, align 8
  %33 = call i32 @nilfs_segment_usage_set_error(%struct.nilfs_segment_usage* %32)
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* @KM_USER0, align 4
  %36 = call i32 @kunmap_atomic(i8* %34, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %41 = call i32 @nilfs_sufile_mod_counter(%struct.buffer_head* %40, i32 -1, i32 0)
  br label %42

42:                                               ; preds = %39, %29
  %43 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %44 = call i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head* %43)
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @nilfs_mdt_mark_dirty(%struct.inode* %45)
  br label %47

47:                                               ; preds = %42, %25
  ret void
}

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local %struct.nilfs_segment_usage* @nilfs_sufile_block_get_segment_usage(%struct.inode*, i32, %struct.buffer_head*, i8*) #1

declare dso_local i64 @nilfs_segment_usage_error(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @nilfs_segment_usage_clean(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @nilfs_segment_usage_set_error(%struct.nilfs_segment_usage*) #1

declare dso_local i32 @nilfs_sufile_mod_counter(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @nilfs_mdt_mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_mark_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
