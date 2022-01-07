; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_a3d.c_a3dsrc_SetItdTarget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_a3d.c_a3dsrc_SetItdTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@A3D_B_ITDTarget = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i16, i16)* @a3dsrc_SetItdTarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a3dsrc_SetItdTarget(%struct.TYPE_5__* %0, i16 signext %1, i16 signext %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %7, align 8
  %12 = load i16, i16* %5, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i16 0, i16* %5, align 2
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i16, i16* %5, align 2
  %18 = sext i16 %17 to i32
  %19 = icmp sgt i32 %18, 22527
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i16 22527, i16* %5, align 2
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i16, i16* %6, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i16 0, i16* %6, align 2
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i16, i16* %6, align 2
  %28 = sext i16 %27 to i32
  %29 = icmp sgt i32 %28, 22527
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i16 22527, i16* %6, align 2
  br label %31

31:                                               ; preds = %30, %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @A3D_B_ITDTarget, align 4
  %42 = call i32 @a3d_addrB(i32 %37, i32 %40, i32 %41)
  %43 = load i16, i16* %6, align 2
  %44 = sext i16 %43 to i32
  %45 = shl i32 %44, 16
  %46 = load i16, i16* %5, align 2
  %47 = sext i16 %46 to i32
  %48 = or i32 %45, %47
  %49 = trunc i32 %48 to i16
  %50 = call i32 @hwwrite(i32 %34, i32 %42, i16 signext %49)
  ret void
}

declare dso_local i32 @hwwrite(i32, i32, i16 signext) #1

declare dso_local i32 @a3d_addrB(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
