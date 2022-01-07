; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdq_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.slic_hostcmd* }
%struct.slic_hostcmd = type { %struct.slic_hostcmd*, %struct.sk_buff*, i64 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @slic_cmdq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_cmdq_free(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.slic_hostcmd*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %7, align 8
  store %struct.slic_hostcmd* %8, %struct.slic_hostcmd** %3, align 8
  br label %9

9:                                                ; preds = %29, %1
  %10 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %11 = icmp ne %struct.slic_hostcmd* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %14 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %19 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %18, i32 0, i32 1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %25 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %24, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %25, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %26)
  br label %28

28:                                               ; preds = %23, %17
  br label %29

29:                                               ; preds = %28, %12
  %30 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %31 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %30, i32 0, i32 0
  %32 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %31, align 8
  store %struct.slic_hostcmd* %32, %struct.slic_hostcmd** %3, align 8
  br label %9

33:                                               ; preds = %9
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 2
  %36 = call i32 @memset(%struct.TYPE_2__* %35, i32 0, i32 4)
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 1
  %39 = call i32 @memset(%struct.TYPE_2__* %38, i32 0, i32 4)
  %40 = load %struct.adapter*, %struct.adapter** %2, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = call i32 @memset(%struct.TYPE_2__* %41, i32 0, i32 4)
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = call i32 @slic_cmdqmem_free(%struct.adapter* %43)
  ret void
}

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @slic_cmdqmem_free(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
