; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_read_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_read_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_kvm_stat = type { i8*, %struct.perf_tool, i32, i32, i32, i32 }
%struct.perf_tool = type { i32, i32, i32 }

@perf_event__process_comm = common dso_local global i32 0, align 4
@process_sample_event = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Initializing perf session failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"kvm record\00", align 1
@vmx_exit_reasons = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"VMX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_kvm_stat*)* @read_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_events(%struct.perf_kvm_stat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_kvm_stat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_tool, align 4
  store %struct.perf_kvm_stat* %0, %struct.perf_kvm_stat** %3, align 8
  %6 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %5, i32 0, i32 1
  %8 = load i32, i32* @perf_event__process_comm, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %5, i32 0, i32 2
  %10 = load i32, i32* @process_sample_event, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %12 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %11, i32 0, i32 1
  %13 = bitcast %struct.perf_tool* %12 to i8*
  %14 = bitcast %struct.perf_tool* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %16 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %20 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %19, i32 0, i32 1
  %21 = call i32 @perf_session__new(i32 %17, i32 %18, i32 0, i32 0, %struct.perf_tool* %20)
  %22 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %23 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %25 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %70

32:                                               ; preds = %1
  %33 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %34 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @perf_session__has_traces(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %70

41:                                               ; preds = %32
  %42 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %43 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @get_cpu_isa(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %70

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, i32* @vmx_exit_reasons, align 4
  %55 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %56 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @vmx_exit_reasons, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %60 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %62 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %62, align 8
  br label %63

63:                                               ; preds = %53, %50
  %64 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %65 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %68 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %67, i32 0, i32 1
  %69 = call i32 @perf_session__process_events(i32 %66, %struct.perf_tool* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %63, %48, %38, %28
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @perf_session__new(i32, i32, i32, i32, %struct.perf_tool*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @perf_session__has_traces(i32, i8*) #2

declare dso_local i32 @get_cpu_isa(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @perf_session__process_events(i32, %struct.perf_tool*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
