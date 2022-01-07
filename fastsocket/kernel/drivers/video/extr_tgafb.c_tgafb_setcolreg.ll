; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tgafb.c_tgafb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tgafb.c_tgafb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i64 }
%struct.tga_par = type { i64, i32 }

@TGA_TYPE_8PLANE = common dso_local global i64 0, align 8
@BT485_ADDR_PAL_WRITE = common dso_local global i32 0, align 4
@BT485_DATA_PAL = common dso_local global i32 0, align 4
@TGA_RAMDAC_SETUP_REG = common dso_local global i32 0, align 4
@TGA_RAMDAC_REG = common dso_local global i32 0, align 4
@BT459_PALETTE = common dso_local global i32 0, align 4
@BT463_PALETTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @tgafb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tgafb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.tga_par*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.tga_par*
  store %struct.tga_par* %21, %struct.tga_par** %14, align 8
  %22 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %23 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @TGA_BUS_PCI(i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %27 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @TGA_BUS_TC(i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ugt i32 %30, 255
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %150

33:                                               ; preds = %6
  %34 = load i32, i32* %9, align 4
  %35 = lshr i32 %34, 8
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = lshr i32 %36, 8
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = lshr i32 %38, 8
  store i32 %39, i32* %11, align 4
  %40 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %41 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TGA_TYPE_8PLANE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %33
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  %49 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @BT485_ADDR_PAL_WRITE, align 4
  %52 = call i32 @BT485_WRITE(%struct.tga_par* %49, i32 %50, i32 %51)
  %53 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %54 = load i32, i32* @BT485_DATA_PAL, align 4
  %55 = load i32, i32* @TGA_RAMDAC_SETUP_REG, align 4
  %56 = call i32 @TGA_WRITE_REG(%struct.tga_par* %53, i32 %54, i32 %55)
  %57 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @BT485_DATA_PAL, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %58, %60
  %62 = load i32, i32* @TGA_RAMDAC_REG, align 4
  %63 = call i32 @TGA_WRITE_REG(%struct.tga_par* %57, i32 %61, i32 %62)
  %64 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @BT485_DATA_PAL, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %65, %67
  %69 = load i32, i32* @TGA_RAMDAC_REG, align 4
  %70 = call i32 @TGA_WRITE_REG(%struct.tga_par* %64, i32 %68, i32 %69)
  %71 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @BT485_DATA_PAL, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %72, %74
  %76 = load i32, i32* @TGA_RAMDAC_REG, align 4
  %77 = call i32 @TGA_WRITE_REG(%struct.tga_par* %71, i32 %75, i32 %76)
  br label %149

78:                                               ; preds = %45, %33
  %79 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %80 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TGA_TYPE_8PLANE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %78
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %84
  %88 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @BT459_LOAD_ADDR(%struct.tga_par* %88, i32 %89)
  %91 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %92 = load i32, i32* @BT459_PALETTE, align 4
  %93 = shl i32 %92, 2
  %94 = load i32, i32* @TGA_RAMDAC_SETUP_REG, align 4
  %95 = call i32 @TGA_WRITE_REG(%struct.tga_par* %91, i32 %93, i32 %94)
  %96 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @TGA_RAMDAC_REG, align 4
  %99 = call i32 @TGA_WRITE_REG(%struct.tga_par* %96, i32 %97, i32 %98)
  %100 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @TGA_RAMDAC_REG, align 4
  %103 = call i32 @TGA_WRITE_REG(%struct.tga_par* %100, i32 %101, i32 %102)
  %104 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @TGA_RAMDAC_REG, align 4
  %107 = call i32 @TGA_WRITE_REG(%struct.tga_par* %104, i32 %105, i32 %106)
  br label %148

108:                                              ; preds = %84, %78
  %109 = load i32, i32* %8, align 4
  %110 = icmp ult i32 %109, 16
  br i1 %110, label %111, label %127

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = shl i32 %112, 16
  %114 = load i32, i32* %8, align 4
  %115 = shl i32 %114, 8
  %116 = or i32 %113, %115
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i32*
  %124 = load i32, i32* %8, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %119, i32* %126, align 4
  br label %127

127:                                              ; preds = %111, %108
  %128 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @BT463_LOAD_ADDR(%struct.tga_par* %128, i32 %129)
  %131 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %132 = load i32, i32* @BT463_PALETTE, align 4
  %133 = shl i32 %132, 2
  %134 = load i32, i32* @TGA_RAMDAC_SETUP_REG, align 4
  %135 = call i32 @TGA_WRITE_REG(%struct.tga_par* %131, i32 %133, i32 %134)
  %136 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @TGA_RAMDAC_REG, align 4
  %139 = call i32 @TGA_WRITE_REG(%struct.tga_par* %136, i32 %137, i32 %138)
  %140 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @TGA_RAMDAC_REG, align 4
  %143 = call i32 @TGA_WRITE_REG(%struct.tga_par* %140, i32 %141, i32 %142)
  %144 = load %struct.tga_par*, %struct.tga_par** %14, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @TGA_RAMDAC_REG, align 4
  %147 = call i32 @TGA_WRITE_REG(%struct.tga_par* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %127, %87
  br label %149

149:                                              ; preds = %148, %48
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %149, %32
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @TGA_BUS_PCI(i32) #1

declare dso_local i32 @TGA_BUS_TC(i32) #1

declare dso_local i32 @BT485_WRITE(%struct.tga_par*, i32, i32) #1

declare dso_local i32 @TGA_WRITE_REG(%struct.tga_par*, i32, i32) #1

declare dso_local i32 @BT459_LOAD_ADDR(%struct.tga_par*, i32) #1

declare dso_local i32 @BT463_LOAD_ADDR(%struct.tga_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
