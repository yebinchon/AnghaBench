; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_freejob.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_freejob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i32, i64, i64, %struct.procstat }
%struct.procstat = type { i64 }

@INTOFF = common dso_local global i32 0, align 4
@bgjob = common dso_local global %struct.job* null, align 8
@nullstr = common dso_local global i64 0, align 8
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.job*)* @freejob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freejob(%struct.job* %0) #0 {
  %2 = alloca %struct.job*, align 8
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca i32, align 4
  store %struct.job* %0, %struct.job** %2, align 8
  %5 = load i32, i32* @INTOFF, align 4
  %6 = load %struct.job*, %struct.job** @bgjob, align 8
  %7 = load %struct.job*, %struct.job** %2, align 8
  %8 = icmp eq %struct.job* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.job* null, %struct.job** @bgjob, align 8
  br label %10

10:                                               ; preds = %9, %1
  %11 = load %struct.job*, %struct.job** %2, align 8
  %12 = getelementptr inbounds %struct.job, %struct.job* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.job*, %struct.job** %2, align 8
  %15 = getelementptr inbounds %struct.job, %struct.job* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.procstat*
  store %struct.procstat* %17, %struct.procstat** %3, align 8
  br label %18

18:                                               ; preds = %34, %10
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %4, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.procstat*, %struct.procstat** %3, align 8
  %24 = getelementptr inbounds %struct.procstat, %struct.procstat* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @nullstr, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.procstat*, %struct.procstat** %3, align 8
  %30 = getelementptr inbounds %struct.procstat, %struct.procstat* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ckfree(i64 %31)
  br label %33

33:                                               ; preds = %28, %22
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.procstat*, %struct.procstat** %3, align 8
  %36 = getelementptr inbounds %struct.procstat, %struct.procstat* %35, i32 1
  store %struct.procstat* %36, %struct.procstat** %3, align 8
  br label %18

37:                                               ; preds = %18
  %38 = load %struct.job*, %struct.job** %2, align 8
  %39 = getelementptr inbounds %struct.job, %struct.job* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.procstat*
  %42 = load %struct.job*, %struct.job** %2, align 8
  %43 = getelementptr inbounds %struct.job, %struct.job* %42, i32 0, i32 3
  %44 = icmp ne %struct.procstat* %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.job*, %struct.job** %2, align 8
  %47 = getelementptr inbounds %struct.job, %struct.job* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ckfree(i64 %48)
  br label %50

50:                                               ; preds = %45, %37
  %51 = load %struct.job*, %struct.job** %2, align 8
  %52 = getelementptr inbounds %struct.job, %struct.job* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local i32 @ckfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
