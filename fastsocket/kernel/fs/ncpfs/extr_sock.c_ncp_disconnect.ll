; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncp_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32, i64 }
%struct.ncp_request_header = type { i32, i64, i32 }

@NCP_DEALLOC_SLOT_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_disconnect(%struct.ncp_server* %0) #0 {
  %2 = alloca %struct.ncp_server*, align 8
  %3 = alloca %struct.ncp_request_header*, align 8
  store %struct.ncp_server* %0, %struct.ncp_server** %2, align 8
  %4 = load %struct.ncp_server*, %struct.ncp_server** %2, align 8
  %5 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.ncp_request_header*
  store %struct.ncp_request_header* %7, %struct.ncp_request_header** %3, align 8
  %8 = load i32, i32* @NCP_DEALLOC_SLOT_REQUEST, align 4
  %9 = load %struct.ncp_request_header*, %struct.ncp_request_header** %3, align 8
  %10 = getelementptr inbounds %struct.ncp_request_header, %struct.ncp_request_header* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ncp_request_header*, %struct.ncp_request_header** %3, align 8
  %12 = getelementptr inbounds %struct.ncp_request_header, %struct.ncp_request_header* %11, i32 0, i32 0
  store i32 2, i32* %12, align 8
  %13 = load %struct.ncp_request_header*, %struct.ncp_request_header** %3, align 8
  %14 = getelementptr inbounds %struct.ncp_request_header, %struct.ncp_request_header* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.ncp_server*, %struct.ncp_server** %2, align 8
  %16 = load %struct.ncp_server*, %struct.ncp_server** %2, align 8
  %17 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ncp_server*, %struct.ncp_server** %2, align 8
  %20 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ncp_do_request(%struct.ncp_server* %15, i32 24, i64 %18, i32 %21)
  ret i32 %22
}

declare dso_local i32 @ncp_do_request(%struct.ncp_server*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
