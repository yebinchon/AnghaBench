; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_dev_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_dev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call i32 @iminor(%struct.inode* %7)
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = call i32 (...) @lock_kernel()
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = call i32 @dsp_release(%struct.file* %14)
  store i32 %15, i32* %6, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 1), align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %20
  br label %25

25:                                               ; preds = %24, %13
  %26 = call i32 (...) @unlock_kernel()
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @dsp_release(%struct.file*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
