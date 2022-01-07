; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_cn_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_cn_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cn_msg = type { i32 }
%struct.netlink_skb_parms = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cn_msg*, %struct.netlink_skb_parms*)* @pohmelfs_cn_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pohmelfs_cn_callback(%struct.cn_msg* %0, %struct.netlink_skb_parms* %1) #0 {
  %3 = alloca %struct.cn_msg*, align 8
  %4 = alloca %struct.netlink_skb_parms*, align 8
  %5 = alloca i32, align 4
  store %struct.cn_msg* %0, %struct.cn_msg** %3, align 8
  store %struct.netlink_skb_parms* %1, %struct.netlink_skb_parms** %4, align 8
  %6 = load %struct.netlink_skb_parms*, %struct.netlink_skb_parms** %4, align 8
  %7 = getelementptr inbounds %struct.netlink_skb_parms, %struct.netlink_skb_parms* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %10 = call i32 @cap_raised(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %15 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %35 [
    i32 134, label %17
    i32 132, label %17
    i32 129, label %17
    i32 130, label %23
    i32 128, label %26
    i32 131, label %29
    i32 133, label %32
  ]

17:                                               ; preds = %13, %13, %13
  %18 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %19 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %20 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pohmelfs_cn_ctl(%struct.cn_msg* %18, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %38

23:                                               ; preds = %13
  %24 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %25 = call i32 @pohmelfs_cn_flush(%struct.cn_msg* %24)
  store i32 %25, i32* %5, align 4
  br label %38

26:                                               ; preds = %13
  %27 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %28 = call i32 @pohmelfs_cn_disp(%struct.cn_msg* %27)
  store i32 %28, i32* %5, align 4
  br label %38

29:                                               ; preds = %13
  %30 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %31 = call i32 @pohmelfs_cn_dump(%struct.cn_msg* %30)
  store i32 %31, i32* %5, align 4
  br label %38

32:                                               ; preds = %13
  %33 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %34 = call i32 @pohmelfs_cn_crypto(%struct.cn_msg* %33)
  store i32 %34, i32* %5, align 4
  br label %38

35:                                               ; preds = %13
  %36 = load i32, i32* @ENOSYS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %12, %35, %32, %29, %26, %23, %17
  ret void
}

declare dso_local i32 @cap_raised(i32, i32) #1

declare dso_local i32 @pohmelfs_cn_ctl(%struct.cn_msg*, i32) #1

declare dso_local i32 @pohmelfs_cn_flush(%struct.cn_msg*) #1

declare dso_local i32 @pohmelfs_cn_disp(%struct.cn_msg*) #1

declare dso_local i32 @pohmelfs_cn_dump(%struct.cn_msg*) #1

declare dso_local i32 @pohmelfs_cn_crypto(%struct.cn_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
