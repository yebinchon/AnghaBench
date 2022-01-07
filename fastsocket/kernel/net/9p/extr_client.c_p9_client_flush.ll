; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_client_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32 }
%struct.p9_req_t = type { i64, i32, i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c">>> TFLUSH tag %d\0A\00", align 1
@P9_TFLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@REQ_STATUS_FLSH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_req_t*)* @p9_client_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_client_flush(%struct.p9_client* %0, %struct.p9_req_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_req_t*, align 8
  %6 = alloca %struct.p9_req_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %5, align 8
  %9 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %10 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @p9_parse_header(i32 %11, i32* null, i32* null, i32* %7, i32 1)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load i32, i32* @P9_DEBUG_9P, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @P9_DPRINTK(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %22 = load i32, i32* @P9_TFLUSH, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %21, i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  store %struct.p9_req_t* %24, %struct.p9_req_t** %6, align 8
  %25 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %26 = call i64 @IS_ERR(%struct.p9_req_t* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %30 = call i32 @PTR_ERR(%struct.p9_req_t* %29)
  store i32 %30, i32* %3, align 4
  br label %51

31:                                               ; preds = %17
  %32 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %33 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %36 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REQ_STATUS_FLSH, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %42 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %41, i32 0, i32 1
  %43 = call i32 @list_del(i32* %42)
  br label %44

44:                                               ; preds = %40, %31
  %45 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %46 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %49 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %50 = call i32 @p9_free_req(%struct.p9_client* %48, %struct.p9_req_t* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %28, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @p9_parse_header(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @p9_free_req(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
