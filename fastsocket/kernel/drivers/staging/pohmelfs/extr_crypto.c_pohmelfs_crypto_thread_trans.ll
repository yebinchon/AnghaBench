; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_thread_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypto_thread_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_crypto_thread = type { i32, %struct.netfs_trans*, i32*, %struct.TYPE_2__ }
%struct.netfs_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pohmelfs_crypto_thread*)* @pohmelfs_crypto_thread_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_crypto_thread_trans(%struct.pohmelfs_crypto_thread* %0) #0 {
  %2 = alloca %struct.pohmelfs_crypto_thread*, align 8
  %3 = alloca %struct.netfs_trans*, align 8
  %4 = alloca i32, align 4
  store %struct.pohmelfs_crypto_thread* %0, %struct.pohmelfs_crypto_thread** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %6 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %5, i32 0, i32 1
  %7 = load %struct.netfs_trans*, %struct.netfs_trans** %6, align 8
  store %struct.netfs_trans* %7, %struct.netfs_trans** %3, align 8
  %8 = load %struct.netfs_trans*, %struct.netfs_trans** %3, align 8
  %9 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %8, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %9, align 8
  %10 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %11 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %17 = call i32 @pohmelfs_hash(%struct.pohmelfs_crypto_thread* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %40

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %24 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %30 = call i32 @pohmelfs_encrypt(%struct.pohmelfs_crypto_thread* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %40

34:                                               ; preds = %28
  %35 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %36 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %35, i32 0, i32 3
  %37 = load %struct.netfs_trans*, %struct.netfs_trans** %3, align 8
  %38 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %37, i32 0, i32 0
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %38, align 8
  br label %39

39:                                               ; preds = %34, %22
  br label %40

40:                                               ; preds = %39, %33, %20
  %41 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %42 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %44 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %43, i32 0, i32 1
  store %struct.netfs_trans* null, %struct.netfs_trans** %44, align 8
  %45 = load %struct.netfs_trans*, %struct.netfs_trans** %3, align 8
  %46 = getelementptr inbounds %struct.netfs_trans, %struct.netfs_trans* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %51 = call i32 @pohmelfs_crypto_thread_make_ready(%struct.pohmelfs_crypto_thread* %50)
  br label %52

52:                                               ; preds = %49, %40
  %53 = load %struct.netfs_trans*, %struct.netfs_trans** %3, align 8
  %54 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %55 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @pohmelfs_crypto_finish(%struct.netfs_trans* %53, i32 %56, i32 %57)
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @pohmelfs_hash(%struct.pohmelfs_crypto_thread*) #1

declare dso_local i32 @pohmelfs_encrypt(%struct.pohmelfs_crypto_thread*) #1

declare dso_local i32 @pohmelfs_crypto_thread_make_ready(%struct.pohmelfs_crypto_thread*) #1

declare dso_local i32 @pohmelfs_crypto_finish(%struct.netfs_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
