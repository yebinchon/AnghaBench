; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_terminate_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_terminate_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DCCP_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Stop PARTOPEN timer (%p)\0A\00", align 1
@ICSK_TIME_DACK = common dso_local global i32 0, align 4
@DCCP_ROLE_SERVER = common dso_local global i32 0, align 4
@DCCP_ACTIVE_CLOSEREQ = common dso_local global i32 0, align 4
@DCCP_CLOSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @dccp_terminate_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_terminate_connection(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load i32, i32* @DCCP_CLOSED, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %37 [
    i32 129, label %8
    i32 128, label %8
    i32 130, label %11
    i32 131, label %17
  ]

8:                                                ; preds = %1, %1
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call i32 @dccp_finish_passive_close(%struct.sock* %9)
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = load i32, i32* @ICSK_TIME_DACK, align 4
  %16 = call i32 @inet_csk_clear_xmit_timer(%struct.sock* %14, i32 %15)
  br label %17

17:                                               ; preds = %1, %11
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = call i32 @dccp_send_close(%struct.sock* %18, i32 1)
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DCCP_ROLE_SERVER, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @DCCP_ACTIVE_CLOSEREQ, align 4
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %26, %17
  %35 = load i32, i32* @DCCP_CLOSING, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %1, %36
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @dccp_set_state(%struct.sock* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %8
  ret void
}

declare dso_local i32 @dccp_finish_passive_close(%struct.sock*) #1

declare dso_local i32 @dccp_pr_debug(i8*, %struct.sock*) #1

declare dso_local i32 @inet_csk_clear_xmit_timer(%struct.sock*, i32) #1

declare dso_local i32 @dccp_send_close(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_2__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
