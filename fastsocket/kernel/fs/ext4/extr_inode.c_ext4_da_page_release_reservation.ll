; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_page_release_reservation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_da_page_release_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i64)* @ext4_da_page_release_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_da_page_release_reservation(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call %struct.buffer_head* @page_buffers(%struct.page* %10)
  store %struct.buffer_head* %11, %struct.buffer_head** %6, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %12, %struct.buffer_head** %7, align 8
  br label %13

13:                                               ; preds = %34, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add i32 %14, %17
  store i32 %18, i32* %9, align 4
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ule i64 %19, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %25 = call i64 @buffer_delay(%struct.buffer_head* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %31 = call i32 @clear_buffer_delay(%struct.buffer_head* %30)
  br label %32

32:                                               ; preds = %27, %23, %13
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 1
  %37 = load %struct.buffer_head*, %struct.buffer_head** %36, align 8
  store %struct.buffer_head* %37, %struct.buffer_head** %7, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %39 = icmp ne %struct.buffer_head* %37, %38
  br i1 %39, label %13, label %40

40:                                               ; preds = %34
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = getelementptr inbounds %struct.page, %struct.page* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ext4_da_release_space(i32 %45, i32 %46)
  ret void
}

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @ext4_da_release_space(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
