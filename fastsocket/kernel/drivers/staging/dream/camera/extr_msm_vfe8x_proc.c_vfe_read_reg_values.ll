; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_read_reg_values.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_read_reg_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64)* @vfe_read_reg_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_read_reg_values(i32* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to i64*
  store i64* %10, i64** %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %21, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i64*, i64** %7, align 8
  %17 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %17, i64** %7, align 8
  %18 = load i64, i64* %16, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i32 1
  store i64* %20, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  br label %21

21:                                               ; preds = %15
  %22 = load i64, i64* %8, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %8, align 8
  br label %11

24:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
