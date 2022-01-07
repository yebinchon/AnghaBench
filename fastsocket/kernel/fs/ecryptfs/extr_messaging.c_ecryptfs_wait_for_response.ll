; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_messaging.c_ecryptfs_wait_for_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_messaging.c_ecryptfs_wait_for_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_msg_ctx = type { i64, i32, %struct.ecryptfs_message* }
%struct.ecryptfs_message = type { i32 }

@ecryptfs_message_wait_timeout = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ecryptfs_msg_ctx_lists_mux = common dso_local global i32 0, align 4
@ECRYPTFS_MSG_CTX_STATE_DONE = common dso_local global i64 0, align 8
@ENOMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_wait_for_response(%struct.ecryptfs_msg_ctx* %0, %struct.ecryptfs_message** %1) #0 {
  %3 = alloca %struct.ecryptfs_msg_ctx*, align 8
  %4 = alloca %struct.ecryptfs_message**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ecryptfs_msg_ctx* %0, %struct.ecryptfs_msg_ctx** %3, align 8
  store %struct.ecryptfs_message** %1, %struct.ecryptfs_message*** %4, align 8
  %7 = load i64, i64* @ecryptfs_message_wait_timeout, align 8
  %8 = load i64, i64* @HZ, align 8
  %9 = mul nsw i64 %7, %8
  store i64 %9, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @schedule_timeout_interruptible(i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = call i32 @mutex_lock(i32* @ecryptfs_msg_ctx_lists_mux)
  %14 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ECRYPTFS_MSG_CTX_STATE_DONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %10
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = call i32 @mutex_unlock(i32* @ecryptfs_msg_ctx_lists_mux)
  br label %10

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMSG, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %40

33:                                               ; preds = %10
  %34 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %34, i32 0, i32 2
  %36 = load %struct.ecryptfs_message*, %struct.ecryptfs_message** %35, align 8
  %37 = load %struct.ecryptfs_message**, %struct.ecryptfs_message*** %4, align 8
  store %struct.ecryptfs_message* %36, %struct.ecryptfs_message** %37, align 8
  %38 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %38, i32 0, i32 2
  store %struct.ecryptfs_message* null, %struct.ecryptfs_message** %39, align 8
  br label %40

40:                                               ; preds = %33, %30
  %41 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %3, align 8
  %42 = call i32 @ecryptfs_msg_ctx_alloc_to_free(%struct.ecryptfs_msg_ctx* %41)
  %43 = load %struct.ecryptfs_msg_ctx*, %struct.ecryptfs_msg_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.ecryptfs_msg_ctx, %struct.ecryptfs_msg_ctx* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = call i32 @mutex_unlock(i32* @ecryptfs_msg_ctx_lists_mux)
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i64 @schedule_timeout_interruptible(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ecryptfs_msg_ctx_alloc_to_free(%struct.ecryptfs_msg_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
