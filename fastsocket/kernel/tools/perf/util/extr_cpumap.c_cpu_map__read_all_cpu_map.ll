; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_cpumap.c_cpu_map__read_all_cpu_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_cpumap.c_cpu_map__read_all_cpu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_map = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"/sys/devices/system/cpu/online\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpu_map* ()* @cpu_map__read_all_cpu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpu_map* @cpu_map__read_all_cpu_map() #0 {
  %1 = alloca %struct.cpu_map*, align 8
  %2 = alloca %struct.cpu_map*, align 8
  %3 = alloca i32*, align 8
  store %struct.cpu_map* null, %struct.cpu_map** %2, align 8
  %4 = call i32* @fopen(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call %struct.cpu_map* (...) @cpu_map__default_new()
  store %struct.cpu_map* %8, %struct.cpu_map** %1, align 8
  br label %15

9:                                                ; preds = %0
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.cpu_map* @cpu_map__read(i32* %10)
  store %struct.cpu_map* %11, %struct.cpu_map** %2, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @fclose(i32* %12)
  %14 = load %struct.cpu_map*, %struct.cpu_map** %2, align 8
  store %struct.cpu_map* %14, %struct.cpu_map** %1, align 8
  br label %15

15:                                               ; preds = %9, %7
  %16 = load %struct.cpu_map*, %struct.cpu_map** %1, align 8
  ret %struct.cpu_map* %16
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local %struct.cpu_map* @cpu_map__default_new(...) #1

declare dso_local %struct.cpu_map* @cpu_map__read(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
