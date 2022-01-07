; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_clunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_clunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c">>> TCLUNK fid %d\0A\00", align 1
@P9_TCLUNK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"<<< RCLUNK fid %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_clunk(%struct.p9_fid* %0) #0 {
  %2 = alloca %struct.p9_fid*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_req_t*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %2, align 8
  %6 = load i32, i32* @P9_DEBUG_9P, align 4
  %7 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  %8 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @P9_DPRINTK(i32 %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 0, i32* %3, align 4
  %11 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  %12 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %11, i32 0, i32 1
  %13 = load %struct.p9_client*, %struct.p9_client** %12, align 8
  store %struct.p9_client* %13, %struct.p9_client** %4, align 8
  %14 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %15 = load i32, i32* @P9_TCLUNK, align 4
  %16 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  %17 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %14, i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  store %struct.p9_req_t* %19, %struct.p9_req_t** %5, align 8
  %20 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %21 = call i64 @IS_ERR(%struct.p9_req_t* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.p9_req_t* %24)
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %1
  %27 = load i32, i32* @P9_DEBUG_9P, align 4
  %28 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  %29 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @P9_DPRINTK(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %33 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %34 = call i32 @p9_free_req(%struct.p9_client* %32, %struct.p9_req_t* %33)
  %35 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  %36 = call i32 @p9_fid_destroy(%struct.p9_fid* %35)
  br label %37

37:                                               ; preds = %26, %23
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9_free_req(%struct.p9_client*, %struct.p9_req_t*) #1

declare dso_local i32 @p9_fid_destroy(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
