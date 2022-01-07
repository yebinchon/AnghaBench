; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_register_trace_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_register_trace_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@probe_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to register probe event(%d)\0A\00", align 1
@KPROBE_FLAG_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not insert probe(%d)\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Probing address(0x%p) is not an instruction boundary.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@probe_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_probe*)* @register_trace_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_trace_probe(%struct.trace_probe* %0) #0 {
  %2 = alloca %struct.trace_probe*, align 8
  %3 = alloca %struct.trace_probe*, align 8
  %4 = alloca i32, align 4
  store %struct.trace_probe* %0, %struct.trace_probe** %2, align 8
  %5 = call i32 @mutex_lock(i32* @probe_lock)
  %6 = load %struct.trace_probe*, %struct.trace_probe** %2, align 8
  %7 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.trace_probe*, %struct.trace_probe** %2, align 8
  %11 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.trace_probe* @find_trace_probe(i32 %9, i32 %13)
  store %struct.trace_probe* %14, %struct.trace_probe** %3, align 8
  %15 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %16 = icmp ne %struct.trace_probe* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %19 = call i32 @unregister_trace_probe(%struct.trace_probe* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %81

23:                                               ; preds = %17
  %24 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %25 = call i32 @free_trace_probe(%struct.trace_probe* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.trace_probe*, %struct.trace_probe** %2, align 8
  %28 = call i32 @register_probe_event(%struct.trace_probe* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %81

34:                                               ; preds = %26
  %35 = load i32, i32* @KPROBE_FLAG_DISABLED, align 4
  %36 = load %struct.trace_probe*, %struct.trace_probe** %2, align 8
  %37 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load %struct.trace_probe*, %struct.trace_probe** %2, align 8
  %43 = call i64 @trace_probe_is_return(%struct.trace_probe* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.trace_probe*, %struct.trace_probe** %2, align 8
  %47 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %46, i32 0, i32 1
  %48 = call i32 @register_kretprobe(%struct.TYPE_5__* %47)
  store i32 %48, i32* %4, align 4
  br label %54

49:                                               ; preds = %34
  %50 = load %struct.trace_probe*, %struct.trace_probe** %2, align 8
  %51 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i32 @register_kprobe(%struct.TYPE_6__* %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @pr_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @EILSEQ, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load %struct.trace_probe*, %struct.trace_probe** %2, align 8
  %66 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pr_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %64, %57
  %74 = load %struct.trace_probe*, %struct.trace_probe** %2, align 8
  %75 = call i32 @unregister_probe_event(%struct.trace_probe* %74)
  br label %80

76:                                               ; preds = %54
  %77 = load %struct.trace_probe*, %struct.trace_probe** %2, align 8
  %78 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %77, i32 0, i32 0
  %79 = call i32 @list_add_tail(i32* %78, i32* @probe_list)
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %31, %22
  %82 = call i32 @mutex_unlock(i32* @probe_lock)
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.trace_probe* @find_trace_probe(i32, i32) #1

declare dso_local i32 @unregister_trace_probe(%struct.trace_probe*) #1

declare dso_local i32 @free_trace_probe(%struct.trace_probe*) #1

declare dso_local i32 @register_probe_event(%struct.trace_probe*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i64 @trace_probe_is_return(%struct.trace_probe*) #1

declare dso_local i32 @register_kretprobe(%struct.TYPE_5__*) #1

declare dso_local i32 @register_kprobe(%struct.TYPE_6__*) #1

declare dso_local i32 @unregister_probe_event(%struct.trace_probe*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
