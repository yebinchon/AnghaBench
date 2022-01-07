; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_thread_make_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_thread_make_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_crypto_thread = type { i32, i32*, i32*, %struct.pohmelfs_sb* }
%struct.pohmelfs_sb = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pohmelfs_crypto_thread_make_ready(%struct.pohmelfs_crypto_thread* %0) #0 {
  %2 = alloca %struct.pohmelfs_crypto_thread*, align 8
  %3 = alloca %struct.pohmelfs_sb*, align 8
  store %struct.pohmelfs_crypto_thread* %0, %struct.pohmelfs_crypto_thread** %2, align 8
  %4 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %5 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %4, i32 0, i32 3
  %6 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  store %struct.pohmelfs_sb* %6, %struct.pohmelfs_sb** %3, align 8
  %7 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %8 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %7, i32 0, i32 2
  store i32* null, i32** %8, align 8
  %9 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %10 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %12 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %15 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %14, i32 0, i32 0
  %16 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %17 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %16, i32 0, i32 2
  %18 = call i32 @list_move_tail(i32* %15, i32* %17)
  %19 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %20 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %3, align 8
  %23 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %22, i32 0, i32 0
  %24 = call i32 @wake_up(i32* %23)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
