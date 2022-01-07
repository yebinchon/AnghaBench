; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_vhost_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.vhost_net* }
%struct.vhost_net = type { i32, i64, %struct.TYPE_2__*, %struct.vhost_dev }
%struct.TYPE_2__ = type { i32 }
%struct.vhost_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@handle_tx_kick = common dso_local global i32 0, align 4
@VHOST_NET_VQ_TX = common dso_local global i64 0, align 8
@handle_rx_kick = common dso_local global i32 0, align 4
@VHOST_NET_VQ_RX = common dso_local global i64 0, align 8
@VHOST_NET_VQ_MAX = common dso_local global i32 0, align 4
@handle_tx_net = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@handle_rx_net = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@VHOST_NET_POLL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vhost_net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_net_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.vhost_net*, align 8
  %7 = alloca %struct.vhost_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vhost_net* @kmalloc(i32 32, i32 %9)
  store %struct.vhost_net* %10, %struct.vhost_net** %6, align 8
  %11 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %12 = icmp ne %struct.vhost_net* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %18 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %17, i32 0, i32 3
  store %struct.vhost_dev* %18, %struct.vhost_dev** %7, align 8
  %19 = load i32, i32* @handle_tx_kick, align 4
  %20 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %21 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %19, i32* %25, align 4
  %26 = load i32, i32* @handle_rx_kick, align 4
  %27 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %28 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* @VHOST_NET_VQ_RX, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %26, i32* %32, align 4
  %33 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %34 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %35 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* @VHOST_NET_VQ_MAX, align 4
  %38 = call i32 @vhost_dev_init(%struct.vhost_dev* %33, %struct.TYPE_2__* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %16
  %42 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %43 = call i32 @kfree(%struct.vhost_net* %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %70

45:                                               ; preds = %16
  %46 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %47 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %50 = add i64 %48, %49
  %51 = load i32, i32* @handle_tx_net, align 4
  %52 = load i32, i32* @POLLOUT, align 4
  %53 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %54 = call i32 @vhost_poll_init(i64 %50, i32 %51, i32 %52, %struct.vhost_dev* %53)
  %55 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %56 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VHOST_NET_VQ_RX, align 8
  %59 = add i64 %57, %58
  %60 = load i32, i32* @handle_rx_net, align 4
  %61 = load i32, i32* @POLLIN, align 4
  %62 = load %struct.vhost_dev*, %struct.vhost_dev** %7, align 8
  %63 = call i32 @vhost_poll_init(i64 %59, i32 %60, i32 %61, %struct.vhost_dev* %62)
  %64 = load i32, i32* @VHOST_NET_POLL_DISABLED, align 4
  %65 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %66 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.vhost_net*, %struct.vhost_net** %6, align 8
  %68 = load %struct.file*, %struct.file** %5, align 8
  %69 = getelementptr inbounds %struct.file, %struct.file* %68, i32 0, i32 0
  store %struct.vhost_net* %67, %struct.vhost_net** %69, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %45, %41, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.vhost_net* @kmalloc(i32, i32) #1

declare dso_local i32 @vhost_dev_init(%struct.vhost_dev*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @kfree(%struct.vhost_net*) #1

declare dso_local i32 @vhost_poll_init(i64, i32, i32, %struct.vhost_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
