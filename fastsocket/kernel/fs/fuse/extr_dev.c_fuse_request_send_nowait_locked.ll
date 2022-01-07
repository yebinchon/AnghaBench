; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_request_send_nowait_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_request_send_nowait_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i64, i64, i32, i64, i32, i32, i64 }
%struct.fuse_req = type { i32, i32 }

@BLK_RW_SYNC = common dso_local global i32 0, align 4
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_req*)* @fuse_request_send_nowait_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_request_send_nowait_locked(%struct.fuse_conn* %0, %struct.fuse_req* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_req*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_req* %1, %struct.fuse_req** %4, align 8
  %5 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %6 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %8 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %12 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %15 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %20 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %19, i32 0, i32 2
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %23 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %26 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %21
  %30 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %31 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %36 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %35, i32 0, i32 5
  %37 = load i32, i32* @BLK_RW_SYNC, align 4
  %38 = call i32 @set_bdi_congested(i32* %36, i32 %37)
  %39 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %40 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %39, i32 0, i32 5
  %41 = load i32, i32* @BLK_RW_ASYNC, align 4
  %42 = call i32 @set_bdi_congested(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %29, %21
  %44 = load %struct.fuse_req*, %struct.fuse_req** %4, align 8
  %45 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %44, i32 0, i32 1
  %46 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %47 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %46, i32 0, i32 4
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  %49 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %50 = call i32 @flush_bg_queue(%struct.fuse_conn* %49)
  ret void
}

declare dso_local i32 @set_bdi_congested(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @flush_bg_queue(%struct.fuse_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
