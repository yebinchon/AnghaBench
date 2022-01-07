; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hpfb.c_topcat_blit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hpfb.c_topcat_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fb_regs = common dso_local global i64 0, align 8
@BUSY = common dso_local global i64 0, align 8
@fb_bitmask = common dso_local global i32 0, align 4
@TC_FBEN = common dso_local global i64 0, align 8
@TC_WEN = common dso_local global i64 0, align 8
@WMRR = common dso_local global i64 0, align 8
@SOURCE_X = common dso_local global i64 0, align 8
@SOURCE_Y = common dso_local global i64 0, align 8
@DEST_X = common dso_local global i64 0, align 8
@DEST_Y = common dso_local global i64 0, align 8
@WWIDTH = common dso_local global i64 0, align 8
@WHEIGHT = common dso_local global i64 0, align 8
@WMOVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32)* @topcat_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @topcat_blit(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %26, %17
  %19 = load i64, i64* @fb_regs, align 8
  %20 = load i64, i64* @BUSY, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @in_8(i64 %21)
  %23 = load i32, i32* @fb_bitmask, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %18

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %7
  %29 = load i64, i64* @fb_regs, align 8
  %30 = load i64, i64* @TC_FBEN, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @fb_bitmask, align 4
  %33 = call i32 @out_8(i64 %31, i32 %32)
  %34 = load i32, i32* %14, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load i64, i64* @fb_regs, align 8
  %38 = load i64, i64* @TC_WEN, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* @fb_bitmask, align 4
  %41 = call i32 @out_8(i64 %39, i32 %40)
  %42 = load i64, i64* @fb_regs, align 8
  %43 = load i64, i64* @WMRR, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @out_8(i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %28
  %48 = load i64, i64* @fb_regs, align 8
  %49 = load i64, i64* @SOURCE_X, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @out_be16(i64 %50, i32 %51)
  %53 = load i64, i64* @fb_regs, align 8
  %54 = load i64, i64* @SOURCE_Y, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @out_be16(i64 %55, i32 %56)
  %58 = load i64, i64* @fb_regs, align 8
  %59 = load i64, i64* @DEST_X, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @out_be16(i64 %60, i32 %61)
  %63 = load i64, i64* @fb_regs, align 8
  %64 = load i64, i64* @DEST_Y, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @out_be16(i64 %65, i32 %66)
  %68 = load i64, i64* @fb_regs, align 8
  %69 = load i64, i64* @WWIDTH, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @out_be16(i64 %70, i32 %71)
  %73 = load i64, i64* @fb_regs, align 8
  %74 = load i64, i64* @WHEIGHT, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @out_be16(i64 %75, i32 %76)
  %78 = load i64, i64* @fb_regs, align 8
  %79 = load i64, i64* @WMOVE, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i32, i32* @fb_bitmask, align 4
  %82 = call i32 @out_8(i64 %80, i32 %81)
  ret void
}

declare dso_local i32 @in_8(i64) #1

declare dso_local i32 @out_8(i64, i32) #1

declare dso_local i32 @out_be16(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
