; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_delay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }

@NFS4_POLL_RETRY_MIN = common dso_local global i64 0, align 8
@NFS4_POLL_RETRY_MAX = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*, i64*)* @nfs4_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_delay(%struct.rpc_clnt* %0, i64* %1) #0 {
  %3 = alloca %struct.rpc_clnt*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @might_sleep()
  %7 = load i64*, i64** %4, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* @NFS4_POLL_RETRY_MIN, align 8
  %12 = load i64*, i64** %4, align 8
  store i64 %11, i64* %12, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i64*, i64** %4, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NFS4_POLL_RETRY_MAX, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* @NFS4_POLL_RETRY_MAX, align 8
  %20 = load i64*, i64** %4, align 8
  store i64 %19, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @freezable_schedule_timeout_killable(i64 %23)
  %25 = load i32, i32* @current, align 4
  %26 = call i64 @fatal_signal_pending(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i64*, i64** %4, align 8
  %33 = load i64, i64* %32, align 8
  %34 = shl i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @freezable_schedule_timeout_killable(i64) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
