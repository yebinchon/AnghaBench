; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_wait_for_sndbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_wait_for_sndbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sock*, i64 }
%struct.sock = type { i64 }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"wait_for_sndbuf: asoc=%p, timeo=%ld, msg_len=%zu\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SCTP_STATE_SHUTDOWN_PENDING = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*, i64*, i64)* @sctp_wait_for_sndbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_wait_for_sndbuf(%struct.sctp_association* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %11 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* @wait, align 4
  %17 = call i32 @DEFINE_WAIT(i32 %16)
  %18 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.sctp_association* %18, i64 %20, i64 %21)
  %23 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %24 = call i32 @sctp_association_hold(%struct.sctp_association* %23)
  br label %25

25:                                               ; preds = %63, %3
  %26 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %27 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %26, i32 0, i32 1
  %28 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %29 = call i32 @prepare_to_wait_exclusive(i32* %27, i32* @wait, i32 %28)
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %95

34:                                               ; preds = %25
  %35 = load %struct.sock*, %struct.sock** %7, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %41 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SCTP_STATE_SHUTDOWN_PENDING, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %47 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %39, %34
  br label %88

52:                                               ; preds = %45
  %53 = load i32, i32* @current, align 4
  %54 = call i64 @signal_pending(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %91

57:                                               ; preds = %52
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %60 = call i64 @sctp_wspace(%struct.sctp_association* %59)
  %61 = icmp ule i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %80

63:                                               ; preds = %57
  %64 = load %struct.sock*, %struct.sock** %7, align 8
  %65 = call i32 @sctp_release_sock(%struct.sock* %64)
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @schedule_timeout(i64 %66)
  store i64 %67, i64* %9, align 8
  %68 = load %struct.sock*, %struct.sock** %7, align 8
  %69 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %70 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.sock*, %struct.sock** %71, align 8
  %73 = icmp ne %struct.sock* %68, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  %76 = load %struct.sock*, %struct.sock** %7, align 8
  %77 = call i32 @sctp_lock_sock(%struct.sock* %76)
  %78 = load i64, i64* %9, align 8
  %79 = load i64*, i64** %5, align 8
  store i64 %78, i64* %79, align 8
  br label %25

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %95, %91, %88, %80
  %82 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %83 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %82, i32 0, i32 1
  %84 = call i32 @finish_wait(i32* %83, i32* @wait)
  %85 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %86 = call i32 @sctp_association_put(%struct.sctp_association* %85)
  %87 = load i32, i32* %8, align 4
  ret i32 %87

88:                                               ; preds = %51
  %89 = load i32, i32* @EPIPE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %81

91:                                               ; preds = %56
  %92 = load i64*, i64** %5, align 8
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @sock_intr_errno(i64 %93)
  store i32 %94, i32* %8, align 4
  br label %81

95:                                               ; preds = %33
  %96 = load i32, i32* @EAGAIN, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %8, align 4
  br label %81
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, %struct.sctp_association*, i64, i64) #1

declare dso_local i32 @sctp_association_hold(%struct.sctp_association*) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32*, i32*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @sctp_wspace(%struct.sctp_association*) #1

declare dso_local i32 @sctp_release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sctp_lock_sock(%struct.sock*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @sctp_association_put(%struct.sctp_association*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
