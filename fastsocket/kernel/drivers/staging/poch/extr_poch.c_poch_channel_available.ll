; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/poch/extr_poch.c_poch_channel_available.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/poch/extr_poch.c_poch_channel_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel_info*)* @poch_channel_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poch_channel_available(%struct.channel_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.channel_info*, align 8
  %4 = alloca i32, align 4
  store %struct.channel_info* %0, %struct.channel_info** %3, align 8
  %5 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %6 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %5, i32 0, i32 1
  %7 = call i32 @spin_lock_irq(i32* %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %11 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %16 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %27 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock_irq(i32* %27)
  store i32 1, i32* %2, align 4
  br label %37

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %8

33:                                               ; preds = %8
  %34 = load %struct.channel_info*, %struct.channel_info** %3, align 8
  %35 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock_irq(i32* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
