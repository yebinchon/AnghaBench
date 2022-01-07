; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_src_flushbuffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_src_flushbuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VORTEX_SRC_DATA0 = common dso_local global i64 0, align 8
@VORTEX_SRC_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8)* @vortex_src_flushbuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_src_flushbuffers(%struct.TYPE_3__* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8 %1, i8* %4, align 1
  store i32 31, i32* %5, align 4
  br label %6

6:                                                ; preds = %24, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* @VORTEX_SRC_DATA0, align 8
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = shl i32 %15, 7
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %13, %17
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i32 @hwwrite(i32 %12, i64 %22, i32 0)
  br label %24

24:                                               ; preds = %9
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %5, align 4
  br label %6

27:                                               ; preds = %6
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @VORTEX_SRC_DATA, align 8
  %32 = load i8, i8* %4, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 3
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %31, %35
  %37 = call i32 @hwwrite(i32 %30, i64 %36, i32 0)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @VORTEX_SRC_DATA, align 8
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %41, %45
  %47 = add nsw i64 %46, 4
  %48 = call i32 @hwwrite(i32 %40, i64 %47, i32 0)
  ret void
}

declare dso_local i32 @hwwrite(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
