; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_copy_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_copy_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.task_struct = type { %struct.signal_struct* }
%struct.signal_struct = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i64, %struct.TYPE_7__, %struct.TYPE_5__, i32, i32, %struct.task_struct*, i64, i32*, i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@CLONE_THREAD = common dso_local global i64 0, align 8
@signal_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@it_real_fn = common dso_local global i32 0, align 4
@cputime_zero = common dso_local global i8* null, align 8
@current = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.task_struct*)* @copy_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_signal(i64 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.signal_struct*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @CLONE_THREAD, align 8
  %9 = and i64 %7, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %171

12:                                               ; preds = %2
  %13 = load i32, i32* @signal_cachep, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.signal_struct* @kmem_cache_alloc(i32 %13, i32 %14)
  store %struct.signal_struct* %15, %struct.signal_struct** %6, align 8
  %16 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  store %struct.signal_struct* %16, %struct.signal_struct** %18, align 8
  %19 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %20 = icmp ne %struct.signal_struct* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %171

24:                                               ; preds = %12
  %25 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %26 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %25, i32 0, i32 44
  %27 = call i32 @atomic_set(i32* %26, i32 1)
  %28 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %29 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %28, i32 0, i32 43
  %30 = call i32 @atomic_set(i32* %29, i32 1)
  %31 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %32 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %31, i32 0, i32 42
  %33 = call i32 @init_waitqueue_head(i32* %32)
  %34 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %35 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %34, i32 0, i32 41
  store i64 0, i64* %35, align 8
  %36 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %37 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %36, i32 0, i32 40
  store i64 0, i64* %37, align 8
  %38 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %39 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %38, i32 0, i32 39
  store i32* null, i32** %39, align 8
  %40 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %41 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %40, i32 0, i32 38
  store i64 0, i64* %41, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %43 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %44 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %43, i32 0, i32 37
  store %struct.task_struct* %42, %struct.task_struct** %44, align 8
  %45 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %46 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %45, i32 0, i32 36
  %47 = call i32 @init_sigpending(i32* %46)
  %48 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %49 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %48, i32 0, i32 35
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %52 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %51, i32 0, i32 33
  %53 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %54 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %55 = call i32 @hrtimer_init(%struct.TYPE_7__* %52, i32 %53, i32 %54)
  %56 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %57 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %56, i32 0, i32 34
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @it_real_fn, align 4
  %60 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %61 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %60, i32 0, i32 33
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %64 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %63, i32 0, i32 32
  store i64 0, i64* %64, align 8
  %65 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %66 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %65, i32 0, i32 31
  store i32* null, i32** %66, align 8
  %67 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %68 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %67, i32 0, i32 30
  store i32* null, i32** %68, align 8
  %69 = load i8*, i8** @cputime_zero, align 8
  %70 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %71 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %70, i32 0, i32 26
  store i8* %69, i8** %71, align 8
  %72 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %73 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %72, i32 0, i32 27
  store i8* %69, i8** %73, align 8
  %74 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %75 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %74, i32 0, i32 28
  store i8* %69, i8** %75, align 8
  %76 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %77 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %76, i32 0, i32 29
  store i8* %69, i8** %77, align 8
  %78 = load i8*, i8** @cputime_zero, align 8
  %79 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %80 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %79, i32 0, i32 25
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @cputime_zero, align 8
  %82 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %83 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %82, i32 0, i32 24
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @cputime_zero, align 8
  %85 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %86 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %85, i32 0, i32 22
  store i8* %84, i8** %86, align 8
  %87 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %88 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %87, i32 0, i32 23
  store i8* %84, i8** %88, align 8
  %89 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %90 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %89, i32 0, i32 18
  store i64 0, i64* %90, align 8
  %91 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %92 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %91, i32 0, i32 19
  store i64 0, i64* %92, align 8
  %93 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %94 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %93, i32 0, i32 20
  store i64 0, i64* %94, align 8
  %95 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %96 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %95, i32 0, i32 21
  store i64 0, i64* %96, align 8
  %97 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %98 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %97, i32 0, i32 14
  store i64 0, i64* %98, align 8
  %99 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %100 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %99, i32 0, i32 15
  store i64 0, i64* %100, align 8
  %101 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %102 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %101, i32 0, i32 16
  store i64 0, i64* %102, align 8
  %103 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %104 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %103, i32 0, i32 17
  store i64 0, i64* %104, align 8
  %105 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %106 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %105, i32 0, i32 10
  store i64 0, i64* %106, align 8
  %107 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %108 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %107, i32 0, i32 11
  store i64 0, i64* %108, align 8
  %109 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %110 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %109, i32 0, i32 12
  store i64 0, i64* %110, align 8
  %111 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %112 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %111, i32 0, i32 13
  store i64 0, i64* %112, align 8
  %113 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %114 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %113, i32 0, i32 8
  store i64 0, i64* %114, align 8
  %115 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %116 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %115, i32 0, i32 9
  store i64 0, i64* %116, align 8
  %117 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %118 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %117, i32 0, i32 7
  %119 = call i32 @task_io_accounting_init(i32* %118)
  %120 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %121 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %120, i32 0, i32 6
  store i64 0, i64* %121, align 8
  %122 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %123 = call i32 @taskstats_tgid_init(%struct.signal_struct* %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @task_lock(i32 %126)
  %128 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %129 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @memcpy(i32 %130, i32 %135, i32 4)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @task_unlock(i32 %139)
  %141 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %142 = call i32 @posix_cpu_timers_init_group(%struct.signal_struct* %141)
  %143 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %144 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %143, i32 0, i32 4
  %145 = call i32 @acct_init_pacct(i32* %144)
  %146 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %147 = call i32 @tty_audit_fork(%struct.signal_struct* %146)
  %148 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %149 = call i32 @sched_autogroup_fork(%struct.signal_struct* %148)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %156 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %163 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %170 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %24, %21, %11
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.signal_struct* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_sigpending(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @task_io_accounting_init(i32*) #1

declare dso_local i32 @taskstats_tgid_init(%struct.signal_struct*) #1

declare dso_local i32 @task_lock(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @task_unlock(i32) #1

declare dso_local i32 @posix_cpu_timers_init_group(%struct.signal_struct*) #1

declare dso_local i32 @acct_init_pacct(i32*) #1

declare dso_local i32 @tty_audit_fork(%struct.signal_struct*) #1

declare dso_local i32 @sched_autogroup_fork(%struct.signal_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
