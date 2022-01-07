; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atmel_lcdfb.c_atmel_lcdfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atmel_lcdfb.c_atmel_lcdfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__, %struct.atmel_lcdfb_info* }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.atmel_lcdfb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @atmel_lcdfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_lcdfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_info*, align 8
  %13 = alloca %struct.atmel_lcdfb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fb_info* %5, %struct.fb_info** %12, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 3
  %19 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %18, align 8
  store %struct.atmel_lcdfb_info* %19, %struct.atmel_lcdfb_info** %13, align 8
  store i32 1, i32* %16, align 4
  %20 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %6
  %26 = load i32, i32* %8, align 4
  %27 = mul i32 19595, %26
  %28 = load i32, i32* %9, align 4
  %29 = mul i32 38470, %28
  %30 = add i32 %27, %29
  %31 = load i32, i32* %10, align 4
  %32 = mul i32 7471, %31
  %33 = add i32 %30, %32
  %34 = lshr i32 %33, 16
  store i32 %34, i32* %10, align 4
  store i32 %34, i32* %9, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %25, %6
  %36 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %109 [
    i32 128, label %40
    i32 129, label %72
    i32 130, label %95
  ]

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = icmp ult i32 %41, 16
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %15, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = call i32 @chan_to_field(i32 %47, i32* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = call i32 @chan_to_field(i32 %52, i32* %55)
  %57 = load i32, i32* %14, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @chan_to_field(i32 %59, i32* %62)
  %64 = load i32, i32* %14, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %43, %40
  br label %109

72:                                               ; preds = %35
  %73 = load i32, i32* %7, align 4
  %74 = icmp ult i32 %73, 256
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = lshr i32 %76, 11
  %78 = and i32 %77, 31
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %9, align 4
  %80 = lshr i32 %79, 6
  %81 = and i32 %80, 992
  %82 = load i32, i32* %14, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %10, align 4
  %85 = lshr i32 %84, 1
  %86 = and i32 %85, 31744
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %13, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @ATMEL_LCDC_LUT(i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @lcdc_writel(%struct.atmel_lcdfb_info* %89, i32 %91, i32 %92)
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %75, %72
  br label %109

95:                                               ; preds = %35
  %96 = load i32, i32* %7, align 4
  %97 = icmp ult i32 %96, 2
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 0, i32 31
  store i32 %102, i32* %14, align 4
  %103 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %13, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @ATMEL_LCDC_LUT(i32 %104)
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @lcdc_writel(%struct.atmel_lcdfb_info* %103, i32 %105, i32 %106)
  store i32 0, i32* %16, align 4
  br label %108

108:                                              ; preds = %98, %95
  br label %109

109:                                              ; preds = %35, %108, %94, %71
  %110 = load i32, i32* %16, align 4
  ret i32 %110
}

declare dso_local i32 @chan_to_field(i32, i32*) #1

declare dso_local i32 @lcdc_writel(%struct.atmel_lcdfb_info*, i32, i32) #1

declare dso_local i32 @ATMEL_LCDC_LUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
