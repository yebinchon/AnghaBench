; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncpdgram_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncpdgram_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.ncp_request_reply = type { i32, i32, i32 }
%struct.kvec = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.ncp_request_reply*)* @ncpdgram_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncpdgram_send(%struct.socket* %0, %struct.ncp_request_reply* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.ncp_request_reply*, align 8
  %5 = alloca [3 x %struct.kvec], align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.ncp_request_reply* %1, %struct.ncp_request_reply** %4, align 8
  %6 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %5, i64 0, i64 0
  %7 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %8 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %11 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i32 @memcpy(%struct.kvec* %6, i32 %9, i32 %15)
  %17 = load %struct.socket*, %struct.socket** %3, align 8
  %18 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %5, i64 0, i64 0
  %19 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %20 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %23 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MSG_DONTWAIT, align 4
  %26 = call i32 @do_send(%struct.socket* %17, %struct.kvec* %18, i32 %21, i32 %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @memcpy(%struct.kvec*, i32, i32) #1

declare dso_local i32 @do_send(%struct.socket*, %struct.kvec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
