; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_poll_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_poll_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_conn = type { i64, i32, i32, i32, i64, i32, i32 }

@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLNVAL = common dso_local global i32 0, align 4
@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error mux %p err %d\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@Rpending = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"mux %p can read\0A\00", align 1
@Rworksched = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"sched read work %p\0A\00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@Wpending = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"mux %p can write\0A\00", align 1
@Wworksched = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"sched write work %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p9_conn*)* @p9_poll_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p9_poll_mux(%struct.p9_conn* %0) #0 {
  %2 = alloca %struct.p9_conn*, align 8
  %3 = alloca i32, align 4
  store %struct.p9_conn* %0, %struct.p9_conn** %2, align 8
  %4 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %5 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %101

9:                                                ; preds = %1
  %10 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %11 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @p9_fd_poll(i32 %12, i32* null)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @POLLERR, align 4
  %19 = load i32, i32* @POLLHUP, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @POLLNVAL, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %16, %9
  %26 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %27 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, %struct.p9_conn*, ...) @P9_DPRINTK(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.p9_conn* %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ECONNRESET, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @p9_conn_cancel(%struct.p9_conn* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %16
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @POLLIN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i32, i32* @Rpending, align 4
  %46 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %47 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %46, i32 0, i32 2
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  %49 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %50 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %51 = call i32 (i32, i8*, %struct.p9_conn*, ...) @P9_DPRINTK(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.p9_conn* %50)
  %52 = load i32, i32* @Rworksched, align 4
  %53 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %54 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %53, i32 0, i32 2
  %55 = call i32 @test_and_set_bit(i32 %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %59 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %60 = call i32 (i32, i8*, %struct.p9_conn*, ...) @P9_DPRINTK(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.p9_conn* %59)
  %61 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %62 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %61, i32 0, i32 5
  %63 = call i32 @schedule_work(i32* %62)
  br label %64

64:                                               ; preds = %57, %44
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @POLLOUT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %65
  %71 = load i32, i32* @Wpending, align 4
  %72 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %73 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %72, i32 0, i32 2
  %74 = call i32 @set_bit(i32 %71, i32* %73)
  %75 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %76 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %77 = call i32 (i32, i8*, %struct.p9_conn*, ...) @P9_DPRINTK(i32 %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.p9_conn* %76)
  %78 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %79 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %70
  %83 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %84 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %83, i32 0, i32 3
  %85 = call i32 @list_empty(i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %82, %70
  %88 = load i32, i32* @Wworksched, align 4
  %89 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %90 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %89, i32 0, i32 2
  %91 = call i32 @test_and_set_bit(i32 %88, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %95 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %96 = call i32 (i32, i8*, %struct.p9_conn*, ...) @P9_DPRINTK(i32 %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), %struct.p9_conn* %95)
  %97 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %98 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %97, i32 0, i32 1
  %99 = call i32 @schedule_work(i32* %98)
  br label %100

100:                                              ; preds = %93, %87, %82
  br label %101

101:                                              ; preds = %8, %100, %65
  ret void
}

declare dso_local i32 @p9_fd_poll(i32, i32*) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.p9_conn*, ...) #1

declare dso_local i32 @p9_conn_cancel(%struct.p9_conn*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
