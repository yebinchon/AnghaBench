; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hitfb.c_hitfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hitfb.c_hitfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HD64461_CPTWAR = common dso_local global i32 0, align 4
@HD64461_CPTWDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @hitfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hitfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp uge i32 %14, 256
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %62

17:                                               ; preds = %6
  %18 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %61 [
    i32 8, label %22
    i32 16, label %39
  ]

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 8
  %25 = load i32, i32* @HD64461_CPTWAR, align 4
  %26 = call i32 @fb_writew(i32 %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = lshr i32 %27, 10
  %29 = load i32, i32* @HD64461_CPTWDR, align 4
  %30 = call i32 @fb_writew(i32 %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = lshr i32 %31, 10
  %33 = load i32, i32* @HD64461_CPTWDR, align 4
  %34 = call i32 @fb_writew(i32 %32, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = lshr i32 %35, 10
  %37 = load i32, i32* @HD64461_CPTWDR, align 4
  %38 = call i32 @fb_writew(i32 %36, i32 %37)
  br label %61

39:                                               ; preds = %17
  %40 = load i32, i32* %8, align 4
  %41 = icmp uge i32 %40, 16
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %62

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 63488
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 64512
  %48 = lshr i32 %47, 5
  %49 = or i32 %45, %48
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, 63488
  %52 = lshr i32 %51, 11
  %53 = or i32 %49, %52
  %54 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %53, i32* %60, align 4
  br label %61

61:                                               ; preds = %17, %43, %22
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %42, %16
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @fb_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
