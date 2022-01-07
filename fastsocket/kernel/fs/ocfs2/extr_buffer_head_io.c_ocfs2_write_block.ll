; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_buffer_head_io.c_ocfs2_write_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_buffer_head_io.c_ocfs2_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.ocfs2_caching_info = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"(bh->b_blocknr = %llu, ci=%p)\0A\00", align 1
@OCFS2_SUPER_BLOCK_BLKNO = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@end_buffer_write_sync = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_write_block(%struct.ocfs2_super* %0, %struct.buffer_head* %1, %struct.ocfs2_caching_info* %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.ocfs2_caching_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.ocfs2_caching_info* %2, %struct.ocfs2_caching_info** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %6, align 8
  %12 = call i32 @mlog_entry(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %10, %struct.ocfs2_caching_info* %11)
  %13 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OCFS2_SUPER_BLOCK_BLKNO, align 8
  %17 = icmp slt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %21 = call i32 @buffer_jbd(%struct.buffer_head* %20)
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %24 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EROFS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %63

29:                                               ; preds = %3
  %30 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %6, align 8
  %31 = call i32 @ocfs2_metadata_cache_io_lock(%struct.ocfs2_caching_info* %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %33 = call i32 @lock_buffer(%struct.buffer_head* %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %35 = call i32 @set_buffer_uptodate(%struct.buffer_head* %34)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %37 = call i32 @clear_buffer_dirty(%struct.buffer_head* %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %39 = call i32 @get_bh(%struct.buffer_head* %38)
  %40 = load i32, i32* @end_buffer_write_sync, align 4
  %41 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @WRITE, align 4
  %44 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %45 = call i32 @submit_bh(i32 %43, %struct.buffer_head* %44)
  %46 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %47 = call i32 @wait_on_buffer(%struct.buffer_head* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %49 = call i64 @buffer_uptodate(%struct.buffer_head* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %29
  %52 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %6, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %54 = call i32 @ocfs2_set_buffer_uptodate(%struct.ocfs2_caching_info* %52, %struct.buffer_head* %53)
  br label %60

55:                                               ; preds = %29
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  %58 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %59 = call i32 @put_bh(%struct.buffer_head* %58)
  br label %60

60:                                               ; preds = %55, %51
  %61 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %6, align 8
  %62 = call i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info* %61)
  br label %63

63:                                               ; preds = %60, %26
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @mlog_exit(i32 %64)
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @mlog_entry(i8*, i64, %struct.ocfs2_caching_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_metadata_cache_io_lock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_set_buffer_uptodate(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
