; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hitfb.c_hitfb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hitfb.c_hitfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@HD64461_LDR1 = common dso_local global i32 0, align 4
@HD64461_LDR1_DON = common dso_local global i16 0, align 2
@HD64461_LCDCCR = common dso_local global i32 0, align 4
@HD64461_LCDCCR_MOFF = common dso_local global i16 0, align 2
@HD64461_STBCR = common dso_local global i32 0, align 4
@HD64461_STBCR_SLCDST = common dso_local global i16 0, align 2
@HD64461_LCDCCR_STREQ = common dso_local global i16 0, align 2
@HD64461_LCDCCR_STBACK = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hitfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %2
  %9 = load i32, i32* @HD64461_LDR1, align 4
  %10 = call zeroext i16 @fb_readw(i32 %9)
  store i16 %10, i16* %5, align 2
  %11 = load i16, i16* @HD64461_LDR1_DON, align 2
  %12 = zext i16 %11 to i32
  %13 = xor i32 %12, -1
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, %13
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %5, align 2
  %18 = load i16, i16* %5, align 2
  %19 = load i32, i32* @HD64461_LDR1, align 4
  %20 = call i32 @fb_writew(i16 zeroext %18, i32 %19)
  %21 = load i32, i32* @HD64461_LCDCCR, align 4
  %22 = call zeroext i16 @fb_readw(i32 %21)
  store i16 %22, i16* %5, align 2
  %23 = load i16, i16* @HD64461_LCDCCR_MOFF, align 2
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  %27 = or i32 %26, %24
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %5, align 2
  %29 = load i16, i16* %5, align 2
  %30 = load i32, i32* @HD64461_LCDCCR, align 4
  %31 = call i32 @fb_writew(i16 zeroext %29, i32 %30)
  %32 = load i32, i32* @HD64461_STBCR, align 4
  %33 = call zeroext i16 @fb_readw(i32 %32)
  store i16 %33, i16* %5, align 2
  %34 = load i16, i16* @HD64461_STBCR_SLCDST, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %5, align 2
  %37 = zext i16 %36 to i32
  %38 = or i32 %37, %35
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %5, align 2
  %40 = load i16, i16* %5, align 2
  %41 = load i32, i32* @HD64461_STBCR, align 4
  %42 = call i32 @fb_writew(i16 zeroext %40, i32 %41)
  br label %93

43:                                               ; preds = %2
  %44 = load i32, i32* @HD64461_STBCR, align 4
  %45 = call zeroext i16 @fb_readw(i32 %44)
  store i16 %45, i16* %5, align 2
  %46 = load i16, i16* @HD64461_STBCR_SLCDST, align 2
  %47 = zext i16 %46 to i32
  %48 = xor i32 %47, -1
  %49 = load i16, i16* %5, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %50, %48
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %5, align 2
  %53 = load i16, i16* %5, align 2
  %54 = load i32, i32* @HD64461_STBCR, align 4
  %55 = call i32 @fb_writew(i16 zeroext %53, i32 %54)
  %56 = load i32, i32* @HD64461_LCDCCR, align 4
  %57 = call zeroext i16 @fb_readw(i32 %56)
  store i16 %57, i16* %5, align 2
  %58 = load i16, i16* @HD64461_LCDCCR_MOFF, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16, i16* @HD64461_LCDCCR_STREQ, align 2
  %61 = zext i16 %60 to i32
  %62 = or i32 %59, %61
  %63 = xor i32 %62, -1
  %64 = load i16, i16* %5, align 2
  %65 = zext i16 %64 to i32
  %66 = and i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %5, align 2
  %68 = load i16, i16* %5, align 2
  %69 = load i32, i32* @HD64461_LCDCCR, align 4
  %70 = call i32 @fb_writew(i16 zeroext %68, i32 %69)
  br label %71

71:                                               ; preds = %74, %43
  %72 = load i32, i32* @HD64461_LCDCCR, align 4
  %73 = call zeroext i16 @fb_readw(i32 %72)
  store i16 %73, i16* %5, align 2
  br label %74

74:                                               ; preds = %71
  %75 = load i16, i16* %5, align 2
  %76 = zext i16 %75 to i32
  %77 = load i16, i16* @HD64461_LCDCCR_STBACK, align 2
  %78 = zext i16 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %71, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @HD64461_LDR1, align 4
  %83 = call zeroext i16 @fb_readw(i32 %82)
  store i16 %83, i16* %5, align 2
  %84 = load i16, i16* @HD64461_LDR1_DON, align 2
  %85 = zext i16 %84 to i32
  %86 = load i16, i16* %5, align 2
  %87 = zext i16 %86 to i32
  %88 = or i32 %87, %85
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* %5, align 2
  %90 = load i16, i16* %5, align 2
  %91 = load i32, i32* @HD64461_LDR1, align 4
  %92 = call i32 @fb_writew(i16 zeroext %90, i32 %91)
  br label %93

93:                                               ; preds = %81, %8
  ret i32 0
}

declare dso_local zeroext i16 @fb_readw(i32) #1

declare dso_local i32 @fb_writew(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
