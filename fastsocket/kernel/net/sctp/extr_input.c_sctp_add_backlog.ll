; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_add_backlog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_add_backlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sctp_chunk = type { %struct.sctp_ep_common* }
%struct.sctp_ep_common = type { i64 }
%struct.TYPE_2__ = type { %struct.sctp_chunk* }

@SCTP_EP_TYPE_ASSOCIATION = common dso_local global i64 0, align 8
@SCTP_EP_TYPE_SOCKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @sctp_add_backlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_add_backlog(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.sctp_ep_common*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.TYPE_2__* @SCTP_INPUT_CB(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  store %struct.sctp_chunk* %11, %struct.sctp_chunk** %5, align 8
  %12 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %13 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %12, i32 0, i32 0
  %14 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %13, align 8
  store %struct.sctp_ep_common* %14, %struct.sctp_ep_common** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sk_add_backlog(%struct.sock* %15, %struct.sk_buff* %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* @SCTP_EP_TYPE_ASSOCIATION, align 8
  %25 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %6, align 8
  %26 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %6, align 8
  %31 = call i32 @sctp_assoc(%struct.sctp_ep_common* %30)
  %32 = call i32 @sctp_association_hold(i32 %31)
  br label %46

33:                                               ; preds = %23
  %34 = load i64, i64* @SCTP_EP_TYPE_SOCKET, align 8
  %35 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %6, align 8
  %36 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %6, align 8
  %41 = call i32 @sctp_ep(%struct.sctp_ep_common* %40)
  %42 = call i32 @sctp_endpoint_hold(i32 %41)
  br label %45

43:                                               ; preds = %33
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %43, %39
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_2__* @SCTP_INPUT_CB(%struct.sk_buff*) #1

declare dso_local i32 @sk_add_backlog(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @sctp_association_hold(i32) #1

declare dso_local i32 @sctp_assoc(%struct.sctp_ep_common*) #1

declare dso_local i32 @sctp_endpoint_hold(i32) #1

declare dso_local i32 @sctp_ep(%struct.sctp_ep_common*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
