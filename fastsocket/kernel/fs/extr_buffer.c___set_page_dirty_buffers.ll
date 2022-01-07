; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___set_page_dirty_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___set_page_dirty_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__set_page_dirty_buffers(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call %struct.address_space* @page_mapping(%struct.page* %8)
  store %struct.address_space* %9, %struct.address_space** %5, align 8
  %10 = load %struct.address_space*, %struct.address_space** %5, align 8
  %11 = icmp ne %struct.address_space* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @TestSetPageDirty(%struct.page* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %61

22:                                               ; preds = %1
  %23 = load %struct.address_space*, %struct.address_space** %5, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i64 @page_has_buffers(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = call %struct.buffer_head* @page_buffers(%struct.page* %30)
  store %struct.buffer_head* %31, %struct.buffer_head** %6, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %32, %struct.buffer_head** %7, align 8
  br label %33

33:                                               ; preds = %39, %29
  %34 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %35 = call i32 @set_buffer_dirty(%struct.buffer_head* %34)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 0
  %38 = load %struct.buffer_head*, %struct.buffer_head** %37, align 8
  store %struct.buffer_head* %38, %struct.buffer_head** %7, align 8
  br label %39

39:                                               ; preds = %33
  %40 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %42 = icmp ne %struct.buffer_head* %40, %41
  br i1 %42, label %33, label %43

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.page*, %struct.page** %3, align 8
  %46 = call i32 @TestSetPageDirty(%struct.page* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load %struct.address_space*, %struct.address_space** %5, align 8
  %51 = getelementptr inbounds %struct.address_space, %struct.address_space* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load %struct.page*, %struct.page** %3, align 8
  %57 = load %struct.address_space*, %struct.address_space** %5, align 8
  %58 = call i32 @__set_page_dirty(%struct.page* %56, %struct.address_space* %57, i32 1)
  br label %59

59:                                               ; preds = %55, %44
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %16
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @TestSetPageDirty(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__set_page_dirty(%struct.page*, %struct.address_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
