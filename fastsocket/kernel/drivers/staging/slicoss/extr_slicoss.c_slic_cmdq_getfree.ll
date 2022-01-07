; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdq_getfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdq_getfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_hostcmd = type { %struct.slic_hostcmd* }
%struct.adapter = type { %struct.slic_cmdqueue }
%struct.slic_cmdqueue = type { %struct.TYPE_2__, %struct.slic_hostcmd*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slic_hostcmd* (%struct.adapter*)* @slic_cmdq_getfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slic_hostcmd* @slic_cmdq_getfree(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.slic_cmdqueue*, align 8
  %4 = alloca %struct.slic_hostcmd*, align 8
  %5 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.slic_cmdqueue* %7, %struct.slic_cmdqueue** %3, align 8
  store %struct.slic_hostcmd* null, %struct.slic_hostcmd** %4, align 8
  br label %8

8:                                                ; preds = %63, %1
  %9 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %10 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %13 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %11, i32 %15)
  br label %17

17:                                               ; preds = %49, %8
  %18 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %19 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %18, i32 0, i32 1
  %20 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %19, align 8
  store %struct.slic_hostcmd* %20, %struct.slic_hostcmd** %4, align 8
  %21 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %4, align 8
  %22 = icmp ne %struct.slic_hostcmd* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %4, align 8
  %25 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %24, i32 0, i32 0
  %26 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %25, align 8
  %27 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %28 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %27, i32 0, i32 1
  store %struct.slic_hostcmd* %26, %struct.slic_hostcmd** %28, align 8
  %29 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %30 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %34 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %37 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %35, i32 %39)
  br label %69

41:                                               ; preds = %17
  %42 = load %struct.adapter*, %struct.adapter** %2, align 8
  %43 = call i32 @slic_cmdq_getdone(%struct.adapter* %42)
  %44 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %45 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %44, i32 0, i32 1
  %46 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %45, align 8
  store %struct.slic_hostcmd* %46, %struct.slic_hostcmd** %4, align 8
  %47 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %4, align 8
  %48 = icmp ne %struct.slic_hostcmd* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %17

50:                                               ; preds = %41
  %51 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %52 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.slic_cmdqueue*, %struct.slic_cmdqueue** %3, align 8
  %55 = getelementptr inbounds %struct.slic_cmdqueue, %struct.slic_cmdqueue* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %53, i32 %57)
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = call i32* @slic_cmdqmem_addpage(%struct.adapter* %59)
  store i32* %60, i32** %5, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = load %struct.adapter*, %struct.adapter** %2, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @slic_cmdq_addcmdpage(%struct.adapter* %64, i32* %65)
  br label %8

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %23
  %70 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %4, align 8
  ret %struct.slic_hostcmd* %70
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @slic_cmdq_getdone(%struct.adapter*) #1

declare dso_local i32* @slic_cmdqmem_addpage(%struct.adapter*) #1

declare dso_local i32 @slic_cmdq_addcmdpage(%struct.adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
