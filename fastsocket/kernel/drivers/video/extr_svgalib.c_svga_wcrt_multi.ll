; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_wcrt_multi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_wcrt_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga_regset = type { i64, i32, i32 }

@VGA_REGSET_END_VAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svga_wcrt_multi(%struct.vga_regset* %0, i32 %1) #0 {
  %3 = alloca %struct.vga_regset*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vga_regset* %0, %struct.vga_regset** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %8

8:                                                ; preds = %47, %2
  %9 = load %struct.vga_regset*, %struct.vga_regset** %3, align 8
  %10 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VGA_REGSET_END_VAL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %8
  %15 = load %struct.vga_regset*, %struct.vga_regset** %3, align 8
  %16 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @vga_rcrt(i32* null, i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.vga_regset*, %struct.vga_regset** %3, align 8
  %20 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %42, %14
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.vga_regset*, %struct.vga_regset** %3, align 8
  %25 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %28
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %22

47:                                               ; preds = %22
  %48 = load %struct.vga_regset*, %struct.vga_regset** %3, align 8
  %49 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @vga_wcrt(i32* null, i64 %50, i32 %51)
  %53 = load %struct.vga_regset*, %struct.vga_regset** %3, align 8
  %54 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %53, i32 1
  store %struct.vga_regset* %54, %struct.vga_regset** %3, align 8
  br label %8

55:                                               ; preds = %8
  ret void
}

declare dso_local i32 @vga_rcrt(i32*, i64) #1

declare dso_local i32 @vga_wcrt(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
