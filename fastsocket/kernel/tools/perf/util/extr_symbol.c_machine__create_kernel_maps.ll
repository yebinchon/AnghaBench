; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__create_kernel_maps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__create_kernel_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.machine = type { i32, i32 }
%struct.dso = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [53 x i8] c"Problems creating module maps, continuing anyway...\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Problems creating module maps for guest %d, continuing anyway...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__create_kernel_maps(%struct.machine* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.machine*, align 8
  %4 = alloca %struct.dso*, align 8
  store %struct.machine* %0, %struct.machine** %3, align 8
  %5 = load %struct.machine*, %struct.machine** %3, align 8
  %6 = call %struct.dso* @machine__get_kernel(%struct.machine* %5)
  store %struct.dso* %6, %struct.dso** %4, align 8
  %7 = load %struct.dso*, %struct.dso** %4, align 8
  %8 = icmp eq %struct.dso* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.machine*, %struct.machine** %3, align 8
  %11 = load %struct.dso*, %struct.dso** %4, align 8
  %12 = call i64 @__machine__create_kernel_maps(%struct.machine* %10, %struct.dso* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i32 -1, i32* %2, align 4
  br label %38

15:                                               ; preds = %9
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load %struct.machine*, %struct.machine** %3, align 8
  %20 = call i64 @machine__create_modules(%struct.machine* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.machine*, %struct.machine** %3, align 8
  %24 = call i64 @machine__is_host(%struct.machine* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %33

28:                                               ; preds = %22
  %29 = load %struct.machine*, %struct.machine** %3, align 8
  %30 = getelementptr inbounds %struct.machine, %struct.machine* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %26
  br label %34

34:                                               ; preds = %33, %18, %15
  %35 = load %struct.machine*, %struct.machine** %3, align 8
  %36 = getelementptr inbounds %struct.machine, %struct.machine* %35, i32 0, i32 0
  %37 = call i32 @map_groups__fixup_end(i32* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.dso* @machine__get_kernel(%struct.machine*) #1

declare dso_local i64 @__machine__create_kernel_maps(%struct.machine*, %struct.dso*) #1

declare dso_local i64 @machine__create_modules(%struct.machine*) #1

declare dso_local i64 @machine__is_host(%struct.machine*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @map_groups__fixup_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
