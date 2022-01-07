; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_mdacon.c_mda_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_mdacon.c_mda_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mda_vram_base = common dso_local global i64 0, align 8
@mda_vram_len = common dso_local global i32 0, align 4
@mda_status_port = common dso_local global i32 0, align 4
@MDA_STATUS_VSYNC = common dso_local global i32 0, align 4
@TYPE_HERCPLUS = common dso_local global i32 0, align 4
@mda_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"HerculesPlus\00", align 1
@mda_type_name = common dso_local global i8* null, align 8
@TYPE_HERCCOLOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"HerculesColor\00", align 1
@TYPE_HERC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Hercules\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mda_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mda_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %7 = load i64, i64* @mda_vram_base, align 8
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %3, align 8
  %9 = load i64, i64* @mda_vram_base, align 8
  %10 = add nsw i64 %9, 4096
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @scr_readw(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @scr_readw(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @scr_writew(i32 43605, i32* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @scr_readw(i32* %18)
  %20 = icmp eq i32 %19, 43605
  br i1 %20, label %21, label %24

21:                                               ; preds = %0
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %0
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @scr_writew(i32 21930, i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @scr_readw(i32* %27)
  %29 = icmp eq i32 %28, 21930
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %4, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @scr_writew(i32 %34, i32* %35)
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %1, align 4
  br label %111

40:                                               ; preds = %33
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @scr_writew(i32 42330, i32* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @scr_writew(i32 0, i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @scr_readw(i32* %45)
  %47 = icmp eq i32 %46, 42330
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %40
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @scr_writew(i32 23205, i32* %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @scr_writew(i32 0, i32* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @scr_readw(i32* %56)
  %58 = icmp eq i32 %57, 23205
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %51
  %63 = load i32, i32* %4, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @scr_writew(i32 %63, i32* %64)
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @scr_writew(i32 %66, i32* %67)
  %69 = load i32, i32* %2, align 4
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 8192, i32* @mda_vram_len, align 4
  br label %72

72:                                               ; preds = %71, %62
  %73 = load i32, i32* @mda_status_port, align 4
  %74 = call i32 @inb_p(i32 %73)
  %75 = load i32, i32* @MDA_STATUS_VSYNC, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %6, align 4
  store i32 %76, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %92, %72
  %78 = load i32, i32* %2, align 4
  %79 = icmp slt i32 %78, 50000
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %81, %82
  br label %84

84:                                               ; preds = %80, %77
  %85 = phi i1 [ false, %77 ], [ %83, %80 ]
  br i1 %85, label %86, label %95

86:                                               ; preds = %84
  %87 = load i32, i32* @mda_status_port, align 4
  %88 = call i32 @inb(i32 %87)
  %89 = load i32, i32* @MDA_STATUS_VSYNC, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %6, align 4
  %91 = call i32 @udelay(i32 2)
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %2, align 4
  br label %77

95:                                               ; preds = %84
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load i32, i32* @mda_status_port, align 4
  %101 = call i32 @inb_p(i32 %100)
  %102 = and i32 %101, 112
  switch i32 %102, label %107 [
    i32 16, label %103
    i32 80, label %105
  ]

103:                                              ; preds = %99
  %104 = load i32, i32* @TYPE_HERCPLUS, align 4
  store i32 %104, i32* @mda_type, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** @mda_type_name, align 8
  br label %109

105:                                              ; preds = %99
  %106 = load i32, i32* @TYPE_HERCCOLOR, align 4
  store i32 %106, i32* @mda_type, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** @mda_type_name, align 8
  br label %109

107:                                              ; preds = %99
  %108 = load i32, i32* @TYPE_HERC, align 4
  store i32 %108, i32* @mda_type, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** @mda_type_name, align 8
  br label %109

109:                                              ; preds = %107, %105, %103
  br label %110

110:                                              ; preds = %109, %95
  store i32 1, i32* %1, align 4
  br label %111

111:                                              ; preds = %110, %39
  %112 = load i32, i32* %1, align 4
  ret i32 %112
}

declare dso_local i32 @scr_readw(i32*) #1

declare dso_local i32 @scr_writew(i32, i32*) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
