; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timer_stats.c_tstats_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timer_stats.c_tstats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i64, i64, i64, i32, i32 }
%struct.seq_file = type { i32 }
%struct.timespec = type { i32, i32 }

@show_mutex = common dso_local global i32 0, align 4
@timer_stats_active = common dso_local global i64 0, align 8
@time_stop = common dso_local global i32 0, align 4
@time_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Timer Stats Version: v0.2\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Sample period: %ld.%03ld s\0A\00", align 1
@overflow_count = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Overflow: %d entries\0A\00", align 1
@nr_entries = common dso_local global i32 0, align 4
@entries = common dso_local global %struct.entry* null, align 8
@TIMER_STATS_FLAG_DEFERRABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%4luD, %5d %-16s \00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c" %4lu, %5d %-16s \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"%ld total events, %ld.%03ld events/sec\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%ld total events\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tstats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tstats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.timespec, align 4
  %6 = alloca %struct.entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %8, align 8
  %12 = call i32 @mutex_lock(i32* @show_mutex)
  %13 = load i64, i64* @timer_stats_active, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @ktime_get()
  store i32 %16, i32* @time_stop, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32, i32* @time_stop, align 4
  %19 = load i32, i32* @time_start, align 4
  %20 = call i32 @ktime_sub(i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @ktime_to_timespec(i32 %21)
  %23 = bitcast %struct.timespec* %11 to i64*
  store i64 %22, i64* %23, align 4
  %24 = bitcast %struct.timespec* %5 to i8*
  %25 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 8, i1 false)
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 1000000
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = call i32 @seq_puts(%struct.seq_file* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %7, align 8
  %37 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %35, i64 %36)
  %38 = call i64 @atomic_read(i32* @overflow_count)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %17
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = call i64 @atomic_read(i32* @overflow_count)
  %43 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %40, %17
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %104, %44
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @nr_entries, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %107

49:                                               ; preds = %45
  %50 = load %struct.entry*, %struct.entry** @entries, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.entry, %struct.entry* %50, i64 %52
  store %struct.entry* %53, %struct.entry** %6, align 8
  %54 = load %struct.entry*, %struct.entry** %6, align 8
  %55 = getelementptr inbounds %struct.entry, %struct.entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TIMER_STATS_FLAG_DEFERRABLE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %49
  %61 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %62 = load %struct.entry*, %struct.entry** %6, align 8
  %63 = getelementptr inbounds %struct.entry, %struct.entry* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.entry*, %struct.entry** %6, align 8
  %66 = getelementptr inbounds %struct.entry, %struct.entry* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.entry*, %struct.entry** %6, align 8
  %69 = getelementptr inbounds %struct.entry, %struct.entry* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %64, i32 %67, i32 %70)
  br label %84

72:                                               ; preds = %49
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = load %struct.entry*, %struct.entry** %6, align 8
  %75 = getelementptr inbounds %struct.entry, %struct.entry* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.entry*, %struct.entry** %6, align 8
  %78 = getelementptr inbounds %struct.entry, %struct.entry* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.entry*, %struct.entry** %6, align 8
  %81 = getelementptr inbounds %struct.entry, %struct.entry* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %76, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %72, %60
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = load %struct.entry*, %struct.entry** %6, align 8
  %87 = getelementptr inbounds %struct.entry, %struct.entry* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @print_name_offset(%struct.seq_file* %85, i64 %88)
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = call i32 @seq_puts(%struct.seq_file* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %92 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %93 = load %struct.entry*, %struct.entry** %6, align 8
  %94 = getelementptr inbounds %struct.entry, %struct.entry* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @print_name_offset(%struct.seq_file* %92, i64 %95)
  %97 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %98 = call i32 @seq_puts(%struct.seq_file* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %99 = load %struct.entry*, %struct.entry** %6, align 8
  %100 = getelementptr inbounds %struct.entry, %struct.entry* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %8, align 8
  br label %104

104:                                              ; preds = %84
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %45

107:                                              ; preds = %45
  %108 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 1000
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %7, align 8
  %114 = load i64, i64* %7, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %107
  store i64 1, i64* %7, align 8
  br label %117

117:                                              ; preds = %116, %107
  %118 = load i64, i64* %8, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %8, align 8
  %128 = mul nsw i64 %127, 1000
  %129 = load i64, i64* %7, align 8
  %130 = udiv i64 %128, %129
  %131 = load i64, i64* %8, align 8
  %132 = mul nsw i64 %131, 1000000
  %133 = load i64, i64* %7, align 8
  %134 = udiv i64 %132, %133
  %135 = urem i64 %134, 1000
  %136 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i64 %126, i64 %130, i64 %135)
  br label %141

137:                                              ; preds = %120, %117
  %138 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %139 = load i64, i64* %8, align 8
  %140 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i64 %139)
  br label %141

141:                                              ; preds = %137, %124
  %142 = call i32 @mutex_unlock(i32* @show_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i64 @ktime_to_timespec(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @print_name_offset(%struct.seq_file*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
