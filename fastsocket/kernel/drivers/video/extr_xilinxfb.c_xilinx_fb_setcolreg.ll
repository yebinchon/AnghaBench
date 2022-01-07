; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_xilinxfb.c_xilinx_fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_xilinxfb.c_xilinx_fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PALETTE_ENTRIES_NO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RED_SHIFT = common dso_local global i32 0, align 4
@GREEN_SHIFT = common dso_local global i32 0, align 4
@BLUE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @xilinx_fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %14, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PALETTE_ENTRIES_NO, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %63

24:                                               ; preds = %6
  %25 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = mul i32 %31, 77
  %33 = load i32, i32* %10, align 4
  %34 = mul i32 %33, 151
  %35 = add i32 %32, %34
  %36 = load i32, i32* %11, align 4
  %37 = mul i32 %36, 28
  %38 = add i32 %35, %37
  %39 = add i32 %38, 127
  %40 = lshr i32 %39, 8
  store i32 %40, i32* %11, align 4
  store i32 %40, i32* %10, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %30, %24
  %42 = load i32, i32* %9, align 4
  %43 = lshr i32 %42, 8
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = lshr i32 %44, 8
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = lshr i32 %46, 8
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @RED_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @GREEN_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @BLUE_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %54, %57
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %41, %21
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
