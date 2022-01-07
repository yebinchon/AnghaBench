; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_fd_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_fd_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdesc = type { i64, i32 }

@evctx = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@input = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"select fd %d: %m\00", align 1
@RPOLL_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fd_resume(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fdesc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.fdesc*
  store %struct.fdesc* %7, %struct.fdesc** %4, align 8
  %8 = load %struct.fdesc*, %struct.fdesc** %4, align 8
  %9 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @evTestID(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load i32, i32* @evctx, align 4
  %16 = load %struct.fdesc*, %struct.fdesc** %4, align 8
  %17 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @EV_READ, align 4
  %20 = load i32, i32* @input, align 4
  %21 = load %struct.fdesc*, %struct.fdesc** %4, align 8
  %22 = load %struct.fdesc*, %struct.fdesc** %4, align 8
  %23 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %22, i32 0, i32 0
  %24 = call i64 @evSelectFD(i32 %15, i32 %18, i32 %19, i32 %20, %struct.fdesc* %21, i64* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %14
  %27 = load i32, i32* @errno, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = load %struct.fdesc*, %struct.fdesc** %4, align 8
  %30 = getelementptr inbounds %struct.fdesc, %struct.fdesc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @syslog(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %35

34:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %26, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @evTestID(i64) #1

declare dso_local i64 @evSelectFD(i32, i32, i32, i32, %struct.fdesc*, i64*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
