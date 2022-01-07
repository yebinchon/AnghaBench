; ModuleID = '/home/carl/AnghaBench/freebsd/bin/date/extr_date.c_printisodate.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/date/extr_date.c_printisodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso8601_fmt = type { i8* }
%struct.tm = type { i32 }

@iso8601_fmts = common dso_local global %struct.iso8601_fmt* null, align 8
@iso8601_selected = common dso_local global %struct.iso8601_fmt* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*)* @printisodate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printisodate(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca %struct.iso8601_fmt*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca [32 x i8], align 16
  %6 = alloca [8 x i8], align 1
  store %struct.tm* %0, %struct.tm** %2, align 8
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %7, align 16
  %8 = load %struct.iso8601_fmt*, %struct.iso8601_fmt** @iso8601_fmts, align 8
  store %struct.iso8601_fmt* %8, %struct.iso8601_fmt** %3, align 8
  br label %9

9:                                                ; preds = %19, %1
  %10 = load %struct.iso8601_fmt*, %struct.iso8601_fmt** %3, align 8
  %11 = load %struct.iso8601_fmt*, %struct.iso8601_fmt** @iso8601_selected, align 8
  %12 = icmp ule %struct.iso8601_fmt* %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %15 = load %struct.iso8601_fmt*, %struct.iso8601_fmt** %3, align 8
  %16 = getelementptr inbounds %struct.iso8601_fmt, %struct.iso8601_fmt* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strlcat(i8* %14, i8* %17, i32 32)
  br label %19

19:                                               ; preds = %13
  %20 = load %struct.iso8601_fmt*, %struct.iso8601_fmt** %3, align 8
  %21 = getelementptr inbounds %struct.iso8601_fmt, %struct.iso8601_fmt* %20, i32 1
  store %struct.iso8601_fmt* %21, %struct.iso8601_fmt** %3, align 8
  br label %9

22:                                               ; preds = %9
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %25 = load %struct.tm*, %struct.tm** %2, align 8
  %26 = call i32 @strftime(i8* %23, i32 32, i8* %24, %struct.tm* %25)
  %27 = load %struct.iso8601_fmt*, %struct.iso8601_fmt** @iso8601_selected, align 8
  %28 = load %struct.iso8601_fmt*, %struct.iso8601_fmt** @iso8601_fmts, align 8
  %29 = icmp ugt %struct.iso8601_fmt* %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %32 = load %struct.tm*, %struct.tm** %2, align 8
  %33 = call i32 @strftime(i8* %31, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.tm* %32)
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 4
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 3
  %36 = call i32 @memmove(i8* %34, i8* %35, i32 3)
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 3
  store i8 58, i8* %37, align 1
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %40 = call i32 @strlcat(i8* %38, i8* %39, i32 32)
  br label %41

41:                                               ; preds = %30, %22
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %43 = call i32 @printdate(i8* %42)
  ret void
}

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @printdate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
