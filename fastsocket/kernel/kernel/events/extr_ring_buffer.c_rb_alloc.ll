; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_ring_buffer.c_rb_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_ring_buffer.c_rb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { i32, i8*, i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer* @rb_alloc(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ring_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ring_buffer*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 24, i64* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = load i64, i64* %11, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ring_buffer* @kzalloc(i64 %18, i32 %19)
  store %struct.ring_buffer* %20, %struct.ring_buffer** %10, align 8
  %21 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %22 = icmp ne %struct.ring_buffer* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %98

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = call i8* @perf_mmap_alloc_page(i32 %25)
  %27 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %28 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %30 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %95

34:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %58, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = call i8* @perf_mmap_alloc_page(i32 %40)
  %42 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %43 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %41, i8** %47, align 8
  %48 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %49 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %48, i32 0, i32 2
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %39
  br label %70

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %35

61:                                               ; preds = %35
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %64 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @ring_buffer_init(%struct.ring_buffer* %65, i64 %66, i32 %67)
  %69 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  store %struct.ring_buffer* %69, %struct.ring_buffer** %5, align 8
  br label %99

70:                                               ; preds = %56
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %86, %70
  %74 = load i32, i32* %12, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %78 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %77, i32 0, i32 2
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = call i32 @free_page(i64 %84)
  br label %86

86:                                               ; preds = %76
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %12, align 4
  br label %73

89:                                               ; preds = %73
  %90 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %91 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = call i32 @free_page(i64 %93)
  br label %95

95:                                               ; preds = %89, %33
  %96 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %97 = call i32 @kfree(%struct.ring_buffer* %96)
  br label %98

98:                                               ; preds = %95, %23
  store %struct.ring_buffer* null, %struct.ring_buffer** %5, align 8
  br label %99

99:                                               ; preds = %98, %61
  %100 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  ret %struct.ring_buffer* %100
}

declare dso_local %struct.ring_buffer* @kzalloc(i64, i32) #1

declare dso_local i8* @perf_mmap_alloc_page(i32) #1

declare dso_local i32 @ring_buffer_init(%struct.ring_buffer*, i64, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
