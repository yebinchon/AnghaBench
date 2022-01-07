; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_regset_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_regset_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga_regset = type { i64, i64, i64 }

@VGA_REGSET_END_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vga_regset*)* @svga_regset_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svga_regset_size(%struct.vga_regset* %0) #0 {
  %2 = alloca %struct.vga_regset*, align 8
  %3 = alloca i32, align 4
  store %struct.vga_regset* %0, %struct.vga_regset** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.vga_regset*, %struct.vga_regset** %2, align 8
  %6 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VGA_REGSET_END_VAL, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = load %struct.vga_regset*, %struct.vga_regset** %2, align 8
  %12 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vga_regset*, %struct.vga_regset** %2, align 8
  %15 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = add nsw i64 %17, 1
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  %23 = load %struct.vga_regset*, %struct.vga_regset** %2, align 8
  %24 = getelementptr inbounds %struct.vga_regset, %struct.vga_regset* %23, i32 1
  store %struct.vga_regset* %24, %struct.vga_regset** %2, align 8
  br label %4

25:                                               ; preds = %4
  %26 = load i32, i32* %3, align 4
  %27 = shl i32 1, %26
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
