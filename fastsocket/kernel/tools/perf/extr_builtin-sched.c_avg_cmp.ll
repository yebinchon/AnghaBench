; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_avg_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_avg_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_atoms = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_atoms*, %struct.work_atoms*)* @avg_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avg_cmp(%struct.work_atoms* %0, %struct.work_atoms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.work_atoms*, align 8
  %5 = alloca %struct.work_atoms*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.work_atoms* %0, %struct.work_atoms** %4, align 8
  store %struct.work_atoms* %1, %struct.work_atoms** %5, align 8
  %8 = load %struct.work_atoms*, %struct.work_atoms** %4, align 8
  %9 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.work_atoms*, %struct.work_atoms** %5, align 8
  %15 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %44

19:                                               ; preds = %13
  %20 = load %struct.work_atoms*, %struct.work_atoms** %4, align 8
  %21 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.work_atoms*, %struct.work_atoms** %4, align 8
  %24 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.work_atoms*, %struct.work_atoms** %5, align 8
  %28 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.work_atoms*, %struct.work_atoms** %5, align 8
  %31 = getelementptr inbounds %struct.work_atoms, %struct.work_atoms* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %29, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %44

38:                                               ; preds = %19
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %44

43:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %42, %37, %18, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
