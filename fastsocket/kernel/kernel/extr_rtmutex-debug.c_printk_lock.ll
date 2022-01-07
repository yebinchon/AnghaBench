; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex-debug.c_printk_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex-debug.c_printk_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_mutex = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c" [%p] {%s}\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" [%p] {%s:%d}\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c".. ->owner: %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c".. held by:  \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_mutex*, i32)* @printk_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printk_lock(%struct.rt_mutex* %0, i32 %1) #0 {
  %3 = alloca %struct.rt_mutex*, align 8
  %4 = alloca i32, align 4
  store %struct.rt_mutex* %0, %struct.rt_mutex** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %6 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %11 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %12 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.rt_mutex* %10, i64 %13)
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %17 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %18 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %21 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.rt_mutex* %16, i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %15, %9
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %29 = call i64 @rt_mutex_owner(%struct.rt_mutex* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %33 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.rt_mutex*, %struct.rt_mutex** %3, align 8
  %38 = call i64 @rt_mutex_owner(%struct.rt_mutex* %37)
  %39 = call i32 @printk_task(i64 %38)
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %31, %27, %24
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @rt_mutex_owner(%struct.rt_mutex*) #1

declare dso_local i32 @printk_task(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
