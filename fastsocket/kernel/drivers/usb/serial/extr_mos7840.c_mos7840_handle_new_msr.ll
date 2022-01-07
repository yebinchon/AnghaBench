; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7840.c_mos7840_handle_new_msr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7840.c_mos7840_handle_new_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moschip_port = type { %struct.async_icount }
%struct.async_icount = type { i32, i32, i32, i32 }

@MOS_MSR_DELTA_CTS = common dso_local global i32 0, align 4
@MOS_MSR_DELTA_DSR = common dso_local global i32 0, align 4
@MOS_MSR_DELTA_RI = common dso_local global i32 0, align 4
@MOS_MSR_DELTA_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moschip_port*, i32)* @mos7840_handle_new_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos7840_handle_new_msr(%struct.moschip_port* %0, i32 %1) #0 {
  %3 = alloca %struct.moschip_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.moschip_port*, align 8
  %6 = alloca %struct.async_icount*, align 8
  store %struct.moschip_port* %0, %struct.moschip_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  store %struct.moschip_port* %7, %struct.moschip_port** %5, align 8
  %8 = load %struct.moschip_port*, %struct.moschip_port** %5, align 8
  %9 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %8, i32 0, i32 0
  store %struct.async_icount* %9, %struct.async_icount** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MOS_MSR_DELTA_CTS, align 4
  %12 = load i32, i32* @MOS_MSR_DELTA_DSR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MOS_MSR_DELTA_RI, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MOS_MSR_DELTA_CD, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %10, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %2
  %21 = load %struct.moschip_port*, %struct.moschip_port** %5, align 8
  %22 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %21, i32 0, i32 0
  store %struct.async_icount* %22, %struct.async_icount** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MOS_MSR_DELTA_CTS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %29 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = call i32 (...) @smp_wmb()
  br label %33

33:                                               ; preds = %27, %20
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MOS_MSR_DELTA_DSR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %40 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = call i32 (...) @smp_wmb()
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MOS_MSR_DELTA_CD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %51 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = call i32 (...) @smp_wmb()
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @MOS_MSR_DELTA_RI, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %62 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = call i32 (...) @smp_wmb()
  br label %66

66:                                               ; preds = %60, %55
  br label %67

67:                                               ; preds = %66, %2
  ret void
}

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
