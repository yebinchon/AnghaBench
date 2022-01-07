; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3c2410fb.c_s3c2410fb_lcd_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3c2410fb.c_s3c2410fb_lcd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410fb_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@S3C2410_LCDCON1_ENVID = common dso_local global i32 0, align 4
@S3C2410_LCDCON1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410fb_info*, i32)* @s3c2410fb_lcd_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410fb_lcd_enable(%struct.s3c2410fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c2410fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.s3c2410fb_info* %0, %struct.s3c2410fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @S3C2410_LCDCON1_ENVID, align 4
  %12 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %11
  store i32 %16, i32* %14, align 8
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @S3C2410_LCDCON1_ENVID, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %19
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %17, %10
  %26 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.s3c2410fb_info*, %struct.s3c2410fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.s3c2410fb_info, %struct.s3c2410fb_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @S3C2410_LCDCON1, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
