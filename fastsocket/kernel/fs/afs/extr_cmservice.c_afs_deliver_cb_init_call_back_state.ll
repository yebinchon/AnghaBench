; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_cmservice.c_afs_deliver_cb_init_call_back_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_cmservice.c_afs_deliver_cb_init_call_back_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, %struct.afs_server*, i32 }
%struct.afs_server = type { i32 }
%struct.sk_buff = type { i64 }
%struct.in_addr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c",{%u},%d\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@AFS_CALL_REPLYING = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@SRXAFSCB_InitCallBackState = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*, %struct.sk_buff*, i32)* @afs_deliver_cb_init_call_back_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_cb_init_call_back_state(%struct.afs_call* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_call*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_server*, align 8
  %9 = alloca %struct.in_addr, align 4
  store %struct.afs_call* %0, %struct.afs_call** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %12, i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EBADMSG, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %51

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %51

26:                                               ; preds = %22
  %27 = load i32, i32* @AFS_CALL_REPLYING, align 4
  %28 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %29 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @memcpy(%struct.in_addr* %9, i32* %32, i32 4)
  %34 = call %struct.afs_server* @afs_find_server(%struct.in_addr* %9)
  store %struct.afs_server* %34, %struct.afs_server** %8, align 8
  %35 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %36 = icmp ne %struct.afs_server* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* @ENOTCONN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %51

40:                                               ; preds = %26
  %41 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %42 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %43 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %42, i32 0, i32 1
  store %struct.afs_server* %41, %struct.afs_server** %43, align 8
  %44 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %45 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %44, i32 0, i32 0
  %46 = load i32, i32* @SRXAFSCB_InitCallBackState, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %49 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %48, i32 0, i32 0
  %50 = call i32 @schedule_work(i32* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %40, %37, %25, %19
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @_enter(i8*, i64, i32) #1

declare dso_local i32 @memcpy(%struct.in_addr*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.afs_server* @afs_find_server(%struct.in_addr*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
