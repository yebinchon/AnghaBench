; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_try_to_free_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_try_to_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }
%struct.journal_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_try_to_free_buffers(i32* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.journal_head*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = call i32 @PageLocked(%struct.page* %11)
  %13 = call i32 @J_ASSERT(i32 %12)
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call %struct.buffer_head* @page_buffers(%struct.page* %14)
  store %struct.buffer_head* %15, %struct.buffer_head** %7, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %16, %struct.buffer_head** %8, align 8
  br label %17

17:                                               ; preds = %38, %3
  %18 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %19 = call %struct.journal_head* @journal_grab_journal_head(%struct.buffer_head* %18)
  store %struct.journal_head* %19, %struct.journal_head** %10, align 8
  %20 = load %struct.journal_head*, %struct.journal_head** %10, align 8
  %21 = icmp ne %struct.journal_head* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %38

23:                                               ; preds = %17
  %24 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %25 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %28 = call i32 @__journal_try_to_free_buffer(i32* %26, %struct.buffer_head* %27)
  %29 = load %struct.journal_head*, %struct.journal_head** %10, align 8
  %30 = call i32 @journal_put_journal_head(%struct.journal_head* %29)
  %31 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %32 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %31)
  %33 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %34 = call i64 @buffer_jbd(%struct.buffer_head* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %47

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load %struct.buffer_head*, %struct.buffer_head** %40, align 8
  store %struct.buffer_head* %41, %struct.buffer_head** %8, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %43 = icmp ne %struct.buffer_head* %41, %42
  br i1 %43, label %17, label %44

44:                                               ; preds = %38
  %45 = load %struct.page*, %struct.page** %5, align 8
  %46 = call i32 @try_to_free_buffers(%struct.page* %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local %struct.journal_head* @journal_grab_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @__journal_try_to_free_buffer(i32*, %struct.buffer_head*) #1

declare dso_local i32 @journal_put_journal_head(%struct.journal_head*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i64 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
