; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_call_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_call_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64, %struct.TYPE_4__*, i32 (%struct.rpc_task*)*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@EAGAIN = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @call_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_transmit(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %3 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %4 = call i32 @dprint_status(%struct.rpc_task* %3)
  %5 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %6 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %5, i32 0, i32 2
  store i32 (%struct.rpc_task*)* @call_status, i32 (%struct.rpc_task*)** %6, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %87

12:                                               ; preds = %1
  %13 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %14 = call i64 @xprt_prepare_transmit(%struct.rpc_task* %13)
  %15 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %16 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %87

22:                                               ; preds = %12
  %23 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %24 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %23, i32 0, i32 2
  store i32 (%struct.rpc_task*)* @call_transmit_status, i32 (%struct.rpc_task*)** %24, align 8
  %25 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %26 = call i64 @rpc_task_need_encode(%struct.rpc_task* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %22
  %29 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %30 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %38 = call i32 @rpc_xdr_encode(%struct.rpc_task* %37)
  %39 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %40 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %28
  %44 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %45 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EAGAIN, align 8
  %48 = sub nsw i64 0, %47
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %52 = load i32, i32* @HZ, align 4
  %53 = ashr i32 %52, 4
  %54 = call i32 @rpc_delay(%struct.rpc_task* %51, i32 %53)
  br label %61

55:                                               ; preds = %43
  %56 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %57 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %58 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @rpc_exit(%struct.rpc_task* %56, i64 %59)
  br label %61

61:                                               ; preds = %55, %50
  br label %87

62:                                               ; preds = %28
  br label %63

63:                                               ; preds = %62, %22
  %64 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %65 = call i32 @xprt_transmit(%struct.rpc_task* %64)
  %66 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %67 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %87

71:                                               ; preds = %63
  %72 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %73 = call i32 @call_transmit_status(%struct.rpc_task* %72)
  %74 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %75 = call i64 @rpc_reply_expected(%struct.rpc_task* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %87

78:                                               ; preds = %71
  %79 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %80 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %79, i32 0, i32 2
  store i32 (%struct.rpc_task*)* @rpc_exit_task, i32 (%struct.rpc_task*)** %80, align 8
  %81 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %82 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %86 = call i32 @rpc_wake_up_queued_task(i32* %84, %struct.rpc_task* %85)
  br label %87

87:                                               ; preds = %78, %77, %70, %61, %21, %11
  ret void
}

declare dso_local i32 @dprint_status(%struct.rpc_task*) #1

declare dso_local i32 @call_status(%struct.rpc_task*) #1

declare dso_local i64 @xprt_prepare_transmit(%struct.rpc_task*) #1

declare dso_local i32 @call_transmit_status(%struct.rpc_task*) #1

declare dso_local i64 @rpc_task_need_encode(%struct.rpc_task*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rpc_xdr_encode(%struct.rpc_task*) #1

declare dso_local i32 @rpc_delay(%struct.rpc_task*, i32) #1

declare dso_local i32 @rpc_exit(%struct.rpc_task*, i64) #1

declare dso_local i32 @xprt_transmit(%struct.rpc_task*) #1

declare dso_local i64 @rpc_reply_expected(%struct.rpc_task*) #1

declare dso_local i32 @rpc_exit_task(%struct.rpc_task*) #1

declare dso_local i32 @rpc_wake_up_queued_task(i32*, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
