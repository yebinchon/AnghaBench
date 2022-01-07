; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncp_init_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncp_init_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32, i64 }
%struct.ncp_request_reply = type { i32 }
%struct.ncp_request_header = type { i32, i32, i64 }

@RQ_INPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncp_server*, %struct.ncp_request_reply*, %struct.ncp_request_header*)* @ncp_init_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncp_init_header(%struct.ncp_server* %0, %struct.ncp_request_reply* %1, %struct.ncp_request_header* %2) #0 {
  %4 = alloca %struct.ncp_server*, align 8
  %5 = alloca %struct.ncp_request_reply*, align 8
  %6 = alloca %struct.ncp_request_header*, align 8
  store %struct.ncp_server* %0, %struct.ncp_server** %4, align 8
  store %struct.ncp_request_reply* %1, %struct.ncp_request_reply** %5, align 8
  store %struct.ncp_request_header* %2, %struct.ncp_request_header** %6, align 8
  %7 = load i32, i32* @RQ_INPROGRESS, align 4
  %8 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %5, align 8
  %9 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %11 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ncp_request_header*, %struct.ncp_request_header** %6, align 8
  %14 = getelementptr inbounds %struct.ncp_request_header, %struct.ncp_request_header* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %16 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %17, 8
  %19 = load %struct.ncp_request_header*, %struct.ncp_request_header** %6, align 8
  %20 = getelementptr inbounds %struct.ncp_request_header, %struct.ncp_request_header* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ncp_server*, %struct.ncp_server** %4, align 8
  %22 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.ncp_request_header*, %struct.ncp_request_header** %6, align 8
  %26 = getelementptr inbounds %struct.ncp_request_header, %struct.ncp_request_header* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
