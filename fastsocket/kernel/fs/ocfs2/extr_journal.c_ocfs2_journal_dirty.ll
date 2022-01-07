; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_journal_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_journal_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"(bh->b_blocknr=%llu)\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Could not dirty metadata buffer. (bh->b_blocknr=%llu)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_journal_dirty(i32* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %6 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %7 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @mlog_entry(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %12 = call i32 @jbd2_journal_dirty_metadata(i32* %10, %struct.buffer_head* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @ML_ERROR, align 4
  %17 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @mlog(i32 %16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @mlog_exit(i32 %22)
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @mlog_entry(i8*, i64) #1

declare dso_local i32 @jbd2_journal_dirty_metadata(i32*, %struct.buffer_head*) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
