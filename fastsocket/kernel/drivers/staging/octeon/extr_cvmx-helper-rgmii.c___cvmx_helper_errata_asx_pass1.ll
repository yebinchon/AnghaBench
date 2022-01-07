; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-rgmii.c___cvmx_helper_errata_asx_pass1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-rgmii.c___cvmx_helper_errata_asx_pass1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [62 x i8] c"Illegal clock frequency (%d). CVMX_ASXX_TX_HI_WATERX not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @__cvmx_helper_errata_asx_pass1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_helper_errata_asx_pass1(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 325000000
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 375000000
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @CVMX_ASXX_TX_HI_WATERX(i32 %13, i32 %14)
  %16 = call i32 @cvmx_write_csr(i32 %15, i32 12)
  br label %56

17:                                               ; preds = %9, %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 375000000
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 437000000
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @CVMX_ASXX_TX_HI_WATERX(i32 %24, i32 %25)
  %27 = call i32 @cvmx_write_csr(i32 %26, i32 11)
  br label %55

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 437000000
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 550000000
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @CVMX_ASXX_TX_HI_WATERX(i32 %35, i32 %36)
  %38 = call i32 @cvmx_write_csr(i32 %37, i32 10)
  br label %54

39:                                               ; preds = %31, %28
  %40 = load i32, i32* %6, align 4
  %41 = icmp sge i32 %40, 550000000
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 687000000
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @CVMX_ASXX_TX_HI_WATERX(i32 %46, i32 %47)
  %49 = call i32 @cvmx_write_csr(i32 %48, i32 9)
  br label %53

50:                                               ; preds = %42, %39
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %34
  br label %55

55:                                               ; preds = %54, %23
  br label %56

56:                                               ; preds = %55, %12
  ret i32 0
}

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_ASXX_TX_HI_WATERX(i32, i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
