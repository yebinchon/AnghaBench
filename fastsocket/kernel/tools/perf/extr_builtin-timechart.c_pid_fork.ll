; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_pid_fork.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_pid_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_pid = type { i32, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @pid_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pid_fork(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.per_pid*, align 8
  %8 = alloca %struct.per_pid*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.per_pid* @find_create_pid(i32 %9)
  store %struct.per_pid* %10, %struct.per_pid** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.per_pid* @find_create_pid(i32 %11)
  store %struct.per_pid* %12, %struct.per_pid** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %15 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.per_pid*, %struct.per_pid** %8, align 8
  %17 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = load %struct.per_pid*, %struct.per_pid** %8, align 8
  %22 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %29 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.per_pid*, %struct.per_pid** %8, align 8
  %35 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @pid_set_comm(i32 %33, i64 %38)
  br label %40

40:                                               ; preds = %32, %27, %20, %3
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %43 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %45 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %51 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %49, i8** %53, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %56 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %54, i8** %58, align 8
  br label %59

59:                                               ; preds = %48, %40
  ret void
}

declare dso_local %struct.per_pid* @find_create_pid(i32) #1

declare dso_local i32 @pid_set_comm(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
