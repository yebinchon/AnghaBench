; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctamixer.c_put_amixer_rsc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctamixer.c_put_amixer_rsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amixer_mgr = type { i32, i32 }
%struct.amixer = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amixer_mgr*, %struct.amixer*)* @put_amixer_rsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_amixer_rsc(%struct.amixer_mgr* %0, %struct.amixer* %1) #0 {
  %3 = alloca %struct.amixer_mgr*, align 8
  %4 = alloca %struct.amixer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.amixer_mgr* %0, %struct.amixer_mgr** %3, align 8
  store %struct.amixer* %1, %struct.amixer** %4, align 8
  %7 = load %struct.amixer_mgr*, %struct.amixer_mgr** %3, align 8
  %8 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %29, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.amixer*, %struct.amixer** %4, align 8
  %14 = getelementptr inbounds %struct.amixer, %struct.amixer* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load %struct.amixer_mgr*, %struct.amixer_mgr** %3, align 8
  %20 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %19, i32 0, i32 1
  %21 = load %struct.amixer*, %struct.amixer** %4, align 8
  %22 = getelementptr inbounds %struct.amixer, %struct.amixer* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mgr_put_resource(i32* %20, i32 1, i32 %27)
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.amixer_mgr*, %struct.amixer_mgr** %3, align 8
  %34 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.amixer*, %struct.amixer** %4, align 8
  %38 = call i32 @amixer_rsc_uninit(%struct.amixer* %37)
  %39 = load %struct.amixer*, %struct.amixer** %4, align 8
  %40 = call i32 @kfree(%struct.amixer* %39)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mgr_put_resource(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @amixer_rsc_uninit(%struct.amixer*) #1

declare dso_local i32 @kfree(%struct.amixer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
