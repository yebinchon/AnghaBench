; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_basic_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_basic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"udc_basic_init()\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@udc_timer = common dso_local global i32 0, align 4
@set_rde = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@udc_pollstall_timer = common dso_local global i32 0, align 4
@UDC_DEVCTL_RDE = common dso_local global i32 0, align 4
@UDC_DEVCTL_TDE = common dso_local global i32 0, align 4
@UDC_DEVCFG_CSR_PRG = common dso_local global i32 0, align 4
@UDC_DEVCFG_SP = common dso_local global i32 0, align 4
@UDC_DEVCFG_RWKP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc*)* @udc_basic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_basic_init(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  %3 = alloca i32, align 4
  store %struct.udc* %0, %struct.udc** %2, align 8
  %4 = load %struct.udc*, %struct.udc** %2, align 8
  %5 = call i32 @DBG(%struct.udc* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %7 = load %struct.udc*, %struct.udc** %2, align 8
  %8 = getelementptr inbounds %struct.udc, %struct.udc* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 8
  %10 = call i64 @timer_pending(i32* @udc_timer)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  store i64 0, i64* @set_rde, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i32 @mod_timer(i32* @udc_timer, i64 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = call i64 @timer_pending(i32* @udc_pollstall_timer)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i64, i64* @jiffies, align 8
  %21 = sub nsw i64 %20, 1
  %22 = call i32 @mod_timer(i32* @udc_pollstall_timer, i64 %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.udc*, %struct.udc** %2, align 8
  %25 = getelementptr inbounds %struct.udc, %struct.udc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @readl(i32* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @UDC_DEVCTL_RDE, align 4
  %30 = call i32 @AMD_UNMASK_BIT(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @UDC_DEVCTL_TDE, align 4
  %34 = call i32 @AMD_UNMASK_BIT(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.udc*, %struct.udc** %2, align 8
  %39 = getelementptr inbounds %struct.udc, %struct.udc* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = call i32 @writel(i32 %37, i32* %41)
  %43 = load %struct.udc*, %struct.udc** %2, align 8
  %44 = getelementptr inbounds %struct.udc, %struct.udc* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @readl(i32* %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @UDC_DEVCFG_CSR_PRG, align 4
  %49 = call i32 @AMD_BIT(i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @UDC_DEVCFG_SP, align 4
  %53 = call i32 @AMD_BIT(i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* @UDC_DEVCFG_RWKP, align 4
  %57 = call i32 @AMD_BIT(i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.udc*, %struct.udc** %2, align 8
  %62 = getelementptr inbounds %struct.udc, %struct.udc* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @writel(i32 %60, i32* %64)
  %66 = load %struct.udc*, %struct.udc** %2, align 8
  %67 = call i32 @make_ep_lists(%struct.udc* %66)
  %68 = load %struct.udc*, %struct.udc** %2, align 8
  %69 = getelementptr inbounds %struct.udc, %struct.udc* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.udc*, %struct.udc** %2, align 8
  %71 = getelementptr inbounds %struct.udc, %struct.udc* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  ret void
}

declare dso_local i32 @DBG(%struct.udc*, i8*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @AMD_UNMASK_BIT(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @AMD_BIT(i32) #1

declare dso_local i32 @make_ep_lists(%struct.udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
