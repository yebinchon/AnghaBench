; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_free_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_free_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32 }
%struct.p9_req_t = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@P9_DEBUG_MUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"clnt %p req %p tag: %d\0A\00", align 1
@REQ_STATUS_IDLE = common dso_local global i32 0, align 4
@P9_NOTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p9_client*, %struct.p9_req_t*)* @p9_free_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p9_free_req(%struct.p9_client* %0, %struct.p9_req_t* %1) #0 {
  %3 = alloca %struct.p9_client*, align 8
  %4 = alloca %struct.p9_req_t*, align 8
  %5 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %3, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %4, align 8
  %6 = load %struct.p9_req_t*, %struct.p9_req_t** %4, align 8
  %7 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @P9_DEBUG_MUX, align 4
  %12 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %13 = load %struct.p9_req_t*, %struct.p9_req_t** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @P9_DPRINTK(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.p9_client* %12, %struct.p9_req_t* %13, i32 %14)
  %16 = load i32, i32* @REQ_STATUS_IDLE, align 4
  %17 = load %struct.p9_req_t*, %struct.p9_req_t** %4, align 8
  %18 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @P9_NOTAG, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %25 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @p9_idpool_check(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %32 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @p9_idpool_put(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %22, %2
  ret void
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.p9_client*, %struct.p9_req_t*, i32) #1

declare dso_local i64 @p9_idpool_check(i32, i32) #1

declare dso_local i32 @p9_idpool_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
