; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_handle_head_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_handle_head_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { %struct.buffer_page*, i32 }
%struct.buffer_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*)* @rb_handle_head_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_handle_head_page(%struct.ring_buffer_per_cpu* %0, %struct.buffer_page* %1, %struct.buffer_page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ring_buffer_per_cpu*, align 8
  %6 = alloca %struct.buffer_page*, align 8
  %7 = alloca %struct.buffer_page*, align 8
  %8 = alloca %struct.buffer_page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %5, align 8
  store %struct.buffer_page* %1, %struct.buffer_page** %6, align 8
  store %struct.buffer_page* %2, %struct.buffer_page** %7, align 8
  %12 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %13 = call i32 @rb_page_entries(%struct.buffer_page* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %15 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %16 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %17 = call i32 @rb_head_page_set_update(%struct.ring_buffer_per_cpu* %14, %struct.buffer_page* %15, %struct.buffer_page* %16, i32 131)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %27 [
    i32 131, label %19
    i32 128, label %24
    i32 129, label %25
    i32 130, label %26
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %22 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %21, i32 0, i32 1
  %23 = call i32 @local_add(i32 %20, i32* %22)
  br label %30

24:                                               ; preds = %3
  br label %30

25:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %81

26:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %81

27:                                               ; preds = %3
  %28 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %29 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %28, i32 1)
  store i32 -1, i32* %4, align 4
  br label %81

30:                                               ; preds = %24, %19
  %31 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  store %struct.buffer_page* %31, %struct.buffer_page** %8, align 8
  %32 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %33 = call i32 @rb_inc_page(%struct.ring_buffer_per_cpu* %32, %struct.buffer_page** %8)
  %34 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %35 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %36 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %37 = call i32 @rb_head_page_set_head(%struct.ring_buffer_per_cpu* %34, %struct.buffer_page* %35, %struct.buffer_page* %36, i32 129)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  switch i32 %38, label %40 [
    i32 131, label %39
    i32 129, label %39
  ]

39:                                               ; preds = %30, %30
  br label %43

40:                                               ; preds = %30
  %41 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %42 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %41, i32 1)
  store i32 -1, i32* %4, align 4
  br label %81

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 129
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %48 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %47, i32 0, i32 0
  %49 = load %struct.buffer_page*, %struct.buffer_page** %48, align 8
  %50 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %51 = icmp ne %struct.buffer_page* %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %54 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %53, i32 0, i32 0
  %55 = load %struct.buffer_page*, %struct.buffer_page** %54, align 8
  %56 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %57 = icmp ne %struct.buffer_page* %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %60 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %61 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %62 = call i32 @rb_head_page_set_normal(%struct.ring_buffer_per_cpu* %59, %struct.buffer_page* %60, %struct.buffer_page* %61, i32 131)
  br label %63

63:                                               ; preds = %58, %52, %46
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 131
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %69 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %70 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %71 = call i32 @rb_head_page_set_normal(%struct.ring_buffer_per_cpu* %68, %struct.buffer_page* %69, %struct.buffer_page* %70, i32 128)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 128
  %75 = zext i1 %74 to i32
  %76 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  store i32 -1, i32* %4, align 4
  br label %81

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %64
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %78, %40, %27, %26, %25
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @rb_page_entries(%struct.buffer_page*) #1

declare dso_local i32 @rb_head_page_set_update(%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*, i32) #1

declare dso_local i32 @local_add(i32, i32*) #1

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i32 @rb_inc_page(%struct.ring_buffer_per_cpu*, %struct.buffer_page**) #1

declare dso_local i32 @rb_head_page_set_head(%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*, i32) #1

declare dso_local i32 @rb_head_page_set_normal(%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
