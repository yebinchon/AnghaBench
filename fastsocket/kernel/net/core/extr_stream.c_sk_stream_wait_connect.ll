; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_stream.c_sk_stream_wait_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_stream.c_sk_stream_wait_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.sock = type { i32, i32, i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@wait = common dso_local global i32 0, align 4
@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TCPF_ESTABLISHED = common dso_local global i32 0, align 4
@TCPF_CLOSE_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_stream_wait_connect(%struct.sock* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %9, %struct.task_struct** %6, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = call i32 @DEFINE_WAIT(i32 %10)
  br label %12

12:                                               ; preds = %88, %2
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @sock_error(%struct.sock* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %93

19:                                               ; preds = %12
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* @TCPF_SYN_SENT, align 4
  %25 = load i32, i32* @TCPF_SYN_RECV, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @EPIPE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %93

33:                                               ; preds = %19
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %93

40:                                               ; preds = %33
  %41 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %42 = call i64 @signal_pending(%struct.task_struct* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @sock_intr_errno(i64 %46)
  store i32 %47, i32* %3, align 4
  br label %93

48:                                               ; preds = %40
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %53 = call i32 @prepare_to_wait(i32 %51, i32* @wait, i32 %52)
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = load i64*, i64** %5, align 8
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %48
  %65 = load %struct.sock*, %struct.sock** %4, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 1, %67
  %69 = load i32, i32* @TCPF_ESTABLISHED, align 4
  %70 = load i32, i32* @TCPF_CLOSE_WAIT, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %68, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %64, %48
  %77 = phi i1 [ false, %48 ], [ %75, %64 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @sk_wait_event(%struct.sock* %58, i64* %59, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load %struct.sock*, %struct.sock** %4, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @finish_wait(i32 %82, i32* @wait)
  %84 = load %struct.sock*, %struct.sock** %4, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br i1 %91, label %12, label %92

92:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %44, %37, %30, %17
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i64 @signal_pending(%struct.task_struct*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_wait_event(%struct.sock*, i64*, i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
