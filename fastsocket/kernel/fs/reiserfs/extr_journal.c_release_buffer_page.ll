; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_release_buffer_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_release_buffer_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { %struct.page* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*)* @release_buffer_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_buffer_page(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.page*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %4 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %5 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %4, i32 0, i32 0
  %6 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %6, %struct.page** %3, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %1
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i64 @trylock_page(%struct.page* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i32 @page_cache_get(%struct.page* %16)
  %18 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %19 = call i32 @put_bh(%struct.buffer_head* %18)
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call i32 @try_to_free_buffers(%struct.page* %25)
  br label %27

27:                                               ; preds = %24, %15
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i32 @unlock_page(%struct.page* %28)
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = call i32 @page_cache_release(%struct.page* %30)
  br label %35

32:                                               ; preds = %11, %1
  %33 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %34 = call i32 @put_bh(%struct.buffer_head* %33)
  br label %35

35:                                               ; preds = %32, %27
  ret void
}

declare dso_local i64 @trylock_page(%struct.page*) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @try_to_free_buffers(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
