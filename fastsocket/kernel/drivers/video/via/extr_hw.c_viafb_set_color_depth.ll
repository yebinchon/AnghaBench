; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_set_color_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_set_color_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IGA1 = common dso_local global i32 0, align 4
@SR15 = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@CR67 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_set_color_depth(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IGA1, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %22 [
    i32 128, label %10
    i32 130, label %14
    i32 129, label %18
  ]

10:                                               ; preds = %8
  %11 = load i32, i32* @SR15, align 4
  %12 = load i32, i32* @VIASR, align 4
  %13 = call i32 @viafb_write_reg_mask(i32 %11, i32 %12, i32 34, i32 126)
  br label %22

14:                                               ; preds = %8
  %15 = load i32, i32* @SR15, align 4
  %16 = load i32, i32* @VIASR, align 4
  %17 = call i32 @viafb_write_reg_mask(i32 %15, i32 %16, i32 182, i32 254)
  br label %22

18:                                               ; preds = %8
  %19 = load i32, i32* @SR15, align 4
  %20 = load i32, i32* @VIASR, align 4
  %21 = call i32 @viafb_write_reg_mask(i32 %19, i32 %20, i32 174, i32 254)
  br label %22

22:                                               ; preds = %8, %18, %14, %10
  br label %47

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  switch i32 %24, label %46 [
    i32 128, label %25
    i32 130, label %32
    i32 129, label %39
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @CR67, align 4
  %27 = load i32, i32* @VIACR, align 4
  %28 = load i32, i32* @BIT6, align 4
  %29 = load i32, i32* @BIT7, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @viafb_write_reg_mask(i32 %26, i32 %27, i32 0, i32 %30)
  br label %46

32:                                               ; preds = %23
  %33 = load i32, i32* @CR67, align 4
  %34 = load i32, i32* @VIACR, align 4
  %35 = load i32, i32* @BIT6, align 4
  %36 = load i32, i32* @BIT7, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @viafb_write_reg_mask(i32 %33, i32 %34, i32 64, i32 %37)
  br label %46

39:                                               ; preds = %23
  %40 = load i32, i32* @CR67, align 4
  %41 = load i32, i32* @VIACR, align 4
  %42 = load i32, i32* @BIT6, align 4
  %43 = load i32, i32* @BIT7, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @viafb_write_reg_mask(i32 %40, i32 %41, i32 192, i32 %44)
  br label %46

46:                                               ; preds = %23, %39, %32, %25
  br label %47

47:                                               ; preds = %46, %22
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
