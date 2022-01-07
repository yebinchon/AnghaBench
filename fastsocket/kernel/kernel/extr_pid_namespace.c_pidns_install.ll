; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid_namespace.c_pidns_install.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid_namespace.c_pidns_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsproxy = type { i32 }
%struct.pid_namespace = type { i64, %struct.pid_namespace* }

@current = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsproxy*, i8*)* @pidns_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidns_install(%struct.nsproxy* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nsproxy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.pid_namespace*, align 8
  %8 = alloca %struct.pid_namespace*, align 8
  store %struct.nsproxy* %0, %struct.nsproxy** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @current, align 4
  %10 = call %struct.pid_namespace* @task_active_pid_ns(i32 %9)
  store %struct.pid_namespace* %10, %struct.pid_namespace** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.pid_namespace*
  store %struct.pid_namespace* %12, %struct.pid_namespace** %8, align 8
  %13 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %14 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %17 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  store %struct.pid_namespace* %24, %struct.pid_namespace** %7, align 8
  br label %25

25:                                               ; preds = %33, %23
  %26 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %27 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %30 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %35 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %34, i32 0, i32 1
  %36 = load %struct.pid_namespace*, %struct.pid_namespace** %35, align 8
  store %struct.pid_namespace* %36, %struct.pid_namespace** %7, align 8
  br label %25

37:                                               ; preds = %25
  %38 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %39 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %40 = icmp ne %struct.pid_namespace* %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %53

44:                                               ; preds = %37
  %45 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %46 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @put_pid_ns(i32 %47)
  %49 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %50 = call i32 @get_pid_ns(%struct.pid_namespace* %49)
  %51 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %52 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %44, %41, %20
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.pid_namespace* @task_active_pid_ns(i32) #1

declare dso_local i32 @put_pid_ns(i32) #1

declare dso_local i32 @get_pid_ns(%struct.pid_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
