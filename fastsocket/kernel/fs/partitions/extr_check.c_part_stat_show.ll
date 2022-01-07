; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_check.c_part_stat_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_check.c_part_stat_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hd_struct = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"%8lu %8lu %8llu %8u %8lu %8lu %8llu %8u %8u %8u %8u\0A\00", align 1
@ios = common dso_local global i32* null, align 8
@READ = common dso_local global i64 0, align 8
@merges = common dso_local global i32* null, align 8
@sectors = common dso_local global i32* null, align 8
@ticks = common dso_local global i32* null, align 8
@WRITE = common dso_local global i64 0, align 8
@io_ticks = common dso_local global i32 0, align 4
@time_in_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @part_stat_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hd_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.hd_struct* @dev_to_part(%struct.device* %9)
  store %struct.hd_struct* %10, %struct.hd_struct** %7, align 8
  %11 = call i32 (...) @part_stat_lock()
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %14 = call i32 @part_round_stats(i32 %12, %struct.hd_struct* %13)
  %15 = call i32 (...) @part_stat_unlock()
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %18 = load i32*, i32** @ios, align 8
  %19 = load i64, i64* @READ, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @part_stat_read(%struct.hd_struct* %17, i32 %21)
  %23 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %24 = load i32*, i32** @merges, align 8
  %25 = load i64, i64* @READ, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @part_stat_read(%struct.hd_struct* %23, i32 %27)
  %29 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %30 = load i32*, i32** @sectors, align 8
  %31 = load i64, i64* @READ, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @part_stat_read(%struct.hd_struct* %29, i32 %33)
  %35 = sext i32 %34 to i64
  %36 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %37 = load i32*, i32** @ticks, align 8
  %38 = load i64, i64* @READ, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @part_stat_read(%struct.hd_struct* %36, i32 %40)
  %42 = call i32 @jiffies_to_msecs(i32 %41)
  %43 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %44 = load i32*, i32** @ios, align 8
  %45 = load i64, i64* @WRITE, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @part_stat_read(%struct.hd_struct* %43, i32 %47)
  %49 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %50 = load i32*, i32** @merges, align 8
  %51 = load i64, i64* @WRITE, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @part_stat_read(%struct.hd_struct* %49, i32 %53)
  %55 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %56 = load i32*, i32** @sectors, align 8
  %57 = load i64, i64* @WRITE, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @part_stat_read(%struct.hd_struct* %55, i32 %59)
  %61 = sext i32 %60 to i64
  %62 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %63 = load i32*, i32** @ticks, align 8
  %64 = load i64, i64* @WRITE, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @part_stat_read(%struct.hd_struct* %62, i32 %66)
  %68 = call i32 @jiffies_to_msecs(i32 %67)
  %69 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %70 = call i32 @part_in_flight(%struct.hd_struct* %69)
  %71 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %72 = load i32, i32* @io_ticks, align 4
  %73 = call i32 @part_stat_read(%struct.hd_struct* %71, i32 %72)
  %74 = call i32 @jiffies_to_msecs(i32 %73)
  %75 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %76 = load i32, i32* @time_in_queue, align 4
  %77 = call i32 @part_stat_read(%struct.hd_struct* %75, i32 %76)
  %78 = call i32 @jiffies_to_msecs(i32 %77)
  %79 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %28, i64 %35, i32 %42, i32 %48, i32 %54, i64 %61, i32 %68, i32 %70, i32 %74, i32 %78)
  ret i32 %79
}

declare dso_local %struct.hd_struct* @dev_to_part(%struct.device*) #1

declare dso_local i32 @part_stat_lock(...) #1

declare dso_local i32 @part_round_stats(i32, %struct.hd_struct*) #1

declare dso_local i32 @part_stat_unlock(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @part_stat_read(%struct.hd_struct*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @part_in_flight(%struct.hd_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
