; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_en_gsint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_en_gsint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsotg = type { i64, i32 }

@S3C_GINTMSK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"gsintmsk now 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_hsotg*, i32)* @s3c_hsotg_en_gsint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsotg_en_gsint(%struct.s3c_hsotg* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s3c_hsotg* %0, %struct.s3c_hsotg** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %8 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @S3C_GINTMSK, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %21 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %27 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @S3C_GINTMSK, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  br label %32

32:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
