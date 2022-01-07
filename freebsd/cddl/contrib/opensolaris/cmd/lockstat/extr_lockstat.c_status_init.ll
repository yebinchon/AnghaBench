; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_status_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_status_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }
%struct.itimerspec = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sigevent = type { i32, i32 }

@g_dtp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"statusrate\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to get 'statusrate'\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"aggrate\00", align 1
@status_fire = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGEV_SIGNAL = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"cannot create CLOCK_REALTIME timer\00", align 1
@NANOSEC = common dso_local global i64 0, align 8
@TIMER_RELTIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"cannot set time on CLOCK_REALTIME timer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @status_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @status_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca %struct.itimerspec, align 8
  %6 = alloca %struct.sigevent, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @g_dtp, align 4
  %9 = call i32 @dtrace_getopt(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %2)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @dfail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, i32* @g_dtp, align 4
  %15 = call i32 @dtrace_getopt(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64* %3)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @dfail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* %2, align 8
  br label %27

25:                                               ; preds = %19
  %26 = load i64, i64* %3, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  store i64 %28, i64* %1, align 8
  %29 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 2
  %30 = call i32 @sigemptyset(i32* %29)
  %31 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @status_fire, align 4
  %33 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* @SIGUSR1, align 4
  %35 = call i32 @sigaction(i32 %34, %struct.sigaction* %4, i32* null)
  %36 = load i32, i32* @SIGEV_SIGNAL, align 4
  %37 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %6, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @SIGUSR1, align 4
  %39 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @CLOCK_REALTIME, align 4
  %41 = call i32 @timer_create(i32 %40, %struct.sigevent* %6, i32* %7)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = call i32 @dfail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %27
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @NANOSEC, align 8
  %48 = sdiv i64 %46, %47
  %49 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %5, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* @NANOSEC, align 8
  %53 = srem i64 %51, %52
  %54 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %5, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %5, i32 0, i32 1
  %57 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %5, i32 0, i32 0
  %58 = bitcast %struct.TYPE_2__* %56 to i8*
  %59 = bitcast %struct.TYPE_2__* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @TIMER_RELTIME, align 4
  %62 = call i32 @timer_settime(i32 %60, i32 %61, %struct.itimerspec* %5, i32* null)
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %45
  %65 = call i32 @dfail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %45
  ret void
}

declare dso_local i32 @dtrace_getopt(i32, i8*, i64*) #1

declare dso_local i32 @dfail(i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @timer_create(i32, %struct.sigevent*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timer_settime(i32, i32, %struct.itimerspec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
