; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_poll_get_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_poll_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poll_table_entry = type { i32 }
%struct.poll_wqueues = type { i64, %struct.poll_table_page*, i32, %struct.poll_table_entry* }
%struct.poll_table_page = type { i32, %struct.poll_table_page*, i32 }

@N_INLINE_POLL_ENTRIES = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.poll_table_entry* (%struct.poll_wqueues*)* @poll_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.poll_table_entry* @poll_get_entry(%struct.poll_wqueues* %0) #0 {
  %2 = alloca %struct.poll_table_entry*, align 8
  %3 = alloca %struct.poll_wqueues*, align 8
  %4 = alloca %struct.poll_table_page*, align 8
  %5 = alloca %struct.poll_table_page*, align 8
  store %struct.poll_wqueues* %0, %struct.poll_wqueues** %3, align 8
  %6 = load %struct.poll_wqueues*, %struct.poll_wqueues** %3, align 8
  %7 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %6, i32 0, i32 1
  %8 = load %struct.poll_table_page*, %struct.poll_table_page** %7, align 8
  store %struct.poll_table_page* %8, %struct.poll_table_page** %4, align 8
  %9 = load %struct.poll_wqueues*, %struct.poll_wqueues** %3, align 8
  %10 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @N_INLINE_POLL_ENTRIES, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.poll_wqueues*, %struct.poll_wqueues** %3, align 8
  %16 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %15, i32 0, i32 3
  %17 = load %struct.poll_table_entry*, %struct.poll_table_entry** %16, align 8
  %18 = load %struct.poll_wqueues*, %struct.poll_wqueues** %3, align 8
  %19 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds %struct.poll_table_entry, %struct.poll_table_entry* %17, i64 %20
  store %struct.poll_table_entry* %22, %struct.poll_table_entry** %2, align 8
  br label %61

23:                                               ; preds = %1
  %24 = load %struct.poll_table_page*, %struct.poll_table_page** %4, align 8
  %25 = icmp ne %struct.poll_table_page* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.poll_table_page*, %struct.poll_table_page** %4, align 8
  %28 = call i64 @POLL_TABLE_FULL(%struct.poll_table_page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i64 @__get_free_page(i32 %31)
  %33 = inttoptr i64 %32 to %struct.poll_table_page*
  store %struct.poll_table_page* %33, %struct.poll_table_page** %5, align 8
  %34 = load %struct.poll_table_page*, %struct.poll_table_page** %5, align 8
  %35 = icmp ne %struct.poll_table_page* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = load %struct.poll_wqueues*, %struct.poll_wqueues** %3, align 8
  %40 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  store %struct.poll_table_entry* null, %struct.poll_table_entry** %2, align 8
  br label %61

41:                                               ; preds = %30
  %42 = load %struct.poll_table_page*, %struct.poll_table_page** %5, align 8
  %43 = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.poll_table_page*, %struct.poll_table_page** %5, align 8
  %46 = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.poll_table_page*, %struct.poll_table_page** %4, align 8
  %48 = load %struct.poll_table_page*, %struct.poll_table_page** %5, align 8
  %49 = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %48, i32 0, i32 1
  store %struct.poll_table_page* %47, %struct.poll_table_page** %49, align 8
  %50 = load %struct.poll_table_page*, %struct.poll_table_page** %5, align 8
  %51 = load %struct.poll_wqueues*, %struct.poll_wqueues** %3, align 8
  %52 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %51, i32 0, i32 1
  store %struct.poll_table_page* %50, %struct.poll_table_page** %52, align 8
  %53 = load %struct.poll_table_page*, %struct.poll_table_page** %5, align 8
  store %struct.poll_table_page* %53, %struct.poll_table_page** %4, align 8
  br label %54

54:                                               ; preds = %41, %26
  %55 = load %struct.poll_table_page*, %struct.poll_table_page** %4, align 8
  %56 = getelementptr inbounds %struct.poll_table_page, %struct.poll_table_page* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = sext i32 %57 to i64
  %60 = inttoptr i64 %59 to %struct.poll_table_entry*
  store %struct.poll_table_entry* %60, %struct.poll_table_entry** %2, align 8
  br label %61

61:                                               ; preds = %54, %36, %14
  %62 = load %struct.poll_table_entry*, %struct.poll_table_entry** %2, align 8
  ret %struct.poll_table_entry* %62
}

declare dso_local i64 @POLL_TABLE_FULL(%struct.poll_table_page*) #1

declare dso_local i64 @__get_free_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
