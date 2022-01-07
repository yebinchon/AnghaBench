; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_vsync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remapped_regs = common dso_local global i64 0, align 8
@mmACTIVE_V_DISP = common dso_local global i64 0, align 8
@mmDISP_INT_CNTL = common dso_local global i64 0, align 8
@mmGEN_INT_CNTL = common dso_local global i64 0, align 8
@mmGEN_INT_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @w100_vsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w100_vsync() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 30000, i32* %2, align 4
  %3 = load i64, i64* @remapped_regs, align 8
  %4 = load i64, i64* @mmACTIVE_V_DISP, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @readl(i64 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = ashr i32 %7, 16
  %9 = and i32 %8, 1023
  %10 = load i64, i64* @remapped_regs, align 8
  %11 = load i64, i64* @mmDISP_INT_CNTL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %9, i64 %12)
  %14 = load i64, i64* @remapped_regs, align 8
  %15 = load i64, i64* @mmGEN_INT_CNTL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = and i32 %18, -3
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i64, i64* @remapped_regs, align 8
  %22 = load i64, i64* @mmGEN_INT_CNTL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %20, i64 %23)
  %25 = load i64, i64* @remapped_regs, align 8
  %26 = load i64, i64* @mmGEN_INT_STATUS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 2, i64 %27)
  %29 = load i32, i32* %1, align 4
  %30 = or i32 %29, 2
  %31 = load i64, i64* @remapped_regs, align 8
  %32 = load i64, i64* @mmGEN_INT_CNTL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %30, i64 %33)
  %35 = load i64, i64* @remapped_regs, align 8
  %36 = load i64, i64* @mmGEN_INT_STATUS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 2, i64 %37)
  br label %39

39:                                               ; preds = %50, %0
  %40 = load i32, i32* %2, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i64, i64* @remapped_regs, align 8
  %44 = load i64, i64* @mmGEN_INT_STATUS, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  %47 = and i32 %46, 2
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %54

50:                                               ; preds = %42
  %51 = call i32 @udelay(i32 1)
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %2, align 4
  br label %39

54:                                               ; preds = %49, %39
  %55 = load i32, i32* %1, align 4
  %56 = load i64, i64* @remapped_regs, align 8
  %57 = load i64, i64* @mmGEN_INT_CNTL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %55, i64 %58)
  %60 = load i64, i64* @remapped_regs, align 8
  %61 = load i64, i64* @mmGEN_INT_STATUS, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 2, i64 %62)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
