; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_journal_get_descriptor_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_journal_get_descriptor_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"return this buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.journal_head* @jbd2_journal_get_descriptor_buffer(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.journal_head*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = call i32 @jbd2_journal_next_log_block(%struct.TYPE_4__* %7, i64* %5)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.journal_head* null, %struct.journal_head** %2, align 8
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.buffer_head* @__getblk(i32 %15, i64 %16, i32 %19)
  store %struct.buffer_head* %20, %struct.buffer_head** %4, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %22 = icmp ne %struct.buffer_head* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  store %struct.journal_head* null, %struct.journal_head** %2, align 8
  br label %42

24:                                               ; preds = %12
  %25 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %26 = call i32 @lock_buffer(%struct.buffer_head* %25)
  %27 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memset(i32 %29, i32 0, i32 %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %35 = call i32 @set_buffer_uptodate(%struct.buffer_head* %34)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %37 = call i32 @unlock_buffer(%struct.buffer_head* %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %39 = call i32 @BUFFER_TRACE(%struct.buffer_head* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %41 = call %struct.journal_head* @jbd2_journal_add_journal_head(%struct.buffer_head* %40)
  store %struct.journal_head* %41, %struct.journal_head** %2, align 8
  br label %42

42:                                               ; preds = %24, %23, %11
  %43 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  ret %struct.journal_head* %43
}

declare dso_local i32 @jbd2_journal_next_log_block(%struct.TYPE_4__*, i64*) #1

declare dso_local %struct.buffer_head* @__getblk(i32, i64, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local %struct.journal_head* @jbd2_journal_add_journal_head(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
