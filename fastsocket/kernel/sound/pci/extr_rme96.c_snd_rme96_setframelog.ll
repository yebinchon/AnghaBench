; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_setframelog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_setframelog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i32, i32, i32 }

@RME96_WCR_MODE24 = common dso_local global i32 0, align 4
@RME96_WCR_MODE24_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rme96*, i32, i32)* @snd_rme96_setframelog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme96_setframelog(%struct.rme96* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rme96*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rme96* %0, %struct.rme96** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %12

11:                                               ; preds = %3
  store i32 3, i32* %7, align 4
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.rme96*, %struct.rme96** %4, align 8
  %17 = getelementptr inbounds %struct.rme96, %struct.rme96* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RME96_WCR_MODE24, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 2, i32 1
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.rme96*, %struct.rme96** %4, align 8
  %28 = getelementptr inbounds %struct.rme96, %struct.rme96* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %43

29:                                               ; preds = %12
  %30 = load %struct.rme96*, %struct.rme96** %4, align 8
  %31 = getelementptr inbounds %struct.rme96, %struct.rme96* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RME96_WCR_MODE24_2, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 2, i32 1
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.rme96*, %struct.rme96** %4, align 8
  %42 = getelementptr inbounds %struct.rme96, %struct.rme96* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %29, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
