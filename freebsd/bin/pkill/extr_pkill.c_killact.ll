; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pkill/extr_pkill.c_killact.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pkill/extr_pkill.c_killact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i64 }

@interactive = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"kill \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"? \00", align 1
@stdout = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@signum = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"signalling pid %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kinfo_proc*)* @killact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @killact(%struct.kinfo_proc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kinfo_proc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kinfo_proc* %0, %struct.kinfo_proc** %3, align 8
  %6 = load i64, i64* @interactive, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %11 = call i32 @show_process(%struct.kinfo_proc* %10)
  %12 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @fflush(i32 %13)
  %15 = call i32 (...) @getchar()
  store i32 %15, i32* %4, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %25, %8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 10
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp ne i32 %20, %21
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = call i32 (...) @getchar()
  store i32 %26, i32* %4, align 4
  br label %16

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 121
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 89
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %54

34:                                               ; preds = %30, %27
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %37 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @signum, align 4
  %40 = call i32 @kill(i64 %38, i32 %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @ESRCH, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %48 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %42
  store i32 0, i32* %2, align 4
  br label %54

53:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %52, %33
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @show_process(%struct.kinfo_proc*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
