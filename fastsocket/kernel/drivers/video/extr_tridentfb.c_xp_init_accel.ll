; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_xp_init_accel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_xp_init_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*, i32, i32)* @xp_init_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xp_init_accel(%struct.tridentfb_par* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tridentfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 24
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 4
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi i32 [ 3, %11 ], [ %14, %12 ]
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %7, align 1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 24
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %26

22:                                               ; preds = %15
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 18, %24
  br label %26

26:                                               ; preds = %22, %21
  %27 = phi i32 [ 20, %21 ], [ %25, %22 ]
  %28 = shl i32 %18, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 3
  %32 = shl i32 %29, %31
  switch i32 %32, label %52 [
    i32 8192, label %33
    i32 512, label %33
    i32 1024, label %37
    i32 2048, label %42
    i32 4096, label %47
  ]

33:                                               ; preds = %26, %26
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %7, align 1
  br label %52

37:                                               ; preds = %26
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, 4
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %7, align 1
  br label %52

42:                                               ; preds = %26
  %43 = load i8, i8* %7, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, 8
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %7, align 1
  br label %52

47:                                               ; preds = %26
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, 12
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %7, align 1
  br label %52

52:                                               ; preds = %26, %47, %42, %37, %33
  %53 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %54 = load i8, i8* %7, align 1
  %55 = zext i8 %54 to i32
  %56 = call i32 @t_outb(%struct.tridentfb_par* %53, i32 %55, i32 8485)
  %57 = load i8, i8* %7, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, 64
  %60 = trunc i32 %59 to i8
  %61 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %62 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %61, i32 0, i32 0
  store i8 %60, i8* %62, align 1
  %63 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @writemmr(%struct.tridentfb_par* %63, i32 8532, i32 %64)
  %66 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @writemmr(%struct.tridentfb_par* %66, i32 8528, i32 %67)
  %69 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %70 = call i32 @t_outb(%struct.tridentfb_par* %69, i32 3, i32 8486)
  ret void
}

declare dso_local i32 @t_outb(%struct.tridentfb_par*, i32, i32) #1

declare dso_local i32 @writemmr(%struct.tridentfb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
