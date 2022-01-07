; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_drop_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_drop_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64, %struct.buffer_head* }

@AS_EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.buffer_head**)* @drop_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drop_buffers(%struct.page* %0, %struct.buffer_head** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.buffer_head**, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %5, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call %struct.buffer_head* @page_buffers(%struct.page* %9)
  store %struct.buffer_head* %10, %struct.buffer_head** %6, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %11, %struct.buffer_head** %7, align 8
  br label %12

12:                                               ; preds = %37, %2
  %13 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %14 = call i64 @buffer_write_io_error(%struct.buffer_head* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* @AS_EIO, align 4
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @set_bit(i32 %22, i32* %26)
  br label %28

28:                                               ; preds = %21, %16, %12
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = call i64 @buffer_busy(%struct.buffer_head* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %64

33:                                               ; preds = %28
  %34 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 1
  %36 = load %struct.buffer_head*, %struct.buffer_head** %35, align 8
  store %struct.buffer_head* %36, %struct.buffer_head** %7, align 8
  br label %37

37:                                               ; preds = %33
  %38 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %40 = icmp ne %struct.buffer_head* %38, %39
  br i1 %40, label %12, label %41

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %55, %41
  %43 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 1
  %45 = load %struct.buffer_head*, %struct.buffer_head** %44, align 8
  store %struct.buffer_head* %45, %struct.buffer_head** %8, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %52 = call i32 @__remove_assoc_queue(%struct.buffer_head* %51)
  br label %53

53:                                               ; preds = %50, %42
  %54 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %54, %struct.buffer_head** %7, align 8
  br label %55

55:                                               ; preds = %53
  %56 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %58 = icmp ne %struct.buffer_head* %56, %57
  br i1 %58, label %42, label %59

59:                                               ; preds = %55
  %60 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %61 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  store %struct.buffer_head* %60, %struct.buffer_head** %61, align 8
  %62 = load %struct.page*, %struct.page** %4, align 8
  %63 = call i32 @__clear_page_buffers(%struct.page* %62)
  store i32 1, i32* %3, align 4
  br label %65

64:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %59
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @buffer_busy(%struct.buffer_head*) #1

declare dso_local i32 @__remove_assoc_queue(%struct.buffer_head*) #1

declare dso_local i32 @__clear_page_buffers(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
