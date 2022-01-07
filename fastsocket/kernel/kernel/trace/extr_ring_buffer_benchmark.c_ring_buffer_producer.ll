; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer_benchmark.c_ring_buffer_producer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer_benchmark.c_ring_buffer_producer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.ring_buffer_event = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Starting ring buffer hammer\0A\00", align 1
@buffer = common dso_local global i32 0, align 4
@consumer = common dso_local global i64 0, align 8
@wakeup_interval = common dso_local global i32 0, align 4
@RUN_TIME = common dso_local global i64 0, align 8
@kill_test = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"End ring buffer hammer\0A\00", align 1
@read_start = common dso_local global i32 0, align 4
@read_done = common dso_local global i32 0, align 4
@reader_finish = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"ERROR!\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Time:     %lld (usecs)\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Overruns: %lld\0A\00", align 1
@disable_reader = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Read:     (reader disabled)\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Read:     %ld  (by %s)\0A\00", align 1
@read = common dso_local global i64 0, align 8
@read_events = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pages\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Entries:  %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Total:    %lld\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Missed:   %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Hit:      %ld\0A\00", align 1
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"TIME IS ZERO??\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Entries per millisec: %ld\0A\00", align 1
@NSEC_PER_MSEC = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [18 x i8] c"%ld ns per entry\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Total iterations per millisec: %ld\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"hit + missed overflowed and totalled zero!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ring_buffer_producer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring_buffer_producer() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ring_buffer_event*, align 8
  %11 = alloca i32*, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %12 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @do_gettimeofday(%struct.timeval* %1)
  br label %14

14:                                               ; preds = %66, %0
  %15 = load i32, i32* @buffer, align 4
  %16 = call %struct.ring_buffer_event* @ring_buffer_lock_reserve(i32 %15, i32 10)
  store %struct.ring_buffer_event* %16, %struct.ring_buffer_event** %10, align 8
  %17 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %18 = icmp ne %struct.ring_buffer_event* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %6, align 8
  br label %32

22:                                               ; preds = %14
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %7, align 8
  %25 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %26 = call i32* @ring_buffer_event_data(%struct.ring_buffer_event* %25)
  store i32* %26, i32** %11, align 8
  %27 = call i32 (...) @smp_processor_id()
  %28 = load i32*, i32** %11, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @buffer, align 4
  %30 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %31 = call i32 @ring_buffer_unlock_commit(i32 %29, %struct.ring_buffer_event* %30)
  br label %32

32:                                               ; preds = %22, %19
  %33 = call i32 @do_gettimeofday(%struct.timeval* %2)
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* @consumer, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @wakeup_interval, align 4
  %41 = srem i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* @consumer, align 8
  %45 = call i32 @wake_up_process(i64 %44)
  br label %46

46:                                               ; preds = %43, %38, %32
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @wakeup_interval, align 4
  %49 = srem i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (...) @cond_resched()
  br label %53

53:                                               ; preds = %51, %46
  br label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RUN_TIME, align 8
  %60 = add nsw i64 %58, %59
  %61 = icmp slt i64 %56, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load i64, i64* @kill_test, align 8
  %64 = icmp ne i64 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %62, %54
  %67 = phi i1 [ false, %54 ], [ %65, %62 ]
  br i1 %67, label %14, label %68

68:                                               ; preds = %66
  %69 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i64, i64* @consumer, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = call i32 @init_completion(i32* @read_start)
  %74 = call i32 @init_completion(i32* @read_done)
  %75 = call i32 (...) @smp_wmb()
  store i32 1, i32* @reader_finish, align 4
  %76 = call i32 (...) @smp_wmb()
  %77 = load i64, i64* @consumer, align 8
  %78 = call i32 @wake_up_process(i64 %77)
  %79 = call i32 @wait_for_completion(i32* @read_done)
  br label %80

80:                                               ; preds = %72, %68
  %81 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %82, %84
  store i64 %85, i64* %3, align 8
  %86 = load i64, i64* @USEC_PER_SEC, align 8
  %87 = load i64, i64* %3, align 8
  %88 = mul i64 %87, %86
  store i64 %88, i64* %3, align 8
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %90, %92
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %3, align 8
  %96 = load i32, i32* @buffer, align 4
  %97 = call i64 @ring_buffer_entries(i32 %96)
  store i64 %97, i64* %4, align 8
  %98 = load i32, i32* @buffer, align 4
  %99 = call i64 @ring_buffer_overruns(i32 %98)
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* @kill_test, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %80
  %103 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %80
  %105 = load i64, i64* %3, align 8
  %106 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %105)
  %107 = load i64, i64* %5, align 8
  %108 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %107)
  %109 = load i64, i64* @disable_reader, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %120

113:                                              ; preds = %104
  %114 = load i64, i64* @read, align 8
  %115 = load i64, i64* @read_events, align 8
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)
  %119 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i64 %114, i8* %118)
  br label %120

120:                                              ; preds = %113, %111
  %121 = load i64, i64* %4, align 8
  %122 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64 %121)
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* %5, align 8
  %125 = add i64 %123, %124
  %126 = load i64, i64* @read, align 8
  %127 = add i64 %125, %126
  %128 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i64 %127)
  %129 = load i64, i64* %6, align 8
  %130 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i64 %129)
  %131 = load i64, i64* %7, align 8
  %132 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i64 %131)
  %133 = load i64, i64* %3, align 8
  %134 = load i32, i32* @USEC_PER_MSEC, align 4
  %135 = call i32 @do_div(i64 %133, i32 %134)
  %136 = load i64, i64* %3, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %120
  %139 = load i64, i64* %3, align 8
  %140 = load i64, i64* %7, align 8
  %141 = udiv i64 %140, %139
  store i64 %141, i64* %7, align 8
  br label %144

142:                                              ; preds = %120
  %143 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %138
  %145 = load i64, i64* %7, align 8
  %146 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i64 %145)
  %147 = load i64, i64* %7, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i64, i64* @NSEC_PER_MSEC, align 8
  %151 = load i64, i64* %7, align 8
  %152 = udiv i64 %150, %151
  store i64 %152, i64* %8, align 8
  %153 = load i64, i64* %8, align 8
  %154 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i64 %153)
  br label %155

155:                                              ; preds = %149, %144
  %156 = load i64, i64* %6, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %186

158:                                              ; preds = %155
  %159 = load i64, i64* %3, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i64, i64* %3, align 8
  %163 = load i64, i64* %6, align 8
  %164 = udiv i64 %163, %162
  store i64 %164, i64* %6, align 8
  br label %165

165:                                              ; preds = %161, %158
  %166 = load i64, i64* %7, align 8
  %167 = load i64, i64* %6, align 8
  %168 = add i64 %166, %167
  %169 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i64 %168)
  %170 = load i64, i64* %7, align 8
  %171 = load i64, i64* %6, align 8
  %172 = add i64 %170, %171
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %165
  %175 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0))
  %176 = load i64, i64* %7, align 8
  %177 = add i64 %176, -1
  store i64 %177, i64* %7, align 8
  br label %178

178:                                              ; preds = %174, %165
  %179 = load i64, i64* @NSEC_PER_MSEC, align 8
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* %6, align 8
  %182 = add i64 %180, %181
  %183 = udiv i64 %179, %182
  store i64 %183, i64* %8, align 8
  %184 = load i64, i64* %8, align 8
  %185 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i64 %184)
  br label %186

186:                                              ; preds = %178, %155
  ret void
}

declare dso_local i32 @trace_printk(i8*, ...) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local %struct.ring_buffer_event* @ring_buffer_lock_reserve(i32, i32) #1

declare dso_local i32* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @ring_buffer_unlock_commit(i32, %struct.ring_buffer_event*) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @ring_buffer_entries(i32) #1

declare dso_local i64 @ring_buffer_overruns(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
