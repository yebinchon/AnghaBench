; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_interface_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_interface_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@interface_port_count = common dso_local global i32* null, align 8
@CVMX_SYNCWS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_interface_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @cvmx_helper_interface_get_mode(i32 %3)
  switch i32 %4, label %52 [
    i32 137, label %5
    i32 133, label %5
    i32 128, label %10
    i32 131, label %17
    i32 136, label %17
    i32 129, label %24
    i32 130, label %31
    i32 132, label %31
    i32 134, label %38
    i32 135, label %45
  ]

5:                                                ; preds = %1, %1
  %6 = load i32*, i32** @interface_port_count, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  store i32 0, i32* %9, align 4
  br label %52

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @__cvmx_helper_xaui_probe(i32 %11)
  %13 = load i32*, i32** @interface_port_count, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %12, i32* %16, align 4
  br label %52

17:                                               ; preds = %1, %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @__cvmx_helper_rgmii_probe(i32 %18)
  %20 = load i32*, i32** @interface_port_count, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %19, i32* %23, align 4
  br label %52

24:                                               ; preds = %1
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @__cvmx_helper_spi_probe(i32 %25)
  %27 = load i32*, i32** @interface_port_count, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  br label %52

31:                                               ; preds = %1, %1
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @__cvmx_helper_sgmii_probe(i32 %32)
  %34 = load i32*, i32** @interface_port_count, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  br label %52

38:                                               ; preds = %1
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @__cvmx_helper_npi_probe(i32 %39)
  %41 = load i32*, i32** @interface_port_count, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %52

45:                                               ; preds = %1
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @__cvmx_helper_loop_probe(i32 %46)
  %48 = load i32*, i32** @interface_port_count, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %1, %45, %38, %31, %24, %17, %10, %5
  %53 = load i32, i32* %2, align 4
  %54 = load i32*, i32** @interface_port_count, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__cvmx_helper_board_interface_probe(i32 %53, i32 %58)
  %60 = load i32*, i32** @interface_port_count, align 8
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* @CVMX_SYNCWS, align 4
  ret i32 0
}

declare dso_local i32 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i32 @__cvmx_helper_xaui_probe(i32) #1

declare dso_local i32 @__cvmx_helper_rgmii_probe(i32) #1

declare dso_local i32 @__cvmx_helper_spi_probe(i32) #1

declare dso_local i32 @__cvmx_helper_sgmii_probe(i32) #1

declare dso_local i32 @__cvmx_helper_npi_probe(i32) #1

declare dso_local i32 @__cvmx_helper_loop_probe(i32) #1

declare dso_local i32 @__cvmx_helper_board_interface_probe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
