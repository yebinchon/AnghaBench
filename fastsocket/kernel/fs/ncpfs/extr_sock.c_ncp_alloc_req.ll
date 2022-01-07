; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncp_alloc_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_ncp_alloc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_request_reply = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RQ_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ncp_request_reply* ()* @ncp_alloc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ncp_request_reply* @ncp_alloc_req() #0 {
  %1 = alloca %struct.ncp_request_reply*, align 8
  %2 = alloca %struct.ncp_request_reply*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.ncp_request_reply* @kmalloc(i32 12, i32 %3)
  store %struct.ncp_request_reply* %4, %struct.ncp_request_reply** %2, align 8
  %5 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %2, align 8
  %6 = icmp ne %struct.ncp_request_reply* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.ncp_request_reply* null, %struct.ncp_request_reply** %1, align 8
  br label %19

8:                                                ; preds = %0
  %9 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %2, align 8
  %10 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %9, i32 0, i32 2
  %11 = call i32 @init_waitqueue_head(i32* %10)
  %12 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %2, align 8
  %13 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %12, i32 0, i32 1
  %14 = call i32 @atomic_set(i32* %13, i32 1)
  %15 = load i32, i32* @RQ_IDLE, align 4
  %16 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %2, align 8
  %17 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %2, align 8
  store %struct.ncp_request_reply* %18, %struct.ncp_request_reply** %1, align 8
  br label %19

19:                                               ; preds = %8, %7
  %20 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %1, align 8
  ret %struct.ncp_request_reply* %20
}

declare dso_local %struct.ncp_request_reply* @kmalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
