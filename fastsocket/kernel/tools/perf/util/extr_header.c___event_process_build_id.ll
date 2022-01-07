; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c___event_process_build_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c___event_process_build_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.build_id_event = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.perf_session = type { i32 }
%struct.list_head = type { i32 }
%struct.machine = type { %struct.list_head, %struct.list_head }
%struct.dso = type { i32, i32, i32 }

@PERF_RECORD_MISC_CPUMODE_MASK = common dso_local global i32 0, align 4
@DSO_TYPE_KERNEL = common dso_local global i32 0, align 4
@DSO_TYPE_GUEST_KERNEL = common dso_local global i32 0, align 4
@DSO_TYPE_USER = common dso_local global i32 0, align 4
@BUILD_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"build id event received for %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.build_id_event*, i8*, %struct.perf_session*)* @__event_process_build_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__event_process_build_id(%struct.build_id_event* %0, i8* %1, %struct.perf_session* %2) #0 {
  %4 = alloca %struct.build_id_event*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.perf_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dso*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.build_id_event* %0, %struct.build_id_event** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.perf_session* %2, %struct.perf_session** %6, align 8
  store i32 -1, i32* %7, align 4
  %15 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %16 = load %struct.build_id_event*, %struct.build_id_event** %4, align 8
  %17 = getelementptr inbounds %struct.build_id_event, %struct.build_id_event* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.machine* @perf_session__findnew_machine(%struct.perf_session* %15, i32 %18)
  store %struct.machine* %19, %struct.machine** %9, align 8
  %20 = load %struct.machine*, %struct.machine** %9, align 8
  %21 = icmp ne %struct.machine* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %81

23:                                               ; preds = %3
  %24 = load %struct.build_id_event*, %struct.build_id_event** %4, align 8
  %25 = getelementptr inbounds %struct.build_id_event, %struct.build_id_event* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PERF_RECORD_MISC_CPUMODE_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  switch i32 %30, label %43 [
    i32 129, label %31
    i32 131, label %35
    i32 128, label %39
    i32 130, label %39
  ]

31:                                               ; preds = %23
  %32 = load i32, i32* @DSO_TYPE_KERNEL, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.machine*, %struct.machine** %9, align 8
  %34 = getelementptr inbounds %struct.machine, %struct.machine* %33, i32 0, i32 1
  store %struct.list_head* %34, %struct.list_head** %8, align 8
  br label %44

35:                                               ; preds = %23
  %36 = load i32, i32* @DSO_TYPE_GUEST_KERNEL, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.machine*, %struct.machine** %9, align 8
  %38 = getelementptr inbounds %struct.machine, %struct.machine* %37, i32 0, i32 1
  store %struct.list_head* %38, %struct.list_head** %8, align 8
  br label %44

39:                                               ; preds = %23, %23
  %40 = load i32, i32* @DSO_TYPE_USER, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.machine*, %struct.machine** %9, align 8
  %42 = getelementptr inbounds %struct.machine, %struct.machine* %41, i32 0, i32 0
  store %struct.list_head* %42, %struct.list_head** %8, align 8
  br label %44

43:                                               ; preds = %23
  br label %81

44:                                               ; preds = %39, %35, %31
  %45 = load %struct.list_head*, %struct.list_head** %8, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call %struct.dso* @__dsos__findnew(%struct.list_head* %45, i8* %46)
  store %struct.dso* %47, %struct.dso** %11, align 8
  %48 = load %struct.dso*, %struct.dso** %11, align 8
  %49 = icmp ne %struct.dso* %48, null
  br i1 %49, label %50, label %80

50:                                               ; preds = %44
  %51 = load i32, i32* @BUILD_ID_SIZE, align 4
  %52 = mul nsw i32 %51, 2
  %53 = add nsw i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %13, align 8
  %56 = alloca i8, i64 %54, align 16
  store i64 %54, i64* %14, align 8
  %57 = load %struct.dso*, %struct.dso** %11, align 8
  %58 = load %struct.build_id_event*, %struct.build_id_event** %4, align 8
  %59 = getelementptr inbounds %struct.build_id_event, %struct.build_id_event* %58, i32 0, i32 0
  %60 = call i32 @dso__set_build_id(%struct.dso* %57, i32* %59)
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 91
  br i1 %65, label %66, label %70

66:                                               ; preds = %50
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.dso*, %struct.dso** %11, align 8
  %69 = getelementptr inbounds %struct.dso, %struct.dso* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %50
  %71 = load %struct.dso*, %struct.dso** %11, align 8
  %72 = getelementptr inbounds %struct.dso, %struct.dso* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @build_id__sprintf(i32 %73, i32 4, i8* %56)
  %75 = load %struct.dso*, %struct.dso** %11, align 8
  %76 = getelementptr inbounds %struct.dso, %struct.dso* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %77, i8* %56)
  %79 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %79)
  br label %80

80:                                               ; preds = %70, %44
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %43, %22
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local %struct.machine* @perf_session__findnew_machine(%struct.perf_session*, i32) #1

declare dso_local %struct.dso* @__dsos__findnew(%struct.list_head*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dso__set_build_id(%struct.dso*, i32*) #1

declare dso_local i32 @build_id__sprintf(i32, i32, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
