; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c___xprt_lock_write_cong_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprt.c___xprt_lock_write_cong_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.rpc_rqst* }
%struct.rpc_rqst = type { i32, i64 }
%struct.rpc_xprt = type { %struct.rpc_task* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, i8*)* @__xprt_lock_write_cong_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xprt_lock_write_cong_func(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rpc_xprt*, align 8
  %7 = alloca %struct.rpc_rqst*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.rpc_xprt*
  store %struct.rpc_xprt* %9, %struct.rpc_xprt** %6, align 8
  %10 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %10, i32 0, i32 0
  %12 = load %struct.rpc_rqst*, %struct.rpc_rqst** %11, align 8
  store %struct.rpc_rqst* %12, %struct.rpc_rqst** %7, align 8
  %13 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  %14 = icmp eq %struct.rpc_rqst* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %17, i32 0, i32 0
  store %struct.rpc_task* %16, %struct.rpc_task** %18, align 8
  store i32 1, i32* %3, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %21 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %22 = call i64 @__xprt_get_cong(%struct.rpc_xprt* %20, %struct.rpc_task* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %26 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %27 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %26, i32 0, i32 0
  store %struct.rpc_task* %25, %struct.rpc_task** %27, align 8
  %28 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  %29 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.rpc_rqst*, %struct.rpc_rqst** %7, align 8
  %31 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  store i32 1, i32* %3, align 4
  br label %35

34:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %24, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @__xprt_get_cong(%struct.rpc_xprt*, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
