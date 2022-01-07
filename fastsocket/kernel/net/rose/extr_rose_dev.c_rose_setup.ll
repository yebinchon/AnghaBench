; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_dev.c_rose_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_dev.c_rose_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i64, i32*, i32*, i64 }

@ROSE_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@rose_netdev_ops = common dso_local global i32 0, align 4
@rose_header_ops = common dso_local global i32 0, align 4
@AX25_BPQ_HEADER_LEN = common dso_local global i64 0, align 8
@AX25_MAX_HEADER_LEN = common dso_local global i64 0, align 8
@ROSE_MIN_LEN = common dso_local global i64 0, align 8
@ROSE_ADDR_LEN = common dso_local global i32 0, align 4
@ARPHRD_ROSE = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rose_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load i64, i64* @ROSE_MAX_PACKET_SIZE, align 8
  %4 = sub nsw i64 %3, 2
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 6
  store i64 %4, i64* %6, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 5
  store i32* @rose_netdev_ops, i32** %8, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 4
  store i32* @rose_header_ops, i32** %10, align 8
  %11 = load i64, i64* @AX25_BPQ_HEADER_LEN, align 8
  %12 = load i64, i64* @AX25_MAX_HEADER_LEN, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i64, i64* @ROSE_MIN_LEN, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 3
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* @ROSE_ADDR_LEN, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @ARPHRD_ROSE, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @IFF_NOARP, align 4
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
