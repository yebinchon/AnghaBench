; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_fd_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_fd_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, %struct.p9_trans_fd* }
%struct.p9_trans_fd = type { %struct.p9_conn* }
%struct.p9_conn = type { i64, i32, i32, i32, i32 }
%struct.p9_req_t = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mux %p task %p tcall %p id %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@REQ_STATUS_UNSENT = common dso_local global i32 0, align 4
@Wpending = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@Wworksched = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_req_t*)* @p9_fd_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_fd_request(%struct.p9_client* %0, %struct.p9_req_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_req_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p9_trans_fd*, align 8
  %8 = alloca %struct.p9_conn*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %5, align 8
  %9 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %10 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %9, i32 0, i32 1
  %11 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %10, align 8
  store %struct.p9_trans_fd* %11, %struct.p9_trans_fd** %7, align 8
  %12 = load %struct.p9_trans_fd*, %struct.p9_trans_fd** %7, align 8
  %13 = getelementptr inbounds %struct.p9_trans_fd, %struct.p9_trans_fd* %12, i32 0, i32 0
  %14 = load %struct.p9_conn*, %struct.p9_conn** %13, align 8
  store %struct.p9_conn* %14, %struct.p9_conn** %8, align 8
  %15 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %16 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %17 = load i32, i32* @current, align 4
  %18 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %19 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %22 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @P9_DPRINTK(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.p9_conn* %16, i32 %17, %struct.TYPE_2__* %20, i32 %25)
  %27 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %28 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %33 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %79

36:                                               ; preds = %2
  %37 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %38 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load i32, i32* @REQ_STATUS_UNSENT, align 4
  %41 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %42 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %44 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %43, i32 0, i32 0
  %45 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %46 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %45, i32 0, i32 4
  %47 = call i32 @list_add_tail(i32* %44, i32* %46)
  %48 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %49 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load i32, i32* @Wpending, align 4
  %52 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %53 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %52, i32 0, i32 2
  %54 = call i64 @test_and_clear_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %36
  %57 = load i32, i32* @POLLOUT, align 4
  store i32 %57, i32* %6, align 4
  br label %63

58:                                               ; preds = %36
  %59 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %60 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @p9_fd_poll(i32 %61, i32* null)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %58, %56
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @POLLOUT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32, i32* @Wworksched, align 4
  %70 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %71 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %70, i32 0, i32 2
  %72 = call i32 @test_and_set_bit(i32 %69, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = load %struct.p9_conn*, %struct.p9_conn** %8, align 8
  %76 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %75, i32 0, i32 1
  %77 = call i32 @schedule_work(i32* %76)
  br label %78

78:                                               ; preds = %74, %68, %63
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %31
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.p9_conn*, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @p9_fd_poll(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
