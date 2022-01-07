; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_vgg2432a4.c_vgg2432a4_lcd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_vgg2432a4.c_vgg2432a4_lcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ili9320 = type { i32 }
%struct.ili9320_platdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ILI9320_OSCILATION = common dso_local global i32 0, align 4
@ILI9320_OSCILATION_OSC = common dso_local global i32 0, align 4
@vgg_init0 = common dso_local global i32 0, align 4
@ILI9320_DISPLAY2 = common dso_local global i32 0, align 4
@ILI9320_DISPLAY3 = common dso_local global i32 0, align 4
@ILI9320_DISPLAY4 = common dso_local global i32 0, align 4
@ILI9320_RGB_IF1 = common dso_local global i32 0, align 4
@ILI9320_FRAMEMAKER = common dso_local global i32 0, align 4
@ILI9320_RGB_IF2 = common dso_local global i32 0, align 4
@vgg_init1 = common dso_local global i32 0, align 4
@vgg_init2 = common dso_local global i32 0, align 4
@ILI9320_POWER3 = common dso_local global i32 0, align 4
@ILI9320_POWER4 = common dso_local global i32 0, align 4
@ILI9320_POWER7 = common dso_local global i32 0, align 4
@ILI9320_GRAM_HORIZ_ADDR = common dso_local global i32 0, align 4
@ILI9320_GRAM_VERT_ADD = common dso_local global i32 0, align 4
@vgg_gamma = common dso_local global i32 0, align 4
@ILI9320_HORIZ_START = common dso_local global i32 0, align 4
@ILI9320_HORIZ_END = common dso_local global i32 0, align 4
@ILI9320_VERT_START = common dso_local global i32 0, align 4
@ILI9320_VERT_END = common dso_local global i32 0, align 4
@ILI9320_DRIVER2 = common dso_local global i32 0, align 4
@ILI9320_BASE_IMAGE = common dso_local global i32 0, align 4
@ILI9320_VERT_SCROLL = common dso_local global i32 0, align 4
@ILI9320_PARTIAL1_POSITION = common dso_local global i32 0, align 4
@ILI9320_PARTIAL2_END = common dso_local global i32 0, align 4
@ILI9320_INTERFACE1 = common dso_local global i32 0, align 4
@ILI9320_INTERFACE2 = common dso_local global i32 0, align 4
@ILI9320_INTERFACE3 = common dso_local global i32 0, align 4
@ILI9320_INTERFACE4 = common dso_local global i32 0, align 4
@ILI9320_INTERFACE5 = common dso_local global i32 0, align 4
@ILI9320_INTERFACE6 = common dso_local global i32 0, align 4
@ILI9320_DISPLAY1_DTE = common dso_local global i32 0, align 4
@ILI9320_DISPLAY1_GON = common dso_local global i32 0, align 4
@ILI9320_DISPLAY1_BASEE = common dso_local global i32 0, align 4
@ILI9320_DISPLAY1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ili9320*, %struct.ili9320_platdata*)* @vgg2432a4_lcd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgg2432a4_lcd_init(%struct.ili9320* %0, %struct.ili9320_platdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ili9320*, align 8
  %5 = alloca %struct.ili9320_platdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ili9320* %0, %struct.ili9320** %4, align 8
  store %struct.ili9320_platdata* %1, %struct.ili9320_platdata** %5, align 8
  %8 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %9 = call i32 @ili9320_write(%struct.ili9320* %8, i32 229, i32 32768)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %212

13:                                               ; preds = %2
  %14 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %15 = load i32, i32* @ILI9320_OSCILATION, align 4
  %16 = load i32, i32* @ILI9320_OSCILATION_OSC, align 4
  %17 = call i32 @ili9320_write(%struct.ili9320* %14, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %212

21:                                               ; preds = %13
  %22 = call i32 @mdelay(i32 15)
  %23 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %24 = load i32, i32* @vgg_init0, align 4
  %25 = load i32, i32* @vgg_init0, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @ili9320_write_regs(%struct.ili9320* %23, i32 %24, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %212

31:                                               ; preds = %21
  %32 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %33 = load i32, i32* @ILI9320_DISPLAY2, align 4
  %34 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %5, align 8
  %35 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ili9320_write(%struct.ili9320* %32, i32 %33, i32 %36)
  %38 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %39 = load i32, i32* @ILI9320_DISPLAY3, align 4
  %40 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %5, align 8
  %41 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ili9320_write(%struct.ili9320* %38, i32 %39, i32 %42)
  %44 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %45 = load i32, i32* @ILI9320_DISPLAY4, align 4
  %46 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %5, align 8
  %47 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ili9320_write(%struct.ili9320* %44, i32 %45, i32 %48)
  %50 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %51 = load i32, i32* @ILI9320_RGB_IF1, align 4
  %52 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %5, align 8
  %53 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ili9320_write(%struct.ili9320* %50, i32 %51, i32 %54)
  %56 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %57 = load i32, i32* @ILI9320_FRAMEMAKER, align 4
  %58 = call i32 @ili9320_write(%struct.ili9320* %56, i32 %57, i32 0)
  %59 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %60 = load i32, i32* @ILI9320_RGB_IF2, align 4
  %61 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %5, align 8
  %62 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ili9320_write(%struct.ili9320* %59, i32 %60, i32 %63)
  %65 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %66 = load i32, i32* @vgg_init1, align 4
  %67 = load i32, i32* @vgg_init1, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = call i32 @ili9320_write_regs(%struct.ili9320* %65, i32 %66, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %31
  br label %211

73:                                               ; preds = %31
  %74 = call i32 @mdelay(i32 300)
  %75 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %76 = load i32, i32* @vgg_init2, align 4
  %77 = load i32, i32* @vgg_init2, align 4
  %78 = call i32 @ARRAY_SIZE(i32 %77)
  %79 = call i32 @ili9320_write_regs(%struct.ili9320* %75, i32 %76, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %210

83:                                               ; preds = %73
  %84 = call i32 @mdelay(i32 100)
  %85 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %86 = load i32, i32* @ILI9320_POWER3, align 4
  %87 = call i32 @ili9320_write(%struct.ili9320* %85, i32 %86, i32 316)
  %88 = call i32 @mdelay(i32 100)
  %89 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %90 = load i32, i32* @ILI9320_POWER4, align 4
  %91 = call i32 @ili9320_write(%struct.ili9320* %89, i32 %90, i32 7168)
  %92 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %93 = load i32, i32* @ILI9320_POWER7, align 4
  %94 = call i32 @ili9320_write(%struct.ili9320* %92, i32 %93, i32 14)
  %95 = call i32 @mdelay(i32 100)
  %96 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %97 = load i32, i32* @ILI9320_GRAM_HORIZ_ADDR, align 4
  %98 = call i32 @ili9320_write(%struct.ili9320* %96, i32 %97, i32 0)
  %99 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %100 = load i32, i32* @ILI9320_GRAM_VERT_ADD, align 4
  %101 = call i32 @ili9320_write(%struct.ili9320* %99, i32 %100, i32 0)
  %102 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %103 = load i32, i32* @vgg_gamma, align 4
  %104 = load i32, i32* @vgg_gamma, align 4
  %105 = call i32 @ARRAY_SIZE(i32 %104)
  %106 = call i32 @ili9320_write_regs(%struct.ili9320* %102, i32 %103, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %83
  br label %209

110:                                              ; preds = %83
  %111 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %112 = load i32, i32* @ILI9320_HORIZ_START, align 4
  %113 = call i32 @ili9320_write(%struct.ili9320* %111, i32 %112, i32 0)
  %114 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %115 = load i32, i32* @ILI9320_HORIZ_END, align 4
  %116 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %5, align 8
  %117 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 1
  %120 = call i32 @ili9320_write(%struct.ili9320* %114, i32 %115, i32 %119)
  %121 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %122 = load i32, i32* @ILI9320_VERT_START, align 4
  %123 = call i32 @ili9320_write(%struct.ili9320* %121, i32 %122, i32 0)
  %124 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %125 = load i32, i32* @ILI9320_VERT_END, align 4
  %126 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %5, align 8
  %127 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, 1
  %130 = call i32 @ili9320_write(%struct.ili9320* %124, i32 %125, i32 %129)
  %131 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %132 = load i32, i32* @ILI9320_DRIVER2, align 4
  %133 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %5, align 8
  %134 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 240
  %137 = sdiv i32 %136, 8
  %138 = add nsw i32 %137, 29
  %139 = call i32 @ILI9320_DRIVER2_NL(i32 %138)
  %140 = call i32 @ili9320_write(%struct.ili9320* %131, i32 %132, i32 %139)
  %141 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %142 = load i32, i32* @ILI9320_BASE_IMAGE, align 4
  %143 = call i32 @ili9320_write(%struct.ili9320* %141, i32 %142, i32 1)
  %144 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %145 = load i32, i32* @ILI9320_VERT_SCROLL, align 4
  %146 = call i32 @ili9320_write(%struct.ili9320* %144, i32 %145, i32 0)
  %147 = load i32, i32* @ILI9320_PARTIAL1_POSITION, align 4
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %156, %110
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @ILI9320_PARTIAL2_END, align 4
  %151 = icmp ule i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @ili9320_write(%struct.ili9320* %153, i32 %154, i32 0)
  br label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %6, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %148

159:                                              ; preds = %148
  %160 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %161 = load i32, i32* @ILI9320_INTERFACE1, align 4
  %162 = call i32 @ili9320_write(%struct.ili9320* %160, i32 %161, i32 16)
  %163 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %164 = load i32, i32* @ILI9320_INTERFACE2, align 4
  %165 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %5, align 8
  %166 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ili9320_write(%struct.ili9320* %163, i32 %164, i32 %167)
  %169 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %170 = load i32, i32* @ILI9320_INTERFACE3, align 4
  %171 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %5, align 8
  %172 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ili9320_write(%struct.ili9320* %169, i32 %170, i32 %173)
  %175 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %176 = load i32, i32* @ILI9320_INTERFACE4, align 4
  %177 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %5, align 8
  %178 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ili9320_write(%struct.ili9320* %175, i32 %176, i32 %179)
  %181 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %182 = load i32, i32* @ILI9320_INTERFACE5, align 4
  %183 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %5, align 8
  %184 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %183, i32 0, i32 10
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @ili9320_write(%struct.ili9320* %181, i32 %182, i32 %185)
  %187 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %188 = load i32, i32* @ILI9320_INTERFACE6, align 4
  %189 = load %struct.ili9320_platdata*, %struct.ili9320_platdata** %5, align 8
  %190 = getelementptr inbounds %struct.ili9320_platdata, %struct.ili9320_platdata* %189, i32 0, i32 11
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ili9320_write(%struct.ili9320* %187, i32 %188, i32 %191)
  %193 = call i32 @ILI9320_DISPLAY1_D(i32 3)
  %194 = load i32, i32* @ILI9320_DISPLAY1_DTE, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @ILI9320_DISPLAY1_GON, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @ILI9320_DISPLAY1_BASEE, align 4
  %199 = or i32 %197, %198
  %200 = or i32 %199, 64
  %201 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %202 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  %203 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %204 = load i32, i32* @ILI9320_DISPLAY1, align 4
  %205 = load %struct.ili9320*, %struct.ili9320** %4, align 8
  %206 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @ili9320_write(%struct.ili9320* %203, i32 %204, i32 %207)
  store i32 0, i32* %3, align 4
  br label %214

209:                                              ; preds = %109
  br label %210

210:                                              ; preds = %209, %82
  br label %211

211:                                              ; preds = %210, %72
  br label %212

212:                                              ; preds = %211, %30, %20, %12
  %213 = load i32, i32* %7, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %212, %159
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @ili9320_write(%struct.ili9320*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ili9320_write_regs(%struct.ili9320*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ILI9320_DRIVER2_NL(i32) #1

declare dso_local i32 @ILI9320_DISPLAY1_D(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
