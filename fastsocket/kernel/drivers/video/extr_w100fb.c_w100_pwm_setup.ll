; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_pwm_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_pwm_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_21__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_28__, %struct.TYPE_26__, %struct.TYPE_24__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32, i8* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32 }
%struct.w100fb_par = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }

@w100_pwr_state = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@remapped_regs = common dso_local global i64 0, align 8
@mmCLK_PIN_CNTL = common dso_local global i64 0, align 8
@CLK_SRC_XTAL = common dso_local global i8* null, align 8
@mmSCLK_CNTL = common dso_local global i64 0, align 8
@mmPCLK_CNTL = common dso_local global i64 0, align 8
@mmPLL_REF_FB_DIV = common dso_local global i64 0, align 8
@mmPLL_CNTL = common dso_local global i64 0, align 8
@mmPWRMGT_CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w100fb_par*)* @w100_pwm_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w100_pwm_setup(%struct.w100fb_par* %0) #0 {
  %2 = alloca %struct.w100fb_par*, align 8
  store %struct.w100fb_par* %0, %struct.w100fb_par** %2, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 6, i32 1, i32 0), align 8
  store i32 31, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 6, i32 1, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 6, i32 1, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 6, i32 1, i32 3), align 4
  %3 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %4 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %3, i32 0, i32 0
  %5 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 1, i32 0
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 6, i32 1, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 6, i32 1, i32 5), align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 6, i32 0), align 8
  %12 = trunc i64 %11 to i32
  %13 = load i64, i64* @remapped_regs, align 8
  %14 = load i64, i64* @mmCLK_PIN_CNTL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %12, i64 %15)
  %17 = load i8*, i8** @CLK_SRC_XTAL, align 8
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 17), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 0), align 8
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 5), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 6), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 7), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 8), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 9), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 10), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 11), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 12), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 13), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 14), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 15), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 1, i32 16), align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 5, i32 0), align 8
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* @remapped_regs, align 8
  %21 = load i64, i64* @mmSCLK_CNTL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %19, i64 %22)
  %24 = load i8*, i8** @CLK_SRC_XTAL, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 4, i32 1, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 4, i32 1, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 4, i32 1, i32 1), align 4
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 4, i32 0), align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* @remapped_regs, align 8
  %28 = load i64, i64* @mmPCLK_CNTL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %26, i64 %29)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 3, i32 1, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 3, i32 1, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 3, i32 1, i32 2), align 8
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 3, i32 1, i32 3), align 4
  store i32 255, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 3, i32 1, i32 4), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 3, i32 0), align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* @remapped_regs, align 8
  %34 = load i64, i64* @mmPLL_REF_FB_DIV, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %32, i64 %35)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 5), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 6), align 8
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 7), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 8), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 9), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 10), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 11), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 12), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 13), align 4
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 14), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 15), align 4
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 16), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 1, i32 17), align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 2, i32 0), align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* @remapped_regs, align 8
  %40 = load i64, i64* @mmPLL_CNTL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %38, i64 %41)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 5), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 6), align 8
  store i32 255, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 7), align 4
  store i32 255, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 1, i32 1, i32 8), align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 1, i32 0), align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* @remapped_regs, align 8
  %46 = load i64, i64* @mmPWRMGT_CNTL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %44, i64 %47)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @w100_pwr_state, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
