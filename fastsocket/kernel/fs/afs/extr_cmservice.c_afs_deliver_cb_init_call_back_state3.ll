; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_cmservice.c_afs_deliver_cb_init_call_back_state3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_cmservice.c_afs_deliver_cb_init_call_back_state3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, %struct.afs_server*, i32 }
%struct.afs_server = type { i32 }
%struct.sk_buff = type { i32 }
%struct.in_addr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c",{%u},%d\00", align 1
@AFS_CALL_REPLYING = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@SRXAFSCB_InitCallBackState = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*, %struct.sk_buff*, i32)* @afs_deliver_cb_init_call_back_state3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_cb_init_call_back_state3(%struct.afs_call* %0, %struct.sk_buff* %1, i32 %2) #0 {
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
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  %19 = load i32, i32* @AFS_CALL_REPLYING, align 4
  %20 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %21 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @memcpy(%struct.in_addr* %9, i32* %24, i32 4)
  %26 = call %struct.afs_server* @afs_find_server(%struct.in_addr* %9)
  store %struct.afs_server* %26, %struct.afs_server** %8, align 8
  %27 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %28 = icmp ne %struct.afs_server* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @ENOTCONN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %43

32:                                               ; preds = %18
  %33 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %34 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %35 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %34, i32 0, i32 1
  store %struct.afs_server* %33, %struct.afs_server** %35, align 8
  %36 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %37 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %36, i32 0, i32 0
  %38 = load i32, i32* @SRXAFSCB_InitCallBackState, align 4
  %39 = call i32 @INIT_WORK(i32* %37, i32 %38)
  %40 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %41 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %40, i32 0, i32 0
  %42 = call i32 @schedule_work(i32* %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %32, %29, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

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
