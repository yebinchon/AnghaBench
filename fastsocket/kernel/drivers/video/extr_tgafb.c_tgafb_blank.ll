; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tgafb.c_tgafb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tgafb.c_tgafb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64 }
%struct.tga_par = type { i32 }

@TGA_HORIZ_REG = common dso_local global i32 0, align 4
@TGA_VERT_REG = common dso_local global i32 0, align 4
@TGA_VALID_REG = common dso_local global i32 0, align 4
@TGA_VALID_VIDEO = common dso_local global i32 0, align 4
@TGA_VALID_BLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @tgafb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgafb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.tga_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.tga_par*
  store %struct.tga_par* %13, %struct.tga_par** %5, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %17 = load i32, i32* @TGA_HORIZ_REG, align 4
  %18 = call i32 @TGA_READ_REG(%struct.tga_par* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %20 = load i32, i32* @TGA_VERT_REG, align 4
  %21 = call i32 @TGA_READ_REG(%struct.tga_par* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %23 = load i32, i32* @TGA_VALID_REG, align 4
  %24 = call i32 @TGA_READ_REG(%struct.tga_par* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @TGA_VALID_VIDEO, align 4
  %26 = load i32, i32* @TGA_VALID_BLANK, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %3, align 4
  switch i32 %31, label %113 [
    i32 129, label %32
    i32 131, label %57
    i32 128, label %66
    i32 132, label %80
    i32 130, label %94
  ]

32:                                               ; preds = %2
  %33 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %34 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, -1073741825
  %41 = load i32, i32* @TGA_HORIZ_REG, align 4
  %42 = call i32 @TGA_WRITE_REG(%struct.tga_par* %38, i32 %40, i32 %41)
  %43 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, -1073741825
  %46 = load i32, i32* @TGA_VERT_REG, align 4
  %47 = call i32 @TGA_WRITE_REG(%struct.tga_par* %43, i32 %45, i32 %46)
  %48 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %49 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %37, %32
  %51 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @TGA_VALID_VIDEO, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @TGA_VALID_REG, align 4
  %56 = call i32 @TGA_WRITE_REG(%struct.tga_par* %51, i32 %54, i32 %55)
  br label %113

57:                                               ; preds = %2
  %58 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @TGA_VALID_VIDEO, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @TGA_VALID_BLANK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @TGA_VALID_REG, align 4
  %65 = call i32 @TGA_WRITE_REG(%struct.tga_par* %58, i32 %63, i32 %64)
  br label %113

66:                                               ; preds = %2
  %67 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, 1073741824
  %70 = load i32, i32* @TGA_VERT_REG, align 4
  %71 = call i32 @TGA_WRITE_REG(%struct.tga_par* %67, i32 %69, i32 %70)
  %72 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @TGA_VALID_BLANK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @TGA_VALID_REG, align 4
  %77 = call i32 @TGA_WRITE_REG(%struct.tga_par* %72, i32 %75, i32 %76)
  %78 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %79 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  br label %113

80:                                               ; preds = %2
  %81 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, 1073741824
  %84 = load i32, i32* @TGA_HORIZ_REG, align 4
  %85 = call i32 @TGA_WRITE_REG(%struct.tga_par* %81, i32 %83, i32 %84)
  %86 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @TGA_VALID_BLANK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @TGA_VALID_REG, align 4
  %91 = call i32 @TGA_WRITE_REG(%struct.tga_par* %86, i32 %89, i32 %90)
  %92 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %93 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  br label %113

94:                                               ; preds = %2
  %95 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, 1073741824
  %98 = load i32, i32* @TGA_HORIZ_REG, align 4
  %99 = call i32 @TGA_WRITE_REG(%struct.tga_par* %95, i32 %97, i32 %98)
  %100 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, 1073741824
  %103 = load i32, i32* @TGA_VERT_REG, align 4
  %104 = call i32 @TGA_WRITE_REG(%struct.tga_par* %100, i32 %102, i32 %103)
  %105 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @TGA_VALID_BLANK, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @TGA_VALID_REG, align 4
  %110 = call i32 @TGA_WRITE_REG(%struct.tga_par* %105, i32 %108, i32 %109)
  %111 = load %struct.tga_par*, %struct.tga_par** %5, align 8
  %112 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %111, i32 0, i32 0
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %2, %94, %80, %66, %57, %50
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @local_irq_restore(i64 %114)
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @TGA_READ_REG(%struct.tga_par*, i32) #1

declare dso_local i32 @TGA_WRITE_REG(%struct.tga_par*, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
