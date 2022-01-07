; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @journal_invalidatepage(i32* %0, %struct.page* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call i32 @PageLocked(%struct.page* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 (...) @BUG()
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = call i32 @page_has_buffers(%struct.page* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %74

23:                                               ; preds = %18
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = call %struct.buffer_head* @page_buffers(%struct.page* %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %25, %struct.buffer_head** %7, align 8
  br label %26

26:                                               ; preds = %52, %23
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add i32 %27, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 1
  %34 = load %struct.buffer_head*, %struct.buffer_head** %33, align 8
  store %struct.buffer_head* %34, %struct.buffer_head** %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = icmp ule i64 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %26
  %40 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %41 = call i32 @lock_buffer(%struct.buffer_head* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %44 = call i32 @journal_unmap_buffer(i32* %42, %struct.buffer_head* %43)
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %48 = call i32 @unlock_buffer(%struct.buffer_head* %47)
  br label %49

49:                                               ; preds = %39, %26
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %10, align 4
  %51 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %51, %struct.buffer_head** %8, align 8
  br label %52

52:                                               ; preds = %49
  %53 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %55 = icmp ne %struct.buffer_head* %53, %54
  br i1 %55, label %26, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load %struct.page*, %struct.page** %5, align 8
  %64 = call i64 @try_to_free_buffers(%struct.page* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.page*, %struct.page** %5, align 8
  %68 = call i32 @page_has_buffers(%struct.page* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @J_ASSERT(i32 %71)
  br label %73

73:                                               ; preds = %66, %62, %59
  br label %74

74:                                               ; preds = %22, %73, %56
  ret void
}

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @journal_unmap_buffer(i32*, %struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @try_to_free_buffers(%struct.page*) #1

declare dso_local i32 @J_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
