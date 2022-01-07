; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_set_bh_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_set_bh_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i8*, %struct.page* }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_bh_page(%struct.buffer_head* %0, %struct.page* %1, i64 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.page*, %struct.page** %5, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 1
  store %struct.page* %7, %struct.page** %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = icmp uge i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = call i64 @PageHighMem(%struct.page* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = add i64 0, %19
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %31

24:                                               ; preds = %3
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = call i8* @page_address(%struct.page* %25)
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %24, %18
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
