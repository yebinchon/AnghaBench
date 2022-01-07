; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_configure_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_configure_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_configure_loopback(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @cvmx_helper_get_interface_num(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @cvmx_helper_get_interface_index_num(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @cvmx_helper_ports_on_interface(i32 %16)
  %18 = icmp sge i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %41

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @cvmx_helper_interface_get_mode(i32 %21)
  switch i32 %22, label %39 [
    i32 137, label %23
    i32 133, label %23
    i32 129, label %23
    i32 134, label %23
    i32 135, label %23
    i32 128, label %24
    i32 131, label %29
    i32 136, label %29
    i32 130, label %34
    i32 132, label %34
  ]

23:                                               ; preds = %20, %20, %20, %20, %20
  br label %39

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @__cvmx_helper_xaui_configure_loopback(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %39

29:                                               ; preds = %20, %20
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @__cvmx_helper_rgmii_configure_loopback(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %39

34:                                               ; preds = %20, %20
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @__cvmx_helper_sgmii_configure_loopback(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %20, %34, %29, %24, %23
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %19
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_index_num(i32) #1

declare dso_local i32 @cvmx_helper_ports_on_interface(i32) #1

declare dso_local i32 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i32 @__cvmx_helper_xaui_configure_loopback(i32, i32, i32) #1

declare dso_local i32 @__cvmx_helper_rgmii_configure_loopback(i32, i32, i32) #1

declare dso_local i32 @__cvmx_helper_sgmii_configure_loopback(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
