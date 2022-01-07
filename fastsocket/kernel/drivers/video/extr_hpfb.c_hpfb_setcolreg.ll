; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hpfb.c_hpfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hpfb.c_hpfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@fb_regs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @hpfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = lshr i32 %18, 8
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %14, align 1
  %21 = load i32, i32* %10, align 4
  %22 = lshr i32 %21, 8
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %15, align 1
  %24 = load i32, i32* %11, align 4
  %25 = lshr i32 %24, 8
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %16, align 1
  %27 = load i32, i32* %8, align 4
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %17, align 1
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp uge i32 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %95

36:                                               ; preds = %6
  br label %37

37:                                               ; preds = %43, %36
  %38 = load i64, i64* @fb_regs, align 8
  %39 = add nsw i64 %38, 24578
  %40 = call i32 @in_be16(i64 %39)
  %41 = and i32 %40, 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @udelay(i32 1)
  br label %37

45:                                               ; preds = %37
  %46 = load i64, i64* @fb_regs, align 8
  %47 = add nsw i64 %46, 24762
  %48 = call i32 @out_be16(i64 %47, i32 255)
  %49 = load i64, i64* @fb_regs, align 8
  %50 = add nsw i64 %49, 24754
  %51 = load i8, i8* %14, align 1
  %52 = zext i8 %51 to i32
  %53 = call i32 @out_be16(i64 %50, i32 %52)
  %54 = load i64, i64* @fb_regs, align 8
  %55 = add nsw i64 %54, 24756
  %56 = load i8, i8* %15, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 @out_be16(i64 %55, i32 %57)
  %59 = load i64, i64* @fb_regs, align 8
  %60 = add nsw i64 %59, 24758
  %61 = load i8, i8* %16, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 @out_be16(i64 %60, i32 %62)
  %64 = load i64, i64* @fb_regs, align 8
  %65 = add nsw i64 %64, 24760
  %66 = load i8, i8* %17, align 1
  %67 = zext i8 %66 to i32
  %68 = xor i32 %67, -1
  %69 = call i32 @out_be16(i64 %65, i32 %68)
  %70 = load i64, i64* @fb_regs, align 8
  %71 = add nsw i64 %70, 24816
  %72 = call i32 @out_be16(i64 %71, i32 255)
  %73 = call i32 @udelay(i32 100)
  br label %74

74:                                               ; preds = %80, %45
  %75 = load i64, i64* @fb_regs, align 8
  %76 = add nsw i64 %75, 24578
  %77 = call i32 @in_be16(i64 %76)
  %78 = and i32 %77, 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = call i32 @udelay(i32 1)
  br label %74

82:                                               ; preds = %74
  %83 = load i64, i64* @fb_regs, align 8
  %84 = add nsw i64 %83, 24754
  %85 = call i32 @out_be16(i64 %84, i32 0)
  %86 = load i64, i64* @fb_regs, align 8
  %87 = add nsw i64 %86, 24756
  %88 = call i32 @out_be16(i64 %87, i32 0)
  %89 = load i64, i64* @fb_regs, align 8
  %90 = add nsw i64 %89, 24758
  %91 = call i32 @out_be16(i64 %90, i32 0)
  %92 = load i64, i64* @fb_regs, align 8
  %93 = add nsw i64 %92, 24760
  %94 = call i32 @out_be16(i64 %93, i32 0)
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %82, %35
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @in_be16(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @out_be16(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
