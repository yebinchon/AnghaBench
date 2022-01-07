; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_process_affinity_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_process_affinity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@enable_listen_spawn = common dso_local global i64 0, align 8
@DISABLE_LISTEN_SPAWN = common dso_local global i64 0, align 8
@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Module para disable listen-spawn feature\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Requested CPU %d is greater than system available CPU core %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Current process ccpu(%d) ncpu(%d)\0A\00", align 1
@nr_cpu_ids = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Current process affinity is messed up\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Current process already binds to CPU %d\0A\00", align 1
@ENABLE_LISTEN_SPAWN_AUTOSET_AFFINITY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [55 x i8] c"Module para disable autoset affinity for listen-spawn\0A\00", align 1
@fastsocket_spawn_cpu = common dso_local global i32 0, align 4
@fastsocket_spawn_cpuset = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"CPU %d is available for process affinity\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Process number is more than CPU number\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Target process affinity: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsocket_process_affinity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsocket_process_affinity_check(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %7, align 4
  %9 = load i64, i64* @enable_listen_spawn, align 8
  %10 = load i64, i64* @DISABLE_LISTEN_SPAWN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @ERR, align 4
  %14 = call i32 (i32, i8*, ...) @EPRINTK_LIMIT(i32 %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %125

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (...) @num_active_cpus()
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, i32* @ERR, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (...) @num_active_cpus()
  %28 = call i32 (i32, i8*, ...) @EPRINTK_LIMIT(i32 %25, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %125

31:                                               ; preds = %20, %17
  %32 = load i32, i32* %3, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %2, align 4
  br label %125

36:                                               ; preds = %31
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @alloc_cpumask_var(i32* %8, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %125

43:                                               ; preds = %36
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @sched_getaffinity(i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @cpumask_first(i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @cpumask_next(i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @free_cpumask_var(i32 %54)
  %56 = load i32, i32* @DEBUG, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i32, i8*, ...) @DPRINTK(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @nr_cpu_ids, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %43
  %64 = load i32, i32* @DEBUG, align 4
  %65 = call i32 (i32, i8*, ...) @DPRINTK(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %125

68:                                               ; preds = %43
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @nr_cpu_ids, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* @INFO, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i32, i8*, ...) @DPRINTK(i32 %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %125

77:                                               ; preds = %68
  %78 = load i64, i64* @enable_listen_spawn, align 8
  %79 = load i64, i64* @ENABLE_LISTEN_SPAWN_AUTOSET_AFFINITY, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32, i32* @ERR, align 4
  %83 = call i32 (i32, i8*, ...) @EPRINTK_LIMIT(i32 %82, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i32, i32* @EPERM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %125

86:                                               ; preds = %77
  %87 = load i32, i32* @fastsocket_spawn_cpu, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %103, %86
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (...) @num_active_cpus()
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @fastsocket_spawn_cpuset, align 4
  %95 = call i32 @cpu_isset(i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @INFO, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 (i32, i8*, ...) @DPRINTK(i32 %98, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %7, align 4
  br label %106

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %88

106:                                              ; preds = %97, %88
  %107 = load i32, i32* %7, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @fastsocket_spawn_cpuset, align 4
  %112 = call i32 @cpu_set(i32 %110, i32 %111)
  %113 = load i32, i32* @fastsocket_spawn_cpu, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @fastsocket_spawn_cpu, align 4
  br label %120

115:                                              ; preds = %106
  %116 = load i32, i32* @ERR, align 4
  %117 = call i32 (i32, i8*, ...) @EPRINTK_LIMIT(i32 %116, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %125

120:                                              ; preds = %109
  %121 = load i32, i32* @INFO, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 (i32, i8*, ...) @DPRINTK(i32 %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %120, %115, %81, %72, %63, %40, %34, %24, %12
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @EPRINTK_LIMIT(i32, i8*, ...) #1

declare dso_local i32 @num_active_cpus(...) #1

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @sched_getaffinity(i32, i32) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @cpumask_next(i32, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @DPRINTK(i32, i8*, ...) #1

declare dso_local i32 @cpu_isset(i32, i32) #1

declare dso_local i32 @cpu_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
