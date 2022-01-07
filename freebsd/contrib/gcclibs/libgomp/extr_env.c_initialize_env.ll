; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_env.c_initialize_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_env.c_initialize_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"OMP_DYNAMIC\00", align 1
@gomp_dyn_var = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"OMP_NESTED\00", align 1
@gomp_nest_var = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1
@gomp_nthreads_var = common dso_local global i64 0, align 8
@gomp_thread_attr = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"GOMP_STACKSIZE\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Stack size change failed: %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_STACK_MIN = common dso_local global i64 0, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @initialize_env, i8* null }]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_env() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @omp_check_defines()
  %4 = call i32 (...) @parse_schedule()
  %5 = call i32 @parse_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* @gomp_dyn_var)
  %6 = call i32 @parse_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* @gomp_nest_var)
  %7 = call i64 @parse_unsigned_long(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64* @gomp_nthreads_var)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 (...) @gomp_init_num_threads()
  br label %11

11:                                               ; preds = %9, %0
  %12 = call i64 (...) @parse_affinity()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (...) @gomp_init_affinity()
  br label %16

16:                                               ; preds = %14, %11
  %17 = call i32 @pthread_attr_init(i32* @gomp_thread_attr)
  %18 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %19 = call i32 @pthread_attr_setdetachstate(i32* @gomp_thread_attr, i32 %18)
  %20 = call i64 @parse_unsigned_long(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64* %1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load i64, i64* %1, align 8
  %24 = mul i64 %23, 1024
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = call i32 @pthread_attr_setstacksize(i32* @gomp_thread_attr, i64 %25)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* %2, align 4
  %31 = call i64 @strerror(i32 %30)
  %32 = call i32 (i8*, ...) @gomp_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %29, %22
  br label %34

34:                                               ; preds = %33, %16
  ret void
}

declare dso_local i32 @omp_check_defines(...) #1

declare dso_local i32 @parse_schedule(...) #1

declare dso_local i32 @parse_boolean(i8*, i32*) #1

declare dso_local i64 @parse_unsigned_long(i8*, i64*) #1

declare dso_local i32 @gomp_init_num_threads(...) #1

declare dso_local i64 @parse_affinity(...) #1

declare dso_local i32 @gomp_init_affinity(...) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @pthread_attr_setstacksize(i32*, i64) #1

declare dso_local i32 @gomp_error(i8*, ...) #1

declare dso_local i64 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
