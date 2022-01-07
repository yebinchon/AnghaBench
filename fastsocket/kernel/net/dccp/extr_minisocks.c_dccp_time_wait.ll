; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_minisocks.c_dccp_time_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_minisocks.c_dccp_time_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.sock = type { i32 }
%struct.inet_timewait_sock = type { i64, i8*, i32, i32 }
%struct.inet_connection_sock = type { i32 }

@dccp_death_row = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@dccp_hashinfo = common dso_local global i32 0, align 4
@DCCP_TIMEWAIT_LEN = common dso_local global i8* null, align 8
@DCCP_TIME_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"time wait bucket table overflow\0A\00", align 1
@PF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_time_wait(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inet_timewait_sock*, align 8
  %8 = alloca %struct.inet_connection_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.inet_timewait_sock* null, %struct.inet_timewait_sock** %7, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dccp_death_row, i32 0, i32 0), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dccp_death_row, i32 0, i32 1), align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.inet_timewait_sock* @inet_twsk_alloc(%struct.sock* %14, i32 %15)
  store %struct.inet_timewait_sock* %16, %struct.inet_timewait_sock** %7, align 8
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %7, align 8
  %19 = icmp ne %struct.inet_timewait_sock* %18, null
  br i1 %19, label %20, label %57

20:                                               ; preds = %17
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %21)
  store %struct.inet_connection_sock* %22, %struct.inet_connection_sock** %8, align 8
  %23 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %24 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 2
  %27 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %8, align 8
  %28 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 1
  %31 = sub nsw i32 %26, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %7, align 8
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = call i32 @__inet_twsk_hashdance(%struct.inet_timewait_sock* %32, %struct.sock* %33, i32* @dccp_hashinfo)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %20
  %41 = load i8*, i8** @DCCP_TIMEWAIT_LEN, align 8
  %42 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %7, align 8
  %43 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @DCCP_TIME_WAIT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i8*, i8** @DCCP_TIMEWAIT_LEN, align 8
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i8*, i8** @DCCP_TIMEWAIT_LEN, align 8
  %54 = call i32 @inet_twsk_schedule(%struct.inet_timewait_sock* %51, %struct.TYPE_3__* @dccp_death_row, i32 %52, i8* %53)
  %55 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %7, align 8
  %56 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %55)
  br label %59

57:                                               ; preds = %17
  %58 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %50
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = call i32 @dccp_done(%struct.sock* %60)
  ret void
}

declare dso_local %struct.inet_timewait_sock* @inet_twsk_alloc(%struct.sock*, i32) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @__inet_twsk_hashdance(%struct.inet_timewait_sock*, %struct.sock*, i32*) #1

declare dso_local i32 @inet_twsk_schedule(%struct.inet_timewait_sock*, %struct.TYPE_3__*, i32, i8*) #1

declare dso_local i32 @inet_twsk_put(%struct.inet_timewait_sock*) #1

declare dso_local i32 @DCCP_WARN(i8*) #1

declare dso_local i32 @dccp_done(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
