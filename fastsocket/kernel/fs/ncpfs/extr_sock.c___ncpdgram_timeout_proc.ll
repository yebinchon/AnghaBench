; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c___ncpdgram_timeout_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c___ncpdgram_timeout_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ncp_request_reply* }
%struct.ncp_request_reply = type { i32 }

@NCP_MOUNT_SOFT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@NCP_MAX_RPC_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncp_server*)* @__ncpdgram_timeout_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ncpdgram_timeout_proc(%struct.ncp_server* %0) #0 {
  %2 = alloca %struct.ncp_server*, align 8
  %3 = alloca %struct.ncp_request_reply*, align 8
  %4 = alloca i32, align 4
  store %struct.ncp_server* %0, %struct.ncp_server** %2, align 8
  %5 = load %struct.ncp_server*, %struct.ncp_server** %2, align 8
  %6 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %5, i32 0, i32 1
  %7 = call i32 @timer_pending(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %64, label %9

9:                                                ; preds = %1
  %10 = load %struct.ncp_server*, %struct.ncp_server** %2, align 8
  %11 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %12, align 8
  store %struct.ncp_request_reply* %13, %struct.ncp_request_reply** %3, align 8
  %14 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %3, align 8
  %15 = icmp ne %struct.ncp_request_reply* %14, null
  br i1 %15, label %16, label %63

16:                                               ; preds = %9
  %17 = load %struct.ncp_server*, %struct.ncp_server** %2, align 8
  %18 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NCP_MOUNT_SOFT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load %struct.ncp_server*, %struct.ncp_server** %2, align 8
  %26 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.ncp_server*, %struct.ncp_server** %2, align 8
  %32 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %3, align 8
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @__ncp_abort_request(%struct.ncp_server* %31, %struct.ncp_request_reply* %32, i32 %34)
  br label %64

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %16
  %38 = load %struct.ncp_server*, %struct.ncp_server** %2, align 8
  %39 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %3, align 8
  %42 = call i32 @ncpdgram_send(i32 %40, %struct.ncp_request_reply* %41)
  %43 = load %struct.ncp_server*, %struct.ncp_server** %2, align 8
  %44 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 1
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @NCP_MAX_RPC_TIMEOUT, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @NCP_MAX_RPC_TIMEOUT, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %37
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.ncp_server*, %struct.ncp_server** %2, align 8
  %55 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ncp_server*, %struct.ncp_server** %2, align 8
  %57 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %56, i32 0, i32 1
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = call i32 @mod_timer(i32* %57, i64 %61)
  br label %63

63:                                               ; preds = %52, %9
  br label %64

64:                                               ; preds = %30, %63, %1
  ret void
}

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @__ncp_abort_request(%struct.ncp_server*, %struct.ncp_request_reply*, i32) #1

declare dso_local i32 @ncpdgram_send(i32, %struct.ncp_request_reply*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
