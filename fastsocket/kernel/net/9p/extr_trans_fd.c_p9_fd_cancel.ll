; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_fd_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_fd_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32 }
%struct.p9_req_t = type { i64, i32 }

@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"client %p req %p\0A\00", align 1
@REQ_STATUS_UNSENT = common dso_local global i64 0, align 8
@REQ_STATUS_FLSHD = common dso_local global i64 0, align 8
@REQ_STATUS_SENT = common dso_local global i64 0, align 8
@REQ_STATUS_FLSH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_req_t*)* @p9_fd_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_fd_cancel(%struct.p9_client* %0, %struct.p9_req_t* %1) #0 {
  %3 = alloca %struct.p9_client*, align 8
  %4 = alloca %struct.p9_req_t*, align 8
  %5 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %3, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %7 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %8 = load %struct.p9_req_t*, %struct.p9_req_t** %4, align 8
  %9 = call i32 @P9_DPRINTK(i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.p9_client* %7, %struct.p9_req_t* %8)
  %10 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %11 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.p9_req_t*, %struct.p9_req_t** %4, align 8
  %14 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @REQ_STATUS_UNSENT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.p9_req_t*, %struct.p9_req_t** %4, align 8
  %20 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %19, i32 0, i32 1
  %21 = call i32 @list_del(i32* %20)
  %22 = load i64, i64* @REQ_STATUS_FLSHD, align 8
  %23 = load %struct.p9_req_t*, %struct.p9_req_t** %4, align 8
  %24 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  store i32 0, i32* %5, align 4
  br label %36

25:                                               ; preds = %2
  %26 = load %struct.p9_req_t*, %struct.p9_req_t** %4, align 8
  %27 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REQ_STATUS_SENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* @REQ_STATUS_FLSH, align 8
  %33 = load %struct.p9_req_t*, %struct.p9_req_t** %4, align 8
  %34 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %25
  br label %36

36:                                               ; preds = %35, %18
  %37 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %38 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.p9_client*, %struct.p9_req_t*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
