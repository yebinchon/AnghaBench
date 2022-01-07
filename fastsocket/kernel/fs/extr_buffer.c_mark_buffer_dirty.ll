; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_mark_buffer_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_mark_buffer_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { %struct.page* }
%struct.page = type { i32 }
%struct.address_space = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_buffer_dirty(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %6 = call i32 @buffer_uptodate(%struct.buffer_head* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON_ONCE(i32 %9)
  %11 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %12 = call i64 @buffer_dirty(%struct.buffer_head* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = call i32 (...) @smp_mb()
  %16 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %17 = call i64 @buffer_dirty(%struct.buffer_head* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %43

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %23 = call i32 @test_set_buffer_dirty(%struct.buffer_head* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  %28 = load %struct.page*, %struct.page** %27, align 8
  store %struct.page* %28, %struct.page** %3, align 8
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = call i32 @TestSetPageDirty(%struct.page* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %25
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call %struct.address_space* @page_mapping(%struct.page* %33)
  store %struct.address_space* %34, %struct.address_space** %4, align 8
  %35 = load %struct.address_space*, %struct.address_space** %4, align 8
  %36 = icmp ne %struct.address_space* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.page*, %struct.page** %3, align 8
  %39 = load %struct.address_space*, %struct.address_space** %4, align 8
  %40 = call i32 @__set_page_dirty(%struct.page* %38, %struct.address_space* %39, i32 0)
  br label %41

41:                                               ; preds = %37, %32
  br label %42

42:                                               ; preds = %41, %25
  br label %43

43:                                               ; preds = %19, %42, %21
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @test_set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @TestSetPageDirty(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @__set_page_dirty(%struct.page*, %struct.address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
