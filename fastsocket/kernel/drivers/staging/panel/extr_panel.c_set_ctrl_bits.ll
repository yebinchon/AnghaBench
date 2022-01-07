; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_set_ctrl_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/panel/extr_panel.c_set_ctrl_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@pprt = common dso_local global i32 0, align 4
@LCD_BITS = common dso_local global i32 0, align 4
@lcd_bits = common dso_local global i32*** null, align 8
@LCD_PORT_C = common dso_local global i64 0, align 8
@BIT_MSK = common dso_local global i64 0, align 8
@LCD_BIT_E = common dso_local global i64 0, align 8
@bits = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LCD_BIT_RS = common dso_local global i64 0, align 8
@LCD_BIT_RW = common dso_local global i64 0, align 8
@LCD_BIT_BL = common dso_local global i64 0, align 8
@LCD_BIT_CL = common dso_local global i64 0, align 8
@LCD_BIT_DA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @set_ctrl_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ctrl_bits() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @pprt, align 4
  %4 = call i32 @r_ctr(i32 %3)
  store i32 %4, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %23, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @LCD_BITS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load i32***, i32**** @lcd_bits, align 8
  %11 = load i64, i64* @LCD_PORT_C, align 8
  %12 = getelementptr inbounds i32**, i32*** %10, i64 %11
  %13 = load i32**, i32*** %12, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @BIT_MSK, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %1, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %9
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %5

26:                                               ; preds = %5
  %27 = load i32***, i32**** @lcd_bits, align 8
  %28 = load i64, i64* @LCD_PORT_C, align 8
  %29 = getelementptr inbounds i32**, i32*** %27, i64 %28
  %30 = load i32**, i32*** %29, align 8
  %31 = load i64, i64* @LCD_BIT_E, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bits, i32 0, i32 0), align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32***, i32**** @lcd_bits, align 8
  %38 = load i64, i64* @LCD_PORT_C, align 8
  %39 = getelementptr inbounds i32**, i32*** %37, i64 %38
  %40 = load i32**, i32*** %39, align 8
  %41 = load i64, i64* @LCD_BIT_RS, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bits, i32 0, i32 1), align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %36, %46
  %48 = load i32***, i32**** @lcd_bits, align 8
  %49 = load i64, i64* @LCD_PORT_C, align 8
  %50 = getelementptr inbounds i32**, i32*** %48, i64 %49
  %51 = load i32**, i32*** %50, align 8
  %52 = load i64, i64* @LCD_BIT_RW, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bits, i32 0, i32 2), align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %47, %57
  %59 = load i32***, i32**** @lcd_bits, align 8
  %60 = load i64, i64* @LCD_PORT_C, align 8
  %61 = getelementptr inbounds i32**, i32*** %59, i64 %60
  %62 = load i32**, i32*** %61, align 8
  %63 = load i64, i64* @LCD_BIT_BL, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bits, i32 0, i32 3), align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %58, %68
  %70 = load i32***, i32**** @lcd_bits, align 8
  %71 = load i64, i64* @LCD_PORT_C, align 8
  %72 = getelementptr inbounds i32**, i32*** %70, i64 %71
  %73 = load i32**, i32*** %72, align 8
  %74 = load i64, i64* @LCD_BIT_CL, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bits, i32 0, i32 4), align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %69, %79
  %81 = load i32***, i32**** @lcd_bits, align 8
  %82 = load i64, i64* @LCD_PORT_C, align 8
  %83 = getelementptr inbounds i32**, i32*** %81, i64 %82
  %84 = load i32**, i32*** %83, align 8
  %85 = load i64, i64* @LCD_BIT_DA, align 8
  %86 = getelementptr inbounds i32*, i32** %84, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bits, i32 0, i32 5), align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %80, %90
  %92 = load i32, i32* %1, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* @pprt, align 4
  %95 = load i32, i32* %1, align 4
  %96 = call i32 @w_ctr(i32 %94, i32 %95)
  %97 = load i32, i32* %1, align 4
  ret i32 %97
}

declare dso_local i32 @r_ctr(i32) #1

declare dso_local i32 @w_ctr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
