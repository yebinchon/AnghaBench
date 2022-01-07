; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.kvec = type { i32, i32* }
%struct.msghdr = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"session %p len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i32*, i32)* @rfcomm_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_send_frame(%struct.rfcomm_session* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rfcomm_session*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.kvec, align 8
  %9 = alloca %struct.msghdr, align 4
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %11 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %10, i32 0, i32 0
  %12 = load %struct.socket*, %struct.socket** %11, align 8
  store %struct.socket* %12, %struct.socket** %7, align 8
  %13 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 0
  %14 = load i32*, i32** %5, align 8
  %15 = ptrtoint i32* %14 to i32
  store i32 %15, i32* %13, align 8
  %16 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 1
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %16, align 8
  %20 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %20, i32 %21)
  %23 = call i32 @memset(%struct.msghdr* %9, i32 0, i32 4)
  %24 = load %struct.socket*, %struct.socket** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @kernel_sendmsg(%struct.socket* %24, %struct.msghdr* %9, %struct.kvec* %8, i32 1, i32 %25)
  ret i32 %26
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @kernel_sendmsg(%struct.socket*, %struct.msghdr*, %struct.kvec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
