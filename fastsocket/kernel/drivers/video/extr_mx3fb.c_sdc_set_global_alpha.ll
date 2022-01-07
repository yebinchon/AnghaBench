; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_sdc_set_global_alpha.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c_sdc_set_global_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx3fb_data = type { i32 }

@SDC_GW_CTRL = common dso_local global i32 0, align 4
@SDC_COM_CONF = common dso_local global i32 0, align 4
@SDC_COM_GLB_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mx3fb_data*, i32, i64)* @sdc_set_global_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdc_set_global_alpha(%struct.mx3fb_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mx3fb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.mx3fb_data* %0, %struct.mx3fb_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %10 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %9, i32 0, i32 0
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %17 = load i32, i32* @SDC_GW_CTRL, align 4
  %18 = call i32 @mx3fb_read_reg(%struct.mx3fb_data* %16, i32 %17)
  %19 = sext i32 %18 to i64
  %20 = and i64 %19, 16777215
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 24
  %27 = or i32 %23, %26
  %28 = load i32, i32* @SDC_GW_CTRL, align 4
  %29 = call i32 @mx3fb_write_reg(%struct.mx3fb_data* %22, i32 %27, i32 %28)
  %30 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %31 = load i32, i32* @SDC_COM_CONF, align 4
  %32 = call i32 @mx3fb_read_reg(%struct.mx3fb_data* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SDC_COM_GLB_A, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SDC_COM_CONF, align 4
  %38 = call i32 @mx3fb_write_reg(%struct.mx3fb_data* %33, i32 %36, i32 %37)
  br label %50

39:                                               ; preds = %3
  %40 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %41 = load i32, i32* @SDC_COM_CONF, align 4
  %42 = call i32 @mx3fb_read_reg(%struct.mx3fb_data* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SDC_COM_GLB_A, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load i32, i32* @SDC_COM_CONF, align 4
  %49 = call i32 @mx3fb_write_reg(%struct.mx3fb_data* %43, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %15
  %51 = load %struct.mx3fb_data*, %struct.mx3fb_data** %4, align 8
  %52 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %51, i32 0, i32 0
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mx3fb_read_reg(%struct.mx3fb_data*, i32) #1

declare dso_local i32 @mx3fb_write_reg(%struct.mx3fb_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
