; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_event_profile.c_ftrace_profile_enable_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_event_profile.c_ftrace_profile_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { {}*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@total_profile_count = common dso_local global i32 0, align 4
@perf_trace_t = common dso_local global i32 0, align 4
@trace_profile_buf = common dso_local global i32* null, align 8
@trace_profile_buf_nmi = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftrace_event_call*)* @ftrace_profile_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftrace_profile_enable_event(%struct.ftrace_event_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftrace_event_call*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %9 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %8, i32 0, i32 1
  %10 = call i64 @atomic_inc_return(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

13:                                               ; preds = %1
  %14 = load i32, i32* @total_profile_count, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @perf_trace_t, align 4
  %18 = call i64 @alloc_percpu(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %59

23:                                               ; preds = %16
  %24 = load i32*, i32** @trace_profile_buf, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @rcu_assign_pointer(i32* %24, i8* %25)
  %27 = load i32, i32* @perf_trace_t, align 4
  %28 = call i64 @alloc_percpu(i32 %27)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %50

33:                                               ; preds = %23
  %34 = load i32*, i32** @trace_profile_buf_nmi, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @rcu_assign_pointer(i32* %34, i8* %35)
  br label %37

37:                                               ; preds = %33, %13
  %38 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %39 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.ftrace_event_call*)**
  %41 = load i32 (%struct.ftrace_event_call*)*, i32 (%struct.ftrace_event_call*)** %40, align 8
  %42 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %43 = call i32 %41(%struct.ftrace_event_call* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @total_profile_count, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @total_profile_count, align 4
  store i32 0, i32* %2, align 4
  br label %64

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i32, i32* @total_profile_count, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load i32*, i32** @trace_profile_buf_nmi, align 8
  %55 = call i32 @free_percpu(i32* %54)
  %56 = load i32*, i32** @trace_profile_buf, align 8
  %57 = call i32 @free_percpu(i32* %56)
  store i32* null, i32** @trace_profile_buf_nmi, align 8
  store i32* null, i32** @trace_profile_buf, align 8
  br label %58

58:                                               ; preds = %53, %50
  br label %59

59:                                               ; preds = %58, %22
  %60 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %61 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %60, i32 0, i32 1
  %62 = call i32 @atomic_dec(i32* %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %46, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i64 @alloc_percpu(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32*, i8*) #1

declare dso_local i32 @free_percpu(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
