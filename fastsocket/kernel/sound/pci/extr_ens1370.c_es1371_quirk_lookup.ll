; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ens1370.c_es1371_quirk_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ens1370.c_es1371_quirk_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ensoniq = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16, i64 }
%struct.es1371_quirk = type { i16, i64, i64 }

@PCI_ANY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ensoniq*, %struct.es1371_quirk*)* @es1371_quirk_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es1371_quirk_lookup(%struct.ensoniq* %0, %struct.es1371_quirk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ensoniq*, align 8
  %5 = alloca %struct.es1371_quirk*, align 8
  store %struct.ensoniq* %0, %struct.ensoniq** %4, align 8
  store %struct.es1371_quirk* %1, %struct.es1371_quirk** %5, align 8
  br label %6

6:                                                ; preds = %46, %2
  %7 = load %struct.es1371_quirk*, %struct.es1371_quirk** %5, align 8
  %8 = getelementptr inbounds %struct.es1371_quirk, %struct.es1371_quirk* %7, i32 0, i32 0
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  %11 = load i64, i64* @PCI_ANY_ID, align 8
  %12 = trunc i64 %11 to i16
  %13 = zext i16 %12 to i32
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %6
  %16 = load %struct.ensoniq*, %struct.ensoniq** %4, align 8
  %17 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 8
  %21 = zext i16 %20 to i32
  %22 = load %struct.es1371_quirk*, %struct.es1371_quirk** %5, align 8
  %23 = getelementptr inbounds %struct.es1371_quirk, %struct.es1371_quirk* %22, i32 0, i32 0
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %15
  %28 = load %struct.ensoniq*, %struct.ensoniq** %4, align 8
  %29 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.es1371_quirk*, %struct.es1371_quirk** %5, align 8
  %34 = getelementptr inbounds %struct.es1371_quirk, %struct.es1371_quirk* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %27
  %38 = load %struct.ensoniq*, %struct.ensoniq** %4, align 8
  %39 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.es1371_quirk*, %struct.es1371_quirk** %5, align 8
  %42 = getelementptr inbounds %struct.es1371_quirk, %struct.es1371_quirk* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %50

46:                                               ; preds = %37, %27, %15
  %47 = load %struct.es1371_quirk*, %struct.es1371_quirk** %5, align 8
  %48 = getelementptr inbounds %struct.es1371_quirk, %struct.es1371_quirk* %47, i32 1
  store %struct.es1371_quirk* %48, %struct.es1371_quirk** %5, align 8
  br label %6

49:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
