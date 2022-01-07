; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypt_input_page_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_crypt_input_page_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_crypto_thread = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pohmelfs_crypto_input_action_data = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pohmelfs_crypto_thread*, i8*)* @pohmelfs_crypt_input_page_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_crypt_input_page_action(%struct.pohmelfs_crypto_thread* %0, i8* %1) #0 {
  %3 = alloca %struct.pohmelfs_crypto_thread*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pohmelfs_crypto_input_action_data*, align 8
  store %struct.pohmelfs_crypto_thread* %0, %struct.pohmelfs_crypto_thread** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.pohmelfs_crypto_input_action_data*
  store %struct.pohmelfs_crypto_input_action_data* %7, %struct.pohmelfs_crypto_input_action_data** %5, align 8
  %8 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %3, align 8
  %9 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pohmelfs_crypto_input_action_data*, %struct.pohmelfs_crypto_input_action_data** %5, align 8
  %13 = getelementptr inbounds %struct.pohmelfs_crypto_input_action_data, %struct.pohmelfs_crypto_input_action_data* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %3, align 8
  %18 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(i32 %11, i32 %16, i32 %21)
  %23 = load %struct.pohmelfs_crypto_input_action_data*, %struct.pohmelfs_crypto_input_action_data** %5, align 8
  %24 = getelementptr inbounds %struct.pohmelfs_crypto_input_action_data, %struct.pohmelfs_crypto_input_action_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %3, align 8
  %27 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.pohmelfs_crypto_input_action_data*, %struct.pohmelfs_crypto_input_action_data** %5, align 8
  %29 = getelementptr inbounds %struct.pohmelfs_crypto_input_action_data, %struct.pohmelfs_crypto_input_action_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %3, align 8
  %32 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.pohmelfs_crypto_input_action_data*, %struct.pohmelfs_crypto_input_action_data** %5, align 8
  %35 = getelementptr inbounds %struct.pohmelfs_crypto_input_action_data, %struct.pohmelfs_crypto_input_action_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %3, align 8
  %38 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
