; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_do_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_do_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigevent = type { i32, i32, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s/%d/as\00", align 1
@nto_procfs_path = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@ctl_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Couldn't open proc file %s, error %d (%s)\00", align 1
@errno = common dso_local global i8* null, align 8
@DCMD_PROC_STOP = common dso_local global i32 0, align 4
@EOK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Couldn't stop process\00", align 1
@SIGEV_SIGNAL_THREAD = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@DCMD_PROC_EVENT = common dso_local global i32 0, align 4
@DCMD_PROC_STATUS = common dso_local global i32 0, align 4
@_DEBUG_FLAG_STOPPED = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@attach_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sigevent, align 8
  %4 = alloca %struct.sigevent, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @PATH_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i8*, i8** @nto_procfs_path, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @PIDGET(i32 %14)
  %16 = call i32 @snprintf(i8* %10, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %15)
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = call i32 @open(i8* %10, i32 %17)
  store i32 %18, i32* @ctl_fd, align 4
  %19 = load i32, i32* @ctl_fd, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i8*, i8** @errno, align 8
  %23 = load i8*, i8** @errno, align 8
  %24 = call i32 @safe_strerror(i8* %23)
  %25 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %10, i8* %22, i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load i32, i32* @ctl_fd, align 4
  %28 = load i32, i32* @DCMD_PROC_STOP, align 4
  %29 = call i64 @devctl(i32 %27, i32 %28, %struct.sigevent* %3, i32 32, i32 0)
  %30 = load i64, i64* @EOK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* @SIGEV_SIGNAL_THREAD, align 4
  %36 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %4, i32 0, i32 5
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @SIGUSR1, align 4
  %38 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %4, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %4, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %4, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %4, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  %43 = load i32, i32* @ctl_fd, align 4
  %44 = load i32, i32* @DCMD_PROC_EVENT, align 4
  %45 = call i64 @devctl(i32 %43, i32 %44, %struct.sigevent* %4, i32 32, i32 0)
  %46 = load i32, i32* @ctl_fd, align 4
  %47 = load i32, i32* @DCMD_PROC_STATUS, align 4
  %48 = call i64 @devctl(i32 %46, i32 %47, %struct.sigevent* %3, i32 32, i32 0)
  %49 = load i64, i64* @EOK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %3, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @_DEBUG_FLAG_STOPPED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = call i32 (...) @nto_node()
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @PIDGET(i32 %59)
  %61 = load i32, i32* @SIGCONT, align 4
  %62 = call i32 @SignalKill(i32 %58, i32 %60, i32 0, i32 %61, i32 0, i32 0)
  br label %63

63:                                               ; preds = %57, %51, %34
  store i32 1, i32* @attach_flag, align 4
  %64 = call i32 (...) @nto_init_solib_absolute_prefix()
  %65 = load i32, i32* %2, align 4
  %66 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %66)
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @PIDGET(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i32 @safe_strerror(i8*) #2

declare dso_local i64 @devctl(i32, i32, %struct.sigevent*, i32, i32) #2

declare dso_local i32 @SignalKill(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @nto_node(...) #2

declare dso_local i32 @nto_init_solib_absolute_prefix(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
