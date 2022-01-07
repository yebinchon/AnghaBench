; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_journal.c_journal_put_journal_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_journal.c_journal_put_journal_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { i64, i32 }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @journal_put_journal_head(%struct.journal_head* %0) #0 {
  %2 = alloca %struct.journal_head*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %2, align 8
  %4 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %5 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %4)
  store %struct.buffer_head* %5, %struct.buffer_head** %3, align 8
  %6 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %7 = call i32 @jbd_lock_bh_journal_head(%struct.buffer_head* %6)
  %8 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %9 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %10 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @J_ASSERT_JH(%struct.journal_head* %8, i32 %13)
  %15 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %16 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %20 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %25 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %30 = call i32 @__journal_remove_journal_head(%struct.buffer_head* %29)
  %31 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %32 = call i32 @__brelse(%struct.buffer_head* %31)
  br label %33

33:                                               ; preds = %28, %23, %1
  %34 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %35 = call i32 @jbd_unlock_bh_journal_head(%struct.buffer_head* %34)
  ret void
}

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @jbd_lock_bh_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @__journal_remove_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

declare dso_local i32 @jbd_unlock_bh_journal_head(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
