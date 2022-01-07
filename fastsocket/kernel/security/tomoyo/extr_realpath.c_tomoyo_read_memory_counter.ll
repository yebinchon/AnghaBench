; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_realpath.c_tomoyo_read_memory_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_realpath.c_tomoyo_read_memory_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i32 }

@tomoyo_allocated_memory_for_savename = common dso_local global i32 0, align 4
@tomoyo_allocated_memory_for_elements = common dso_local global i32 0, align 4
@tomoyo_dynamic_memory_size = common dso_local global i32 0, align 4
@tomoyo_quota_for_savename = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"   (Quota: %10u)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Shared:  %10u%s\0A\00", align 1
@tomoyo_quota_for_elements = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Private: %10u%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Dynamic: %10u\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Total:   %10u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_read_memory_counter(%struct.tomoyo_io_buffer* %0) #0 {
  %2 = alloca %struct.tomoyo_io_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %2, align 8
  %7 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %55, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @tomoyo_allocated_memory_for_savename, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @tomoyo_allocated_memory_for_elements, align 4
  store i32 %13, i32* %4, align 4
  %14 = call i32 @atomic_read(i32* @tomoyo_dynamic_memory_size)
  store i32 %14, i32* %5, align 4
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i32 0, i32 64)
  %17 = load i32, i32* @tomoyo_quota_for_savename, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %21 = load i32, i32* @tomoyo_quota_for_savename, align 4
  %22 = call i32 @snprintf(i8* %20, i32 63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %25

23:                                               ; preds = %11
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %24, align 16
  br label %25

25:                                               ; preds = %23, %19
  %26 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %29 = call i32 (%struct.tomoyo_io_buffer*, i8*, i32, ...) @tomoyo_io_printf(%struct.tomoyo_io_buffer* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %27, i8* %28)
  %30 = load i32, i32* @tomoyo_quota_for_elements, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %34 = load i32, i32* @tomoyo_quota_for_elements, align 4
  %35 = call i32 @snprintf(i8* %33, i32 63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %38

36:                                               ; preds = %25
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %37, align 16
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %42 = call i32 (%struct.tomoyo_io_buffer*, i8*, i32, ...) @tomoyo_io_printf(%struct.tomoyo_io_buffer* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %40, i8* %41)
  %43 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (%struct.tomoyo_io_buffer*, i8*, i32, ...) @tomoyo_io_printf(%struct.tomoyo_io_buffer* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %49, %50
  %52 = call i32 (%struct.tomoyo_io_buffer*, i8*, i32, ...) @tomoyo_io_printf(%struct.tomoyo_io_buffer* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %54 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %38, %1
  ret i32 0
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
