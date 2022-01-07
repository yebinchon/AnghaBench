; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_alloc_page_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_alloc_page_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i64, %struct.buffer_head*, i32*, i32, i64, i32* }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @alloc_page_buffers(%struct.page* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  br label %11

11:                                               ; preds = %70, %3
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %12 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %12, i64* %10, align 8
  br label %13

13:                                               ; preds = %24, %11
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %10, align 8
  %16 = sub i64 %15, %14
  store i64 %16, i64* %10, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %13
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call %struct.buffer_head* @alloc_buffer_head(i32 %19)
  store %struct.buffer_head* %20, %struct.buffer_head** %8, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %22 = icmp ne %struct.buffer_head* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %51

24:                                               ; preds = %18
  %25 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 6
  store i32* null, i32** %26, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 2
  store %struct.buffer_head* %27, %struct.buffer_head** %29, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %32, %struct.buffer_head** %9, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 4
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %44 = load %struct.page*, %struct.page** %5, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @set_bh_page(%struct.buffer_head* %43, %struct.page* %44, i64 %45)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %48 = call i32 @init_buffer(%struct.buffer_head* %47, i32* null, i32* null)
  br label %13

49:                                               ; preds = %13
  %50 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %50, %struct.buffer_head** %4, align 8
  br label %72

51:                                               ; preds = %23
  %52 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %53 = icmp ne %struct.buffer_head* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %62, %54
  %56 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %56, %struct.buffer_head** %8, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 2
  %59 = load %struct.buffer_head*, %struct.buffer_head** %58, align 8
  store %struct.buffer_head* %59, %struct.buffer_head** %9, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %61 = call i32 @free_buffer_head(%struct.buffer_head* %60)
  br label %62

62:                                               ; preds = %55
  %63 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %64 = icmp ne %struct.buffer_head* %63, null
  br i1 %64, label %55, label %65

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %72

70:                                               ; preds = %66
  %71 = call i32 (...) @free_more_memory()
  br label %11

72:                                               ; preds = %69, %49
  %73 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %73
}

declare dso_local %struct.buffer_head* @alloc_buffer_head(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bh_page(%struct.buffer_head*, %struct.page*, i64) #1

declare dso_local i32 @init_buffer(%struct.buffer_head*, i32*, i32*) #1

declare dso_local i32 @free_buffer_head(%struct.buffer_head*) #1

declare dso_local i32 @free_more_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
