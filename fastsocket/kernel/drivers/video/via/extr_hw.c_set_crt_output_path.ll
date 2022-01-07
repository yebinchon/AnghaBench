; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_set_crt_output_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_set_crt_output_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CR36 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i64 0, align 8
@BIT5 = common dso_local global i64 0, align 8
@SR16 = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i64 0, align 8
@CR6A = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i64 0, align 8
@CR6B = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_crt_output_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_crt_output_path(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @CR36, align 4
  %4 = load i32, i32* @VIACR, align 4
  %5 = load i64, i64* @BIT4, align 8
  %6 = load i64, i64* @BIT5, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @viafb_write_reg_mask(i32 %3, i32 %4, i32 0, i64 %7)
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %34 [
    i32 130, label %10
    i32 128, label %15
    i32 129, label %15
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @SR16, align 4
  %12 = load i32, i32* @VIASR, align 4
  %13 = load i64, i64* @BIT6, align 8
  %14 = call i32 @viafb_write_reg_mask(i32 %11, i32 %12, i32 0, i64 %13)
  br label %34

15:                                               ; preds = %1, %1
  %16 = load i32, i32* @CR6A, align 4
  %17 = load i32, i32* @VIACR, align 4
  %18 = load i64, i64* @BIT6, align 8
  %19 = load i64, i64* @BIT7, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @viafb_write_reg_mask(i32 %16, i32 %17, i32 192, i64 %20)
  %22 = load i32, i32* @SR16, align 4
  %23 = load i32, i32* @VIASR, align 4
  %24 = load i64, i64* @BIT6, align 8
  %25 = call i32 @viafb_write_reg_mask(i32 %22, i32 %23, i32 64, i64 %24)
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, 129
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load i32, i32* @CR6B, align 4
  %30 = load i32, i32* @VIACR, align 4
  %31 = load i64, i64* @BIT3, align 8
  %32 = call i32 @viafb_write_reg_mask(i32 %29, i32 %30, i32 8, i64 %31)
  br label %33

33:                                               ; preds = %28, %15
  br label %34

34:                                               ; preds = %1, %33, %10
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
