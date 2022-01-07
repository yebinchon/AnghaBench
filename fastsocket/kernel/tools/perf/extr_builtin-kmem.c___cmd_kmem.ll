; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kmem.c___cmd_kmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kmem.c___cmd_kmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32 }
%struct.perf_evsel_str_handler = type { i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"kmem:kmalloc\00", align 1
@perf_evsel__process_alloc_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"kmem:kmem_cache_alloc\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"kmem:kmalloc_node\00", align 1
@perf_evsel__process_alloc_node_event = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"kmem:kmem_cache_alloc_node\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"kmem:kfree\00", align 1
@perf_evsel__process_free_event = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"kmem:kmem_cache_free\00", align 1
@input_name = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@perf_kmem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"kmem record\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Initializing perf session tracepoint handlers failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__cmd_kmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmd_kmem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_session*, align 8
  %4 = alloca [6 x %struct.perf_evsel_str_handler], align 16
  %5 = load i32, i32* @EINVAL, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %2, align 4
  %7 = getelementptr inbounds [6 x %struct.perf_evsel_str_handler], [6 x %struct.perf_evsel_str_handler]* %4, i64 0, i64 0
  %8 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %8, align 16
  %9 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %7, i32 0, i32 1
  %10 = load i32, i32* @perf_evsel__process_alloc_event, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %7, i64 1
  %12 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 16
  %13 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %11, i32 0, i32 1
  %14 = load i32, i32* @perf_evsel__process_alloc_event, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %11, i64 1
  %16 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 16
  %17 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %15, i32 0, i32 1
  %18 = load i32, i32* @perf_evsel__process_alloc_node_event, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %15, i64 1
  %20 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %19, i32 0, i32 1
  %22 = load i32, i32* @perf_evsel__process_alloc_node_event, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %19, i64 1
  %24 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %23, i32 0, i32 1
  %26 = load i32, i32* @perf_evsel__process_free_event, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %23, i64 1
  %28 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %28, align 16
  %29 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %27, i32 0, i32 1
  %30 = load i32, i32* @perf_evsel__process_free_event, align 4
  store i32 %30, i32* %29, align 8
  %31 = load i32, i32* @input_name, align 4
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = call %struct.perf_session* @perf_session__new(i32 %31, i32 %32, i32 0, i32 0, i32* @perf_kmem)
  store %struct.perf_session* %33, %struct.perf_session** %3, align 8
  %34 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %35 = icmp eq %struct.perf_session* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %0
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %1, align 4
  br label %71

39:                                               ; preds = %0
  %40 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %41 = call i64 @perf_session__create_kernel_maps(%struct.perf_session* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %67

44:                                               ; preds = %39
  %45 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %46 = call i32 @perf_session__has_traces(%struct.perf_session* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %67

49:                                               ; preds = %44
  %50 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %51 = getelementptr inbounds [6 x %struct.perf_evsel_str_handler], [6 x %struct.perf_evsel_str_handler]* %4, i64 0, i64 0
  %52 = call i64 @perf_session__set_tracepoints_handlers(%struct.perf_session* %50, %struct.perf_evsel_str_handler* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %71

56:                                               ; preds = %49
  %57 = call i32 (...) @setup_pager()
  %58 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %59 = call i32 @perf_session__process_events(%struct.perf_session* %58, i32* @perf_kmem)
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %67

63:                                               ; preds = %56
  %64 = call i32 (...) @sort_result()
  %65 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %66 = call i32 @print_result(%struct.perf_session* %65)
  br label %67

67:                                               ; preds = %63, %62, %48, %43
  %68 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %69 = call i32 @perf_session__delete(%struct.perf_session* %68)
  %70 = load i32, i32* %2, align 4
  store i32 %70, i32* %1, align 4
  br label %71

71:                                               ; preds = %67, %54, %36
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local %struct.perf_session* @perf_session__new(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @perf_session__create_kernel_maps(%struct.perf_session*) #1

declare dso_local i32 @perf_session__has_traces(%struct.perf_session*, i8*) #1

declare dso_local i64 @perf_session__set_tracepoints_handlers(%struct.perf_session*, %struct.perf_evsel_str_handler*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @setup_pager(...) #1

declare dso_local i32 @perf_session__process_events(%struct.perf_session*, i32*) #1

declare dso_local i32 @sort_result(...) #1

declare dso_local i32 @print_result(%struct.perf_session*) #1

declare dso_local i32 @perf_session__delete(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
