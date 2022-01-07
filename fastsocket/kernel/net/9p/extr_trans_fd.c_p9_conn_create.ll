; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_conn_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_conn = type { i32, i32, i32, i32, i32, i32, i32, %struct.p9_client*, i32 }
%struct.p9_client = type { i32 }

@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"client %p msize %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@p9_read_work = common dso_local global i32 0, align 4
@p9_write_work = common dso_local global i32 0, align 4
@p9_pollwait = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"mux %p can read\0A\00", align 1
@Rpending = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"mux %p can write\0A\00", align 1
@Wpending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.p9_conn* (%struct.p9_client*)* @p9_conn_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p9_conn* @p9_conn_create(%struct.p9_client* %0) #0 {
  %2 = alloca %struct.p9_conn*, align 8
  %3 = alloca %struct.p9_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_conn*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %3, align 8
  %6 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %7 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %8 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %9 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.p9_client* %7, i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.p9_conn* @kzalloc(i32 48, i32 %12)
  store %struct.p9_conn* %13, %struct.p9_conn** %5, align 8
  %14 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %15 = icmp ne %struct.p9_conn* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.p9_conn* @ERR_PTR(i32 %18)
  store %struct.p9_conn* %19, %struct.p9_conn** %2, align 8
  br label %79

20:                                               ; preds = %1
  %21 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %22 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %21, i32 0, i32 8
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %25 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %26 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %25, i32 0, i32 7
  store %struct.p9_client* %24, %struct.p9_client** %26, align 8
  %27 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %28 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %27, i32 0, i32 6
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %31 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %30, i32 0, i32 5
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %34 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %33, i32 0, i32 4
  %35 = load i32, i32* @p9_read_work, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  %37 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %38 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %37, i32 0, i32 3
  %39 = load i32, i32* @p9_write_work, align 4
  %40 = call i32 @INIT_WORK(i32* %38, i32 %39)
  %41 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %42 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %41, i32 0, i32 2
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %45 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %44, i32 0, i32 1
  %46 = load i32, i32* @p9_pollwait, align 4
  %47 = call i32 @init_poll_funcptr(i32* %45, i32 %46)
  %48 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %49 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %50 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %49, i32 0, i32 1
  %51 = call i32 @p9_fd_poll(%struct.p9_client* %48, i32* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @POLLIN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %20
  %57 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %58 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %59 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.p9_conn* %58)
  %60 = load i32, i32* @Rpending, align 4
  %61 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %62 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %61, i32 0, i32 0
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  br label %64

64:                                               ; preds = %56, %20
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @POLLOUT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %71 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %72 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.p9_conn* %71)
  %73 = load i32, i32* @Wpending, align 4
  %74 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  %75 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %74, i32 0, i32 0
  %76 = call i32 @set_bit(i32 %73, i32* %75)
  br label %77

77:                                               ; preds = %69, %64
  %78 = load %struct.p9_conn*, %struct.p9_conn** %5, align 8
  store %struct.p9_conn* %78, %struct.p9_conn** %2, align 8
  br label %79

79:                                               ; preds = %77, %16
  %80 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  ret %struct.p9_conn* %80
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, ...) #1

declare dso_local %struct.p9_conn* @kzalloc(i32, i32) #1

declare dso_local %struct.p9_conn* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_poll_funcptr(i32*, i32) #1

declare dso_local i32 @p9_fd_poll(%struct.p9_client*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
