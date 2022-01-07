; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_queue_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_queue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, i32, i32, i32 }
%struct.fuse_req = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.fuse_arg = type { i32 }

@FUSE_REQ_PENDING = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_req*)* @queue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_request(%struct.fuse_conn* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  %5 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %6 = call i32 @fuse_get_unique(%struct.fuse_conn* %5)
  %7 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %8 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %6, i32* %10, align 8
  %11 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %12 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %16 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.fuse_arg*
  %20 = call i64 @len_args(i32 %14, %struct.fuse_arg* %19)
  %21 = add i64 4, %20
  %22 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %23 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  %26 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %27 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %26, i32 0, i32 2
  %28 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %29 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %28, i32 0, i32 3
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load i32, i32* @FUSE_REQ_PENDING, align 4
  %32 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %33 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %35 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %2
  %39 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %40 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %42 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %41, i32 0, i32 2
  %43 = call i32 @atomic_inc(i32* %42)
  br label %44

44:                                               ; preds = %38, %2
  %45 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %46 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %45, i32 0, i32 1
  %47 = call i32 @wake_up(i32* %46)
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %49 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %48, i32 0, i32 0
  %50 = load i32, i32* @SIGIO, align 4
  %51 = load i32, i32* @POLL_IN, align 4
  %52 = call i32 @kill_fasync(i32* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @fuse_get_unique(%struct.fuse_conn*) #1

declare dso_local i64 @len_args(i32, %struct.fuse_arg*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
