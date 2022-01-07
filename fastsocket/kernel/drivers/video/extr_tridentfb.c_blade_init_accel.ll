; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_blade_init_accel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_blade_init_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*, i32, i32)* @blade_init_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blade_init_accel(%struct.tridentfb_par* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tridentfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 3
  %12 = shl i32 %11, 20
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 24
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 4
  br label %19

19:                                               ; preds = %16, %15
  %20 = phi i32 [ 2, %15 ], [ %18, %16 ]
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %22, 29
  %24 = or i32 %21, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @writemmr(%struct.tridentfb_par* %25, i32 8640, i32 %26)
  %28 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @writemmr(%struct.tridentfb_par* %28, i32 8644, i32 %29)
  %31 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @writemmr(%struct.tridentfb_par* %31, i32 8632, i32 %32)
  %34 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @writemmr(%struct.tridentfb_par* %34, i32 8636, i32 %35)
  %37 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @writemmr(%struct.tridentfb_par* %37, i32 8656, i32 %38)
  %40 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @writemmr(%struct.tridentfb_par* %40, i32 8660, i32 %41)
  %43 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @writemmr(%struct.tridentfb_par* %43, i32 8648, i32 %44)
  %46 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @writemmr(%struct.tridentfb_par* %46, i32 8652, i32 %47)
  %49 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %50 = call i32 @writemmr(%struct.tridentfb_par* %49, i32 8556, i32 0)
  ret void
}

declare dso_local i32 @writemmr(%struct.tridentfb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
