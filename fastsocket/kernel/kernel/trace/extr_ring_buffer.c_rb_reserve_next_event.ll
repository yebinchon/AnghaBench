; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_reserve_next_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_reserve_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i64 }
%struct.ring_buffer = type { i32 }
%struct.ring_buffer_per_cpu = type { i64, i64, i64, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ring_buffer_event* (%struct.ring_buffer*, %struct.ring_buffer_per_cpu*, i64)* @rb_reserve_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ring_buffer_event* @rb_reserve_next_event(%struct.ring_buffer* %0, %struct.ring_buffer_per_cpu* %1, i64 %2) #0 {
  %4 = alloca %struct.ring_buffer_event*, align 8
  %5 = alloca %struct.ring_buffer*, align 8
  %6 = alloca %struct.ring_buffer_per_cpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ring_buffer_event*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %5, align 8
  store %struct.ring_buffer_per_cpu* %1, %struct.ring_buffer_per_cpu** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %15 = call i32 @rb_start_commit(%struct.ring_buffer_per_cpu* %14)
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @rb_calculate_event_length(i64 %16)
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %108, %87, %3
  %19 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %20 = load i32, i32* %12, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %12, align 4
  %22 = icmp sgt i32 %21, 1000
  %23 = zext i1 %22 to i32
  %24 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %124

27:                                               ; preds = %18
  %28 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %29 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @rb_time_stamp(i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %33 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %36 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %41 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @rb_page_write(i64 %42)
  %44 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %45 = call i64 @rb_commit_index(%struct.ring_buffer_per_cpu* %44)
  %46 = icmp eq i64 %43, %45
  br label %47

47:                                               ; preds = %39, %27
  %48 = phi i1 [ false, %27 ], [ %46, %39 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @likely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %95

52:                                               ; preds = %47
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %55 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  store i64 %57, i64* %13, align 8
  %58 = call i32 (...) @barrier()
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %61 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %96

68:                                               ; preds = %52
  %69 = load i64, i64* %13, align 8
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @test_time_stamp(i64 %70)
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %68
  %75 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %76 = call i32 @rb_add_time_stamp(%struct.ring_buffer_per_cpu* %75, i64* %9, i64* %10)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %124

82:                                               ; preds = %74
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @EAGAIN, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %18

88:                                               ; preds = %82
  %89 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %89, i32 %92)
  br label %94

94:                                               ; preds = %88, %68
  br label %95

95:                                               ; preds = %94, %47
  br label %96

96:                                               ; preds = %95, %67
  %97 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call %struct.ring_buffer_event* @__rb_reserve_next(%struct.ring_buffer_per_cpu* %97, i32 0, i64 %98, i64* %9)
  store %struct.ring_buffer_event* %99, %struct.ring_buffer_event** %8, align 8
  %100 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %101 = call i32 @PTR_ERR(%struct.ring_buffer_event* %100)
  %102 = load i32, i32* @EAGAIN, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  br label %18

109:                                              ; preds = %96
  %110 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %111 = icmp ne %struct.ring_buffer_event* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  br label %124

113:                                              ; preds = %109
  %114 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %115 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %116 = call i32 @rb_event_is_commit(%struct.ring_buffer_per_cpu* %114, %struct.ring_buffer_event* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  store i64 0, i64* %10, align 8
  br label %119

119:                                              ; preds = %118, %113
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %122 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  store %struct.ring_buffer_event* %123, %struct.ring_buffer_event** %4, align 8
  br label %127

124:                                              ; preds = %112, %81, %26
  %125 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %126 = call i32 @rb_end_commit(%struct.ring_buffer_per_cpu* %125)
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %4, align 8
  br label %127

127:                                              ; preds = %124, %119
  %128 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  ret %struct.ring_buffer_event* %128
}

declare dso_local i32 @rb_start_commit(%struct.ring_buffer_per_cpu*) #1

declare dso_local i64 @rb_calculate_event_length(i64) #1

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i64 @rb_time_stamp(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @rb_page_write(i64) #1

declare dso_local i64 @rb_commit_index(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_time_stamp(i64) #1

declare dso_local i32 @rb_add_time_stamp(%struct.ring_buffer_per_cpu*, i64*, i64*) #1

declare dso_local %struct.ring_buffer_event* @__rb_reserve_next(%struct.ring_buffer_per_cpu*, i32, i64, i64*) #1

declare dso_local i32 @PTR_ERR(%struct.ring_buffer_event*) #1

declare dso_local i32 @rb_event_is_commit(%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*) #1

declare dso_local i32 @rb_end_commit(%struct.ring_buffer_per_cpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
