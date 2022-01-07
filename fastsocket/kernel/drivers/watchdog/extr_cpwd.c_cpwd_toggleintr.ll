; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_cpwd.c_cpwd_toggleintr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_cpwd.c_cpwd_toggleintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpwd = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8 }

@PLD_IMASK = common dso_local global i64 0, align 8
@WD0_INTR_MASK = common dso_local global i8 0, align 1
@WD1_INTR_MASK = common dso_local global i8 0, align 1
@WD2_INTR_MASK = common dso_local global i8 0, align 1
@WD_INTR_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpwd*, i32, i32)* @cpwd_toggleintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpwd_toggleintr(%struct.cpwd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpwd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.cpwd* %0, %struct.cpwd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cpwd*, %struct.cpwd** %4, align 8
  %10 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PLD_IMASK, align 8
  %13 = add nsw i64 %11, %12
  %14 = call zeroext i8 @cpwd_readb(i64 %13)
  store i8 %14, i8* %7, align 1
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i8, i8* @WD0_INTR_MASK, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @WD1_INTR_MASK, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %19, %21
  %23 = load i8, i8* @WD2_INTR_MASK, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  br label %36

26:                                               ; preds = %3
  %27 = load %struct.cpwd*, %struct.cpwd** %4, align 8
  %28 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %26, %17
  %37 = phi i32 [ %25, %17 ], [ %35, %26 ]
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %8, align 1
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @WD_INTR_ON, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = xor i32 %44, -1
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %7, align 1
  br label %57

50:                                               ; preds = %36
  %51 = load i8, i8* %8, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, %52
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %7, align 1
  br label %57

57:                                               ; preds = %50, %42
  %58 = load i8, i8* %7, align 1
  %59 = load %struct.cpwd*, %struct.cpwd** %4, align 8
  %60 = getelementptr inbounds %struct.cpwd, %struct.cpwd* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PLD_IMASK, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @cpwd_writeb(i8 zeroext %58, i64 %63)
  ret void
}

declare dso_local zeroext i8 @cpwd_readb(i64) #1

declare dso_local i32 @cpwd_writeb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
