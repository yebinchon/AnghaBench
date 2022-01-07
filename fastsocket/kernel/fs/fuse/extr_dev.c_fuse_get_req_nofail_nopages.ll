; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_get_req_nofail_nopages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_get_req_nofail_nopages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { i32 }
%struct.fuse_conn = type { i32, i32, i32 }
%struct.file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fuse_req* @fuse_get_req_nofail_nopages(%struct.fuse_conn* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.fuse_req*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %7 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %6, i32 0, i32 2
  %8 = call i32 @atomic_inc(i32* %7)
  %9 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %10 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %13 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @wait_event(i32 %11, i32 %17)
  %19 = call %struct.fuse_req* @fuse_request_alloc(i32 0)
  store %struct.fuse_req* %19, %struct.fuse_req** %5, align 8
  %20 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %21 = icmp ne %struct.fuse_req* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = call %struct.fuse_req* @get_reserved_req(%struct.fuse_conn* %23, %struct.file* %24)
  store %struct.fuse_req* %25, %struct.fuse_req** %5, align 8
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %28 = call i32 @fuse_req_init_context(%struct.fuse_req* %27)
  %29 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  %30 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.fuse_req*, %struct.fuse_req** %5, align 8
  ret %struct.fuse_req* %31
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local %struct.fuse_req* @fuse_request_alloc(i32) #1

declare dso_local %struct.fuse_req* @get_reserved_req(%struct.fuse_conn*, %struct.file*) #1

declare dso_local i32 @fuse_req_init_context(%struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
