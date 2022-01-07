; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_netfs.h_netfs_convert_crypto_capabilities.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_netfs.h_netfs_convert_crypto_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfs_crypto_capabilities = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfs_crypto_capabilities*)* @netfs_convert_crypto_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netfs_convert_crypto_capabilities(%struct.netfs_crypto_capabilities* %0) #0 {
  %2 = alloca %struct.netfs_crypto_capabilities*, align 8
  store %struct.netfs_crypto_capabilities* %0, %struct.netfs_crypto_capabilities** %2, align 8
  %3 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %2, align 8
  %4 = getelementptr inbounds %struct.netfs_crypto_capabilities, %struct.netfs_crypto_capabilities* %3, i32 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = call i8* @__cpu_to_be16(i8* %5)
  %7 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %2, align 8
  %8 = getelementptr inbounds %struct.netfs_crypto_capabilities, %struct.netfs_crypto_capabilities* %7, i32 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %2, align 8
  %10 = getelementptr inbounds %struct.netfs_crypto_capabilities, %struct.netfs_crypto_capabilities* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @__cpu_to_be16(i8* %11)
  %13 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %2, align 8
  %14 = getelementptr inbounds %struct.netfs_crypto_capabilities, %struct.netfs_crypto_capabilities* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %2, align 8
  %16 = getelementptr inbounds %struct.netfs_crypto_capabilities, %struct.netfs_crypto_capabilities* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @__cpu_to_be32(i32 %17)
  %19 = load %struct.netfs_crypto_capabilities*, %struct.netfs_crypto_capabilities** %2, align 8
  %20 = getelementptr inbounds %struct.netfs_crypto_capabilities, %struct.netfs_crypto_capabilities* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  ret void
}

declare dso_local i8* @__cpu_to_be16(i8*) #1

declare dso_local i32 @__cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
