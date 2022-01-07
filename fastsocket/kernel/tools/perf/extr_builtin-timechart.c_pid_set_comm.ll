; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_pid_set_comm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_pid_set_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_pid = type { %struct.per_pidcomm*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { %struct.per_pidcomm*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @pid_set_comm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pid_set_comm(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.per_pid*, align 8
  %6 = alloca %struct.per_pidcomm*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.per_pid* @find_create_pid(i32 %7)
  store %struct.per_pid* %8, %struct.per_pid** %5, align 8
  %9 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %10 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %9, i32 0, i32 0
  %11 = load %struct.per_pidcomm*, %struct.per_pidcomm** %10, align 8
  store %struct.per_pidcomm* %11, %struct.per_pidcomm** %6, align 8
  br label %12

12:                                               ; preds = %44, %2
  %13 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %14 = icmp ne %struct.per_pidcomm* %13, null
  br i1 %14, label %15, label %48

15:                                               ; preds = %12
  %16 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %17 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %22 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strcmp(i8* %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %29 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %30 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %29, i32 0, i32 1
  store %struct.per_pidcomm* %28, %struct.per_pidcomm** %30, align 8
  br label %69

31:                                               ; preds = %20, %15
  %32 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %33 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @strdup(i8* %37)
  %39 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %40 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %42 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %43 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %42, i32 0, i32 1
  store %struct.per_pidcomm* %41, %struct.per_pidcomm** %43, align 8
  br label %69

44:                                               ; preds = %31
  %45 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %46 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %45, i32 0, i32 0
  %47 = load %struct.per_pidcomm*, %struct.per_pidcomm** %46, align 8
  store %struct.per_pidcomm* %47, %struct.per_pidcomm** %6, align 8
  br label %12

48:                                               ; preds = %12
  %49 = call %struct.per_pidcomm* @zalloc(i32 16)
  store %struct.per_pidcomm* %49, %struct.per_pidcomm** %6, align 8
  %50 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %51 = icmp ne %struct.per_pidcomm* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i8*, i8** %4, align 8
  %55 = call i8* @strdup(i8* %54)
  %56 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %57 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %59 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %60 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %59, i32 0, i32 1
  store %struct.per_pidcomm* %58, %struct.per_pidcomm** %60, align 8
  %61 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %62 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %61, i32 0, i32 0
  %63 = load %struct.per_pidcomm*, %struct.per_pidcomm** %62, align 8
  %64 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %65 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %64, i32 0, i32 0
  store %struct.per_pidcomm* %63, %struct.per_pidcomm** %65, align 8
  %66 = load %struct.per_pidcomm*, %struct.per_pidcomm** %6, align 8
  %67 = load %struct.per_pid*, %struct.per_pid** %5, align 8
  %68 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %67, i32 0, i32 0
  store %struct.per_pidcomm* %66, %struct.per_pidcomm** %68, align 8
  br label %69

69:                                               ; preds = %48, %36, %27
  ret void
}

declare dso_local %struct.per_pid* @find_create_pid(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.per_pidcomm* @zalloc(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
