; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_ctrl_epint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_ctrl_epint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsotg = type { i64 }

@S3C_DAINTMSK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_hsotg*, i32, i32, i32)* @s3c_hsotg_ctrl_epint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsotg_ctrl_epint(%struct.s3c_hsotg* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.s3c_hsotg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.s3c_hsotg* %0, %struct.s3c_hsotg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 1, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  %18 = shl i32 %17, 16
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %16, %4
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %5, align 8
  %23 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @S3C_DAINTMSK, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  br label %39

34:                                               ; preds = %19
  %35 = load i32, i32* %10, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %5, align 8
  %42 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @S3C_DAINTMSK, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @local_irq_restore(i64 %47)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
