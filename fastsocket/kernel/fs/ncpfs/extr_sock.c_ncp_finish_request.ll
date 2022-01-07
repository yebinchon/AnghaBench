; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncp_finish_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncp_finish_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32 }
%struct.ncp_request_reply = type { i32, i64, i32, i32, i32 }

@RQ_ABANDONED = common dso_local global i64 0, align 8
@RQ_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncp_server*, %struct.ncp_request_reply*, i32)* @ncp_finish_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncp_finish_request(%struct.ncp_server* %0, %struct.ncp_request_reply* %1, i32 %2) #0 {
  %4 = alloca %struct.ncp_server*, align 8
  %5 = alloca %struct.ncp_request_reply*, align 8
  %6 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %4, align 8
  store %struct.ncp_request_reply* %1, %struct.ncp_request_reply** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %5, align 8
  %9 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %5, align 8
  %11 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RQ_ABANDONED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %5, align 8
  %17 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %20 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %5, align 8
  %23 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i32 %18, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %15, %3
  %27 = load i64, i64* @RQ_DONE, align 8
  %28 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %5, align 8
  %29 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %5, align 8
  %31 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %30, i32 0, i32 2
  %32 = call i32 @wake_up_all(i32* %31)
  %33 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %5, align 8
  %34 = call i32 @ncp_req_put(%struct.ncp_request_reply* %33)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @ncp_req_put(%struct.ncp_request_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
