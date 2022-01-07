; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_poll_freewait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_poll_freewait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poll_wqueues = type { i32, %struct.poll_table_entry*, %struct.poll_table_page* }
%struct.poll_table_entry = type { i32 }
%struct.poll_table_page = type { %struct.poll_table_page*, %struct.poll_table_entry*, %struct.poll_table_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poll_freewait(%struct.poll_wqueues* %0) #0 {
  %2 = alloca %struct.poll_wqueues*, align 8
  %3 = alloca %struct.poll_table_page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.poll_table_entry*, align 8
  %6 = alloca %struct.poll_table_page*, align 8
  store %struct.poll_wqueues* %0, %struct.poll_wqueues** %2, align 8
  %7 = load %struct.poll_wqueues*, %struct.poll_wqueues** %2, align 8
  %8 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %7, i32 0, i32 2
  %9 = load %struct.poll_table_page*, %struct.poll_table_page** %8, align 8
  store %struct.poll_table_page* %9, %struct.poll_table_page** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.poll_wqueues*, %struct.poll_wqueues** %2, align 8
  %13 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.poll_wqueues*, %struct.poll_wqueues** %2, align 8
  %18 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %17, i32 0, i32 1
  %19 = load %struct.poll_table_entry*, %struct.poll_table_entry** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.poll_table_entry, %struct.poll_table_entry* %19, i64 %21
  %23 = call i32 @free_poll_entry(%struct.poll_table_entry* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %10

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %46, %27
  %29 = load %struct.poll_table_page*, %struct.poll_table_page** %3, align 8
  %30 = icmp ne %struct.poll_table_page* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load %struct.poll_table_page*, %struct.poll_table_page** %3, align 8
  %33 = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %32, i32 0, i32 2
  %34 = load %struct.poll_table_entry*, %struct.poll_table_entry** %33, align 8
  store %struct.poll_table_entry* %34, %struct.poll_table_entry** %5, align 8
  br label %35

35:                                               ; preds = %40, %31
  %36 = load %struct.poll_table_entry*, %struct.poll_table_entry** %5, align 8
  %37 = getelementptr inbounds %struct.poll_table_entry, %struct.poll_table_entry* %36, i32 -1
  store %struct.poll_table_entry* %37, %struct.poll_table_entry** %5, align 8
  %38 = load %struct.poll_table_entry*, %struct.poll_table_entry** %5, align 8
  %39 = call i32 @free_poll_entry(%struct.poll_table_entry* %38)
  br label %40

40:                                               ; preds = %35
  %41 = load %struct.poll_table_entry*, %struct.poll_table_entry** %5, align 8
  %42 = load %struct.poll_table_page*, %struct.poll_table_page** %3, align 8
  %43 = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %42, i32 0, i32 1
  %44 = load %struct.poll_table_entry*, %struct.poll_table_entry** %43, align 8
  %45 = icmp ugt %struct.poll_table_entry* %41, %44
  br i1 %45, label %35, label %46

46:                                               ; preds = %40
  %47 = load %struct.poll_table_page*, %struct.poll_table_page** %3, align 8
  store %struct.poll_table_page* %47, %struct.poll_table_page** %6, align 8
  %48 = load %struct.poll_table_page*, %struct.poll_table_page** %3, align 8
  %49 = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %48, i32 0, i32 0
  %50 = load %struct.poll_table_page*, %struct.poll_table_page** %49, align 8
  store %struct.poll_table_page* %50, %struct.poll_table_page** %3, align 8
  %51 = load %struct.poll_table_page*, %struct.poll_table_page** %6, align 8
  %52 = ptrtoint %struct.poll_table_page* %51 to i64
  %53 = call i32 @free_page(i64 %52)
  br label %28

54:                                               ; preds = %28
  ret void
}

declare dso_local i32 @free_poll_entry(%struct.poll_table_entry*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
