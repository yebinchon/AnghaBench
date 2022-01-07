; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_g450_pll.c_g450_isplllocked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_g450_pll.c_g450_isplllocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, i32)* @g450_isplllocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g450_isplllocked(%struct.matrox_fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.matrox_fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %37, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %10, 1000
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @matroxfb_DAC_in(%struct.matrox_fb_info* %13, i32 %14)
  %16 = and i32 %15, 64
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %29, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 100
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @matroxfb_DAC_in(%struct.matrox_fb_info* %23, i32 %24)
  %26 = and i32 %25, 64
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %19

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = icmp uge i32 %33, 5760
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %12
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %9

40:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @matroxfb_DAC_in(%struct.matrox_fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
