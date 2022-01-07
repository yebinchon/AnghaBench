; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_wait_clnt_recover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_wait_clnt_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i64, i32 }

@NFS4CLNT_MANAGER_RUNNING = common dso_local global i32 0, align 4
@nfs_wait_bit_killable = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_wait_clnt_recover(%struct.nfs_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  %5 = call i32 (...) @might_sleep()
  %6 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %6, i32 0, i32 1
  %8 = load i32, i32* @NFS4CLNT_MANAGER_RUNNING, align 4
  %9 = load i32, i32* @nfs_wait_bit_killable, align 4
  %10 = load i32, i32* @TASK_KILLABLE, align 4
  %11 = call i32 @wait_on_bit(i32* %7, i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %18 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %23 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %21, %14
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
