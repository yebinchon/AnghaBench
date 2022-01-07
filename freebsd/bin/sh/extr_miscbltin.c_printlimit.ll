; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_miscbltin.c_printlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_miscbltin.c_printlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64, i64 }
%struct.limits = type { i64 }

@SOFT = common dso_local global i32 0, align 4
@HARD = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"unlimited\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%jd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.rlimit*, %struct.limits*)* @printlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printlimit(i32 %0, %struct.rlimit* %1, %struct.limits* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rlimit*, align 8
  %6 = alloca %struct.limits*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.rlimit* %1, %struct.rlimit** %5, align 8
  store %struct.limits* %2, %struct.limits** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SOFT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.rlimit*, %struct.rlimit** %5, align 8
  %14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  br label %26

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @HARD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.rlimit*, %struct.rlimit** %5, align 8
  %23 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %21, %16
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @RLIM_INFINITY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @out1str(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %41

32:                                               ; preds = %26
  %33 = load %struct.limits*, %struct.limits** %6, align 8
  %34 = getelementptr inbounds %struct.limits, %struct.limits* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sdiv i64 %36, %35
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @out1fmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %32, %30
  ret void
}

declare dso_local i32 @out1str(i8*) #1

declare dso_local i32 @out1fmt(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
