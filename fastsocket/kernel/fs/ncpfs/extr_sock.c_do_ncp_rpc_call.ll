; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_do_ncp_rpc_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_do_ncp_rpc_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { i64 }
%struct.ncp_request_reply = type { i8*, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@RQ_DONE = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncp_server*, i32, i8*, i32)* @do_ncp_rpc_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_ncp_rpc_call(%struct.ncp_server* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ncp_server*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ncp_request_reply*, align 8
  store %struct.ncp_server* %0, %struct.ncp_server** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call %struct.ncp_request_reply* (...) @ncp_alloc_req()
  store %struct.ncp_request_reply* %12, %struct.ncp_request_reply** %11, align 8
  %13 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %14 = icmp ne %struct.ncp_request_reply* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %85

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %21 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %24 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %26 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %29 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %28, i32 0, i32 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 %27, i64* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %35 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %34, i32 0, i32 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 8
  %39 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %40 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %39, i32 0, i32 2
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %43 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %45 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %50 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %52 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %53 = call i32 @ncp_add_request(%struct.ncp_server* %51, %struct.ncp_request_reply* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %18
  br label %81

57:                                               ; preds = %18
  %58 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %59 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %62 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RQ_DONE, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @wait_event_interruptible(i32 %60, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %57
  %70 = load %struct.ncp_server*, %struct.ncp_server** %6, align 8
  %71 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %72 = load i32, i32* @EINTR, align 4
  %73 = sub nsw i32 0, %72
  %74 = call i32 @ncp_abort_request(%struct.ncp_server* %70, %struct.ncp_request_reply* %71, i32 %73)
  %75 = load i32, i32* @EINTR, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %81

77:                                               ; preds = %57
  %78 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %79 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %77, %69, %56
  %82 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %11, align 8
  %83 = call i32 @ncp_req_put(%struct.ncp_request_reply* %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %15
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.ncp_request_reply* @ncp_alloc_req(...) #1

declare dso_local i32 @ncp_add_request(%struct.ncp_server*, %struct.ncp_request_reply*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @ncp_abort_request(%struct.ncp_server*, %struct.ncp_request_reply*, i32) #1

declare dso_local i32 @ncp_req_put(%struct.ncp_request_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
