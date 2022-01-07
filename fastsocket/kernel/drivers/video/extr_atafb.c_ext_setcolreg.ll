; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_ext_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_ext_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@external_bitspercol = common dso_local global i32 0, align 4
@external_vgaiobase = common dso_local global i32 0, align 4
@external_card_type = common dso_local global i32 0, align 4
@DACDelay = common dso_local global i32 0, align 4
@MV300_reg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @ext_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i8, align 1
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %15 = load i32, i32* @external_bitspercol, align 4
  %16 = shl i32 1, %15
  %17 = sub nsw i32 %16, 1
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %14, align 1
  %19 = load i32, i32* @external_vgaiobase, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %75

22:                                               ; preds = %6
  %23 = load i32, i32* @external_card_type, align 4
  switch i32 %23, label %74 [
    i32 128, label %24
    i32 129, label %46
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @OUTB(i32 968, i32 %25)
  %27 = load i32, i32* @DACDelay, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i8, i8* %14, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = call i32 @OUTB(i32 969, i32 %31)
  %33 = load i32, i32* @DACDelay, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i8, i8* %14, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %34, %36
  %38 = call i32 @OUTB(i32 969, i32 %37)
  %39 = load i32, i32* @DACDelay, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i8, i8* %14, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = call i32 @OUTB(i32 969, i32 %43)
  %45 = load i32, i32* @DACDelay, align 4
  store i32 0, i32* %7, align 4
  br label %75

46:                                               ; preds = %22
  %47 = load i32*, i32** @MV300_reg, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 2
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @OUTB(i32 %53, i32 %54)
  %56 = load i32*, i32** @MV300_reg, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 2
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @OUTB(i32 %62, i32 %63)
  %65 = load i32*, i32** @MV300_reg, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 2
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @OUTB(i32 %71, i32 %72)
  store i32 0, i32* %7, align 4
  br label %75

74:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %75

75:                                               ; preds = %74, %46, %24, %21
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @OUTB(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
