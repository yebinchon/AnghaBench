; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_link_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper.c_cvmx_helper_link_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@port_link_info = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_link_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store i32 %0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @cvmx_helper_get_interface_num(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @cvmx_helper_get_interface_index_num(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @cvmx_helper_ports_on_interface(i32 %15)
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @cvmx_helper_interface_get_mode(i32 %20)
  switch i32 %21, label %44 [
    i32 137, label %22
    i32 133, label %22
    i32 128, label %23
    i32 131, label %28
    i32 136, label %28
    i32 129, label %33
    i32 130, label %38
    i32 132, label %38
    i32 134, label %43
    i32 135, label %43
  ]

22:                                               ; preds = %19, %19
  br label %44

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__cvmx_helper_xaui_link_set(i32 %24, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %44

28:                                               ; preds = %19, %19
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__cvmx_helper_rgmii_link_set(i32 %29, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %44

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @__cvmx_helper_spi_link_set(i32 %34, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %44

38:                                               ; preds = %19, %19
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__cvmx_helper_sgmii_link_set(i32 %39, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %44

43:                                               ; preds = %19, %19
  br label %44

44:                                               ; preds = %19, %43, %38, %33, %28, %23, %22
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @port_link_info, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %44
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_index_num(i32) #1

declare dso_local i32 @cvmx_helper_ports_on_interface(i32) #1

declare dso_local i32 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i32 @__cvmx_helper_xaui_link_set(i32, i32) #1

declare dso_local i32 @__cvmx_helper_rgmii_link_set(i32, i32) #1

declare dso_local i32 @__cvmx_helper_spi_link_set(i32, i32) #1

declare dso_local i32 @__cvmx_helper_sgmii_link_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
