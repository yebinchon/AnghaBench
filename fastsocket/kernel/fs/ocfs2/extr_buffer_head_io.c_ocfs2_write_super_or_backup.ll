; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_buffer_head_io.c_ocfs2_write_super_or_backup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_buffer_head_io.c_ocfs2_write_super_or_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32, i32 }

@EROFS = common dso_local global i32 0, align 4
@end_buffer_write_sync = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_write_super_or_backup(%struct.ocfs2_super* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @mlog_entry_void()
  %7 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %8 = call i32 @buffer_jbd(%struct.buffer_head* %7)
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %11 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ocfs2_check_super_or_backup(i32 %12, i32 %15)
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %18 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %22 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %2
  %25 = load i32, i32* @EROFS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %53

27:                                               ; preds = %20
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = call i32 @lock_buffer(%struct.buffer_head* %28)
  %30 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %31 = call i32 @set_buffer_uptodate(%struct.buffer_head* %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %33 = call i32 @clear_buffer_dirty(%struct.buffer_head* %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %35 = call i32 @get_bh(%struct.buffer_head* %34)
  %36 = load i32, i32* @end_buffer_write_sync, align 4
  %37 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @WRITE, align 4
  %40 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %41 = call i32 @submit_bh(i32 %39, %struct.buffer_head* %40)
  %42 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %43 = call i32 @wait_on_buffer(%struct.buffer_head* %42)
  %44 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %45 = call i32 @buffer_uptodate(%struct.buffer_head* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %27
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %51 = call i32 @put_bh(%struct.buffer_head* %50)
  br label %52

52:                                               ; preds = %47, %27
  br label %53

53:                                               ; preds = %52, %24
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @mlog_exit(i32 %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_check_super_or_backup(i32, i32) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
