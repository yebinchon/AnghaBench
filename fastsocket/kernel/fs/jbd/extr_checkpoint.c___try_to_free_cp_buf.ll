; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_checkpoint.c___try_to_free_cp_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_checkpoint.c___try_to_free_cp_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { i64 }
%struct.buffer_head = type { i32 }

@BJ_None = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"remove from checkpoint list\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.journal_head*)* @__try_to_free_cp_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__try_to_free_cp_buf(%struct.journal_head* %0) #0 {
  %2 = alloca %struct.journal_head*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer_head*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %6 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %5)
  store %struct.buffer_head* %6, %struct.buffer_head** %4, align 8
  %7 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %8 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BJ_None, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %1
  %13 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %14 = call i32 @buffer_locked(%struct.buffer_head* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %12
  %17 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %18 = call i32 @buffer_dirty(%struct.buffer_head* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %22 = call i32 @buffer_write_io_error(%struct.buffer_head* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %26 = call i32 @JBUFFER_TRACE(%struct.journal_head* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %28 = call i32 @__journal_remove_checkpoint(%struct.journal_head* %27)
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  %30 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %31 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %33 = call i32 @journal_remove_journal_head(%struct.buffer_head* %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %35 = call i32 @BUFFER_TRACE(%struct.buffer_head* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %37 = call i32 @__brelse(%struct.buffer_head* %36)
  br label %41

38:                                               ; preds = %20, %16, %12, %1
  %39 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %40 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %39)
  br label %41

41:                                               ; preds = %38, %24
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @__journal_remove_checkpoint(%struct.journal_head*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @journal_remove_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
