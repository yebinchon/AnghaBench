; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_sys_crypto_exit_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_sys_crypto_exit_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_crypto_thread = type { i32, i32, i64, %struct.pohmelfs_sb* }
%struct.pohmelfs_sb = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pohmelfs_crypto_thread*)* @pohmelfs_sys_crypto_exit_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pohmelfs_sys_crypto_exit_one(%struct.pohmelfs_crypto_thread* %0) #0 {
  %2 = alloca %struct.pohmelfs_crypto_thread*, align 8
  %3 = alloca %struct.pohmelfs_sb*, align 8
  store %struct.pohmelfs_crypto_thread* %0, %struct.pohmelfs_crypto_thread** %2, align 8
  %4 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %5 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %4, i32 0, i32 3
  %6 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  store %struct.pohmelfs_sb* %6, %struct.pohmelfs_sb** %3, align 8
  %7 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %8 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %13 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @kthread_stop(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %18 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %21 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %20, i32 0, i32 1
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %24 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %28 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %31 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %30, i32 0, i32 0
  %32 = call i32 @pohmelfs_crypto_engine_exit(i32* %31)
  %33 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %34 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %33, i32 0, i32 0
  %35 = call i32 @pohmelfs_crypto_pages_free(i32* %34)
  %36 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %37 = call i32 @kfree(%struct.pohmelfs_crypto_thread* %36)
  ret void
}

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pohmelfs_crypto_engine_exit(i32*) #1

declare dso_local i32 @pohmelfs_crypto_pages_free(i32*) #1

declare dso_local i32 @kfree(%struct.pohmelfs_crypto_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
