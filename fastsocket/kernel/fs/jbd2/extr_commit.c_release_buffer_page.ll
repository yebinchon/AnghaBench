; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_commit.c_release_buffer_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_commit.c_release_buffer_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { %struct.page*, i32 }
%struct.page = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*)* @release_buffer_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_buffer_page(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.page*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %4 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %5 = call i64 @buffer_dirty(%struct.buffer_head* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %43

8:                                                ; preds = %1
  %9 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 1
  %11 = call i32 @atomic_read(i32* %10)
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %43

14:                                               ; preds = %8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %17, %struct.page** %3, align 8
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %43

21:                                               ; preds = %14
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %43

27:                                               ; preds = %21
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i32 @trylock_page(%struct.page* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %43

32:                                               ; preds = %27
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call i32 @page_cache_get(%struct.page* %33)
  %35 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %36 = call i32 @__brelse(%struct.buffer_head* %35)
  %37 = load %struct.page*, %struct.page** %3, align 8
  %38 = call i32 @try_to_free_buffers(%struct.page* %37)
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i32 @unlock_page(%struct.page* %39)
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = call i32 @page_cache_release(%struct.page* %41)
  br label %46

43:                                               ; preds = %31, %26, %20, %13, %7
  %44 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %45 = call i32 @__brelse(%struct.buffer_head* %44)
  br label %46

46:                                               ; preds = %43, %32
  ret void
}

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
