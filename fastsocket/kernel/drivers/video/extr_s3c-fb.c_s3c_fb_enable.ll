; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3c-fb.c_s3c_fb_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_s3c-fb.c_s3c_fb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_fb = type { i64 }

@VIDCON0 = common dso_local global i64 0, align 8
@VIDCON0_ENVID = common dso_local global i32 0, align 4
@VIDCON0_ENVID_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_fb*, i32)* @s3c_fb_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_fb_enable(%struct.s3c_fb* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c_fb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s3c_fb* %0, %struct.s3c_fb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %7 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VIDCON0, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @VIDCON0_ENVID, align 4
  %16 = load i32, i32* @VIDCON0_ENVID_F, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @VIDCON0_ENVID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %42

26:                                               ; preds = %20
  %27 = load i32, i32* @VIDCON0_ENVID, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @VIDCON0_ENVID_F, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %26, %14
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.s3c_fb*, %struct.s3c_fb** %3, align 8
  %37 = getelementptr inbounds %struct.s3c_fb, %struct.s3c_fb* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VIDCON0, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  br label %42

42:                                               ; preds = %34, %25
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
