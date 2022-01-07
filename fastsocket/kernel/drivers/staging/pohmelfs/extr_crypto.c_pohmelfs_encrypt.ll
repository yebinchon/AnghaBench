; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_crypto.c_pohmelfs_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_crypto_thread = type { %struct.pohmelfs_crypto_engine, %struct.netfs_trans* }
%struct.pohmelfs_crypto_engine = type { i32, i32, %struct.ablkcipher_request* }
%struct.ablkcipher_request = type { i32 }
%struct.netfs_trans = type { i32 }

@pohmelfs_encrypt_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pohmelfs_crypto_thread*)* @pohmelfs_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_encrypt(%struct.pohmelfs_crypto_thread* %0) #0 {
  %2 = alloca %struct.pohmelfs_crypto_thread*, align 8
  %3 = alloca %struct.netfs_trans*, align 8
  %4 = alloca %struct.pohmelfs_crypto_engine*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  store %struct.pohmelfs_crypto_thread* %0, %struct.pohmelfs_crypto_thread** %2, align 8
  %6 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %7 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %6, i32 0, i32 1
  %8 = load %struct.netfs_trans*, %struct.netfs_trans** %7, align 8
  store %struct.netfs_trans* %8, %struct.netfs_trans** %3, align 8
  %9 = load %struct.pohmelfs_crypto_thread*, %struct.pohmelfs_crypto_thread** %2, align 8
  %10 = getelementptr inbounds %struct.pohmelfs_crypto_thread, %struct.pohmelfs_crypto_thread* %9, i32 0, i32 0
  store %struct.pohmelfs_crypto_engine* %10, %struct.pohmelfs_crypto_engine** %4, align 8
  %11 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %12 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %11, i32 0, i32 2
  %13 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %12, align 8
  store %struct.ablkcipher_request* %13, %struct.ablkcipher_request** %5, align 8
  %14 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %15 = call i32 @memset(%struct.ablkcipher_request* %14, i32 0, i32 4)
  %16 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %17 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %18 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %16, i32 %19)
  %21 = load %struct.netfs_trans*, %struct.netfs_trans** %3, align 8
  %22 = call i32 @pohmelfs_gen_iv(%struct.netfs_trans* %21)
  %23 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %24 = getelementptr inbounds %struct.pohmelfs_crypto_engine, %struct.pohmelfs_crypto_engine* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.netfs_trans*, %struct.netfs_trans** %3, align 8
  %26 = load %struct.pohmelfs_crypto_engine*, %struct.pohmelfs_crypto_engine** %4, align 8
  %27 = load i32, i32* @pohmelfs_encrypt_iterator, align 4
  %28 = call i32 @pohmelfs_trans_iter(%struct.netfs_trans* %25, %struct.pohmelfs_crypto_engine* %26, i32 %27)
  ret i32 %28
}

declare dso_local i32 @memset(%struct.ablkcipher_request*, i32, i32) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @pohmelfs_gen_iv(%struct.netfs_trans*) #1

declare dso_local i32 @pohmelfs_trans_iter(%struct.netfs_trans*, %struct.pohmelfs_crypto_engine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
