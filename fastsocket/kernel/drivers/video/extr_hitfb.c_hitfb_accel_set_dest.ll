; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hitfb.c_hitfb_accel_set_dest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hitfb.c_hitfb_accel_set_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIDTH = common dso_local global i32 0, align 4
@HD64461_BBTDWR = common dso_local global i32 0, align 4
@HD64461_BBTDHR = common dso_local global i32 0, align 4
@HD64461_BBTDSARL = common dso_local global i32 0, align 4
@HD64461_BBTDSARH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @hitfb_accel_set_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hitfb_accel_set_dest(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @WIDTH, align 4
  %13 = load i32, i32* %8, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = shl i32 %20, 1
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %19, %5
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @HD64461_BBTDWR, align 4
  %26 = call i32 @fb_writew(i32 %24, i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* @HD64461_BBTDHR, align 4
  %30 = call i32 @fb_writew(i32 %28, i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, 65535
  %33 = load i32, i32* @HD64461_BBTDSARL, align 4
  %34 = call i32 @fb_writew(i32 %32, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = ashr i32 %35, 16
  %37 = load i32, i32* @HD64461_BBTDSARH, align 4
  %38 = call i32 @fb_writew(i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @fb_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
