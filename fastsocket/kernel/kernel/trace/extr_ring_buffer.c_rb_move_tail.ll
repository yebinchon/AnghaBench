; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_move_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_move_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32 }
%struct.ring_buffer_per_cpu = type { i64, i64, i64, i32, %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.buffer_page = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RB_FL_OVERWRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ring_buffer_event* (%struct.ring_buffer_per_cpu*, i64, i64, %struct.buffer_page*, %struct.buffer_page*, i32*)* @rb_move_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ring_buffer_event* @rb_move_tail(%struct.ring_buffer_per_cpu* %0, i64 %1, i64 %2, %struct.buffer_page* %3, %struct.buffer_page* %4, i32* %5) #0 {
  %7 = alloca %struct.ring_buffer_event*, align 8
  %8 = alloca %struct.ring_buffer_per_cpu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.buffer_page*, align 8
  %12 = alloca %struct.buffer_page*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ring_buffer*, align 8
  %15 = alloca %struct.buffer_page*, align 8
  %16 = alloca i32, align 4
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.buffer_page* %3, %struct.buffer_page** %11, align 8
  store %struct.buffer_page* %4, %struct.buffer_page** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %18 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %17, i32 0, i32 4
  %19 = load %struct.ring_buffer*, %struct.ring_buffer** %18, align 8
  store %struct.ring_buffer* %19, %struct.ring_buffer** %14, align 8
  %20 = load %struct.buffer_page*, %struct.buffer_page** %12, align 8
  store %struct.buffer_page* %20, %struct.buffer_page** %15, align 8
  %21 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %22 = call i32 @rb_inc_page(%struct.ring_buffer_per_cpu* %21, %struct.buffer_page** %15)
  %23 = load %struct.buffer_page*, %struct.buffer_page** %15, align 8
  %24 = load %struct.buffer_page*, %struct.buffer_page** %11, align 8
  %25 = icmp eq %struct.buffer_page* %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %31 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %30, i32 0, i32 3
  %32 = call i32 @local_inc(i32* %31)
  br label %121

33:                                               ; preds = %6
  %34 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %35 = load %struct.buffer_page*, %struct.buffer_page** %15, align 8
  %36 = load %struct.buffer_page*, %struct.buffer_page** %12, align 8
  %37 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %36, i32 0, i32 1
  %38 = call i64 @rb_is_head_page(%struct.ring_buffer_per_cpu* %34, %struct.buffer_page* %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %94

40:                                               ; preds = %33
  %41 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %42 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @rb_is_reader_page(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %40
  %47 = load %struct.ring_buffer*, %struct.ring_buffer** %14, align 8
  %48 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RB_FL_OVERWRITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %121

54:                                               ; preds = %46
  %55 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %56 = load %struct.buffer_page*, %struct.buffer_page** %12, align 8
  %57 = load %struct.buffer_page*, %struct.buffer_page** %15, align 8
  %58 = call i32 @rb_handle_head_page(%struct.ring_buffer_per_cpu* %55, %struct.buffer_page* %56, %struct.buffer_page* %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %121

62:                                               ; preds = %54
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %112

66:                                               ; preds = %62
  br label %93

67:                                               ; preds = %40
  %68 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %69 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %72 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %67
  %76 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %77 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %80 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br label %83

83:                                               ; preds = %75, %67
  %84 = phi i1 [ false, %67 ], [ %82, %75 ]
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %90 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %89, i32 0, i32 3
  %91 = call i32 @local_inc(i32* %90)
  br label %121

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %66
  br label %94

94:                                               ; preds = %93, %33
  %95 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %96 = load %struct.buffer_page*, %struct.buffer_page** %12, align 8
  %97 = load %struct.buffer_page*, %struct.buffer_page** %15, align 8
  %98 = call i32 @rb_tail_page_update(%struct.ring_buffer_per_cpu* %95, %struct.buffer_page* %96, %struct.buffer_page* %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %94
  %102 = load %struct.ring_buffer*, %struct.ring_buffer** %14, align 8
  %103 = call i32 @rb_time_stamp(%struct.ring_buffer* %102)
  %104 = load i32*, i32** %13, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.buffer_page*, %struct.buffer_page** %15, align 8
  %108 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 4
  br label %111

111:                                              ; preds = %101, %94
  br label %112

112:                                              ; preds = %111, %65
  %113 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %114 = load %struct.buffer_page*, %struct.buffer_page** %12, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @rb_reset_tail(%struct.ring_buffer_per_cpu* %113, %struct.buffer_page* %114, i64 %115, i64 %116)
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = sub nsw i32 0, %118
  %120 = call %struct.ring_buffer_event* @ERR_PTR(i32 %119)
  store %struct.ring_buffer_event* %120, %struct.ring_buffer_event** %7, align 8
  br label %127

121:                                              ; preds = %88, %61, %53, %29
  %122 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %123 = load %struct.buffer_page*, %struct.buffer_page** %12, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @rb_reset_tail(%struct.ring_buffer_per_cpu* %122, %struct.buffer_page* %123, i64 %124, i64 %125)
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %7, align 8
  br label %127

127:                                              ; preds = %121, %112
  %128 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  ret %struct.ring_buffer_event* %128
}

declare dso_local i32 @rb_inc_page(%struct.ring_buffer_per_cpu*, %struct.buffer_page**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_inc(i32*) #1

declare dso_local i64 @rb_is_head_page(%struct.ring_buffer_per_cpu*, %struct.buffer_page*, i32*) #1

declare dso_local i32 @rb_is_reader_page(i64) #1

declare dso_local i32 @rb_handle_head_page(%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*) #1

declare dso_local i32 @rb_tail_page_update(%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*) #1

declare dso_local i32 @rb_time_stamp(%struct.ring_buffer*) #1

declare dso_local i32 @rb_reset_tail(%struct.ring_buffer_per_cpu*, %struct.buffer_page*, i64, i64) #1

declare dso_local %struct.ring_buffer_event* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
