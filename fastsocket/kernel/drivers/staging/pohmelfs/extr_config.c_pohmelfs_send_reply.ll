; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_send_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cn_msg = type { i64 }
%struct.pohmelfs_ctl = type { i64 }
%struct.pohmelfs_cn_ack = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POHMELFS_CTLINFO_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.cn_msg*, %struct.pohmelfs_ctl*)* @pohmelfs_send_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_send_reply(i32 %0, i32 %1, i32 %2, %struct.cn_msg* %3, %struct.pohmelfs_ctl* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cn_msg*, align 8
  %11 = alloca %struct.pohmelfs_ctl*, align 8
  %12 = alloca %struct.pohmelfs_cn_ack*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.cn_msg* %3, %struct.cn_msg** %10, align 8
  store %struct.pohmelfs_ctl* %4, %struct.pohmelfs_ctl** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.pohmelfs_cn_ack* @kmalloc(i32 40, i32 %13)
  store %struct.pohmelfs_cn_ack* %14, %struct.pohmelfs_cn_ack** %12, align 8
  %15 = load %struct.pohmelfs_cn_ack*, %struct.pohmelfs_cn_ack** %12, align 8
  %16 = icmp ne %struct.pohmelfs_cn_ack* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %59

20:                                               ; preds = %5
  %21 = load %struct.pohmelfs_cn_ack*, %struct.pohmelfs_cn_ack** %12, align 8
  %22 = call i32 @memset(%struct.pohmelfs_cn_ack* %21, i32 0, i32 40)
  %23 = load %struct.pohmelfs_cn_ack*, %struct.pohmelfs_cn_ack** %12, align 8
  %24 = getelementptr inbounds %struct.pohmelfs_cn_ack, %struct.pohmelfs_cn_ack* %23, i32 0, i32 2
  %25 = load %struct.cn_msg*, %struct.cn_msg** %10, align 8
  %26 = bitcast %struct.cn_msg* %25 to %struct.pohmelfs_ctl*
  %27 = call i32 @memcpy(%struct.TYPE_3__* %24, %struct.pohmelfs_ctl* %26, i32 8)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @POHMELFS_CTLINFO_ACK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.pohmelfs_cn_ack*, %struct.pohmelfs_cn_ack** %12, align 8
  %33 = getelementptr inbounds %struct.pohmelfs_cn_ack, %struct.pohmelfs_cn_ack* %32, i32 0, i32 3
  %34 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %11, align 8
  %35 = call i32 @memcpy(%struct.TYPE_3__* %33, %struct.pohmelfs_ctl* %34, i32 8)
  br label %36

36:                                               ; preds = %31, %20
  %37 = load %struct.pohmelfs_cn_ack*, %struct.pohmelfs_cn_ack** %12, align 8
  %38 = getelementptr inbounds %struct.pohmelfs_cn_ack, %struct.pohmelfs_cn_ack* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 32, i32* %39, align 8
  %40 = load %struct.cn_msg*, %struct.cn_msg** %10, align 8
  %41 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = load %struct.pohmelfs_cn_ack*, %struct.pohmelfs_cn_ack** %12, align 8
  %45 = getelementptr inbounds %struct.pohmelfs_cn_ack, %struct.pohmelfs_cn_ack* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i64 %43, i64* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.pohmelfs_cn_ack*, %struct.pohmelfs_cn_ack** %12, align 8
  %49 = getelementptr inbounds %struct.pohmelfs_cn_ack, %struct.pohmelfs_cn_ack* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.pohmelfs_cn_ack*, %struct.pohmelfs_cn_ack** %12, align 8
  %52 = getelementptr inbounds %struct.pohmelfs_cn_ack, %struct.pohmelfs_cn_ack* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.pohmelfs_cn_ack*, %struct.pohmelfs_cn_ack** %12, align 8
  %54 = getelementptr inbounds %struct.pohmelfs_cn_ack, %struct.pohmelfs_cn_ack* %53, i32 0, i32 2
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @cn_netlink_send(%struct.TYPE_3__* %54, i32 0, i32 %55)
  %57 = load %struct.pohmelfs_cn_ack*, %struct.pohmelfs_cn_ack** %12, align 8
  %58 = call i32 @kfree(%struct.pohmelfs_cn_ack* %57)
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %36, %17
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.pohmelfs_cn_ack* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.pohmelfs_cn_ack*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.pohmelfs_ctl*, i32) #1

declare dso_local i32 @cn_netlink_send(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.pohmelfs_cn_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
