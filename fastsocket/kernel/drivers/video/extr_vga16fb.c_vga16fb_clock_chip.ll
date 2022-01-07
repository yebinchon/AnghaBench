; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vga16fb.c_vga16fb_clock_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vga16fb.c_vga16fb_clock_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32 }
%struct.vga16fb_par = type { i32, i32 }
%struct.fb_info = type { i32 }

@vga16fb_clock_chip.ptr = internal global %struct.anon* null, align 8
@vga16fb_clock_chip.best = internal global %struct.anon* null, align 8
@vga16fb_clock_chip.vgaclocks = internal constant [5 x %struct.anon] [%struct.anon { i32 79442, i32 0, i32 8 }, %struct.anon { i32 70616, i32 4, i32 8 }, %struct.anon { i32 39721, i32 0, i32 0 }, %struct.anon { i32 35308, i32 4, i32 0 }, %struct.anon zeroinitializer], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vga16fb_par*, i32, %struct.fb_info*, i32, i32)* @vga16fb_clock_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga16fb_clock_chip(%struct.vga16fb_par* %0, i32 %1, %struct.fb_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vga16fb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vga16fb_par* %0, %struct.vga16fb_par** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.fb_info* %2, %struct.fb_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %9, align 4
  %15 = mul i32 %13, %14
  %16 = load i32, i32* %10, align 4
  %17 = udiv i32 %15, %16
  store i32 %17, i32* %7, align 4
  store %struct.anon* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @vga16fb_clock_chip.vgaclocks, i64 0, i64 0), %struct.anon** @vga16fb_clock_chip.best, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.anon*, %struct.anon** @vga16fb_clock_chip.best, align 8
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %18, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %25, %5
  store %struct.anon* getelementptr inbounds ([5 x %struct.anon], [5 x %struct.anon]* @vga16fb_clock_chip.vgaclocks, i64 0, i64 1), %struct.anon** @vga16fb_clock_chip.ptr, align 8
  br label %29

29:                                               ; preds = %53, %28
  %30 = load %struct.anon*, %struct.anon** @vga16fb_clock_chip.ptr, align 8
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.anon*, %struct.anon** @vga16fb_clock_chip.ptr, align 8
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub i32 %35, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %42, %34
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.anon*, %struct.anon** @vga16fb_clock_chip.ptr, align 8
  store %struct.anon* %51, %struct.anon** @vga16fb_clock_chip.best, align 8
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.anon*, %struct.anon** @vga16fb_clock_chip.ptr, align 8
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 1
  store %struct.anon* %55, %struct.anon** @vga16fb_clock_chip.ptr, align 8
  br label %29

56:                                               ; preds = %29
  %57 = load %struct.anon*, %struct.anon** @vga16fb_clock_chip.best, align 8
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %61 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.anon*, %struct.anon** @vga16fb_clock_chip.best, align 8
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.vga16fb_par*, %struct.vga16fb_par** %6, align 8
  %68 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.anon*, %struct.anon** @vga16fb_clock_chip.best, align 8
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = sdiv i32 %73, %74
  store i32 %75, i32* %7, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
