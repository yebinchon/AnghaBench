; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-buildid-list.c_perf_session__list_build_ids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-buildid-list.c_perf_session__list_build_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i64, i32 }

@input_name = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@build_id__mark_dso_hit_ops = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @perf_session__list_build_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_session__list_build_ids(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_session*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @symbol__elf_init()
  %8 = load i32, i32* @input_name, align 4
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.perf_session* @perf_session__new(i32 %8, i32 %9, i32 %10, i32 0, i32* @build_id__mark_dso_hit_ops)
  store %struct.perf_session* %11, %struct.perf_session** %6, align 8
  %12 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %13 = icmp eq %struct.perf_session* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %17 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @stdout, align 4
  %20 = call i64 @filename__fprintf_build_id(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %39

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %28 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %23
  %32 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %33 = call i32 @perf_session__process_events(%struct.perf_session* %32, i32* @build_id__mark_dso_hit_ops)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %36 = load i32, i32* @stdout, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @perf_session__fprintf_dsos_buildid(%struct.perf_session* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %22
  %40 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %41 = call i32 @perf_session__delete(%struct.perf_session* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @symbol__elf_init(...) #1

declare dso_local %struct.perf_session* @perf_session__new(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @filename__fprintf_build_id(i32, i32) #1

declare dso_local i32 @perf_session__process_events(%struct.perf_session*, i32*) #1

declare dso_local i32 @perf_session__fprintf_dsos_buildid(%struct.perf_session*, i32, i32) #1

declare dso_local i32 @perf_session__delete(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
