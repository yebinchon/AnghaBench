; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_show_time_host_and_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_show_time_host_and_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@show_time_host_and_name.last_t = internal global i64 0, align 8
@show_time_host_and_name.last_ctime = internal global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"fatal:\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"error:\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"user: \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"warn: \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"info: \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"debug:\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"map:  \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"stats:\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"hmm:  \00", align 1
@logfp = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"%15.15s%s %s %s[%ld]/%s \00", align 1
@am_mypid = common dso_local global i64 0, align 8
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@D_HRTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @show_time_host_and_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_time_host_and_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [11 x i8], align 1
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %6, align 1
  %7 = call i64 @clocktime(i32* null)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @show_time_host_and_name.last_t, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i8* @ctime(i64* %3)
  store i8* %12, i8** @show_time_host_and_name.last_ctime, align 8
  %13 = load i64, i64* %3, align 8
  store i64 %13, i64* @show_time_host_and_name.last_t, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %2, align 4
  switch i32 %15, label %24 [
    i32 133, label %16
    i32 134, label %17
    i32 129, label %18
    i32 128, label %19
    i32 132, label %20
    i32 135, label %21
    i32 131, label %22
    i32 130, label %23
  ]

16:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %25

17:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %25

18:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %25

19:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %25

20:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %25

21:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %25

22:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %25

23:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %25

24:                                               ; preds = %14
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16
  %26 = load i32, i32* @logfp, align 4
  %27 = load i8*, i8** @show_time_host_and_name.last_ctime, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  %29 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %30 = call i8* (...) @am_get_hostname()
  %31 = call i32 (...) @am_get_progname()
  %32 = load i64, i64* @am_mypid, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %28, i8* %29, i8* %30, i32 %31, i64 %32, i8* %33)
  ret void
}

declare dso_local i64 @clocktime(i32*) #1

declare dso_local i8* @ctime(i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i32, i64, i8*) #1

declare dso_local i8* @am_get_hostname(...) #1

declare dso_local i32 @am_get_progname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
