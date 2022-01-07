; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_..dccp.h_dccp_ack_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_..dccp.h_dccp_ack_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dccp_sock = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @dccp_ack_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_ack_pending(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %4)
  store %struct.dccp_sock* %5, %struct.dccp_sock** %3, align 8
  %6 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %7 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %12 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %17 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @dccp_ackvec_pending(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = call i64 @inet_csk_ack_scheduled(%struct.sock* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %21, %15, %1
  %26 = phi i1 [ true, %15 ], [ true, %1 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i64 @dccp_ackvec_pending(i32*) #1

declare dso_local i64 @inet_csk_ack_scheduled(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
