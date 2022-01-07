; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_viafb_lcd_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_lcd.c_viafb_lcd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@viaparinfo = common dso_local global %struct.TYPE_8__* null, align 8
@UNICHROME_CLE266 = common dso_local global i64 0, align 8
@SR1E = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@UNICHROME_CX700 = common dso_local global i64 0, align 8
@viafb_LCD2_ON = common dso_local global i64 0, align 8
@INTEGRATED_LVDS = common dso_local global i64 0, align 8
@VT1636_LVDS = common dso_local global i64 0, align 8
@SR2A = common dso_local global i32 0, align 4
@SR3D = common dso_local global i32 0, align 4
@CR91 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@IGA1 = common dso_local global i64 0, align 8
@CR97 = common dso_local global i32 0, align 4
@CR99 = common dso_local global i32 0, align 4
@CR6A = common dso_local global i32 0, align 4
@IGA1_IGA2 = common dso_local global i64 0, align 8
@SR16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_lcd_enable() #0 {
  %1 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %2 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @UNICHROME_CLE266, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i32, i32* @SR1E, align 4
  %10 = load i32, i32* @VIASR, align 4
  %11 = call i32 @viafb_write_reg_mask(i32 %9, i32 %10, i32 48, i32 48)
  %12 = call i32 (...) @lcd_powersequence_on()
  br label %134

13:                                               ; preds = %0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UNICHROME_CX700, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %79

21:                                               ; preds = %13
  %22 = load i64, i64* @viafb_LCD2_ON, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i64, i64* @INTEGRATED_LVDS, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %25, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = call i32 @integrated_lvds_enable(%struct.TYPE_9__* %36, %struct.TYPE_10__* %40)
  br label %42

42:                                               ; preds = %33, %24, %21
  %43 = load i64, i64* @INTEGRATED_LVDS, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %43, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = call i32 @integrated_lvds_enable(%struct.TYPE_9__* %54, %struct.TYPE_10__* %58)
  br label %60

60:                                               ; preds = %51, %42
  %61 = load i64, i64* @VT1636_LVDS, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %61, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = call i32 @viafb_enable_lvds_vt1636(%struct.TYPE_9__* %72, %struct.TYPE_10__* %76)
  br label %78

78:                                               ; preds = %69, %60
  br label %133

79:                                               ; preds = %13
  %80 = load i64, i64* @VT1636_LVDS, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %80, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %79
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = call i32 @viafb_enable_lvds_vt1636(%struct.TYPE_9__* %91, %struct.TYPE_10__* %95)
  br label %132

97:                                               ; preds = %79
  %98 = load i32, i32* @SR2A, align 4
  %99 = load i32, i32* @VIASR, align 4
  %100 = call i32 @viafb_write_reg_mask(i32 %98, i32 %99, i32 15, i32 15)
  %101 = load i32, i32* @SR3D, align 4
  %102 = load i32, i32* @VIASR, align 4
  %103 = call i32 @viafb_write_reg_mask(i32 %101, i32 %102, i32 32, i32 32)
  %104 = load i32, i32* @CR91, align 4
  %105 = load i32, i32* @VIACR, align 4
  %106 = call i32 @viafb_write_reg_mask(i32 %104, i32 %105, i32 0, i32 128)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @IGA1, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %97
  %115 = load i32, i32* @CR97, align 4
  %116 = load i32, i32* @VIACR, align 4
  %117 = call i32 @viafb_write_reg_mask(i32 %115, i32 %116, i32 0, i32 16)
  %118 = load i32, i32* @CR99, align 4
  %119 = load i32, i32* @VIACR, align 4
  %120 = call i32 @viafb_write_reg_mask(i32 %118, i32 %119, i32 0, i32 16)
  br label %128

121:                                              ; preds = %97
  %122 = load i32, i32* @CR97, align 4
  %123 = load i32, i32* @VIACR, align 4
  %124 = call i32 @viafb_write_reg_mask(i32 %122, i32 %123, i32 16, i32 16)
  %125 = load i32, i32* @CR99, align 4
  %126 = load i32, i32* @VIACR, align 4
  %127 = call i32 @viafb_write_reg_mask(i32 %125, i32 %126, i32 16, i32 16)
  br label %128

128:                                              ; preds = %121, %114
  %129 = load i32, i32* @CR6A, align 4
  %130 = load i32, i32* @VIACR, align 4
  %131 = call i32 @viafb_write_reg_mask(i32 %129, i32 %130, i32 72, i32 72)
  br label %132

132:                                              ; preds = %128, %88
  br label %133

133:                                              ; preds = %132, %78
  br label %134

134:                                              ; preds = %133, %8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @IGA1, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %134
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** @viaparinfo, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @IGA1_IGA2, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %142, %134
  %151 = load i32, i32* @SR16, align 4
  %152 = load i32, i32* @VIASR, align 4
  %153 = call i32 @viafb_write_reg_mask(i32 %151, i32 %152, i32 64, i32 64)
  %154 = load i32, i32* @CR6A, align 4
  %155 = load i32, i32* @VIACR, align 4
  %156 = call i32 @viafb_write_reg_mask(i32 %154, i32 %155, i32 0, i32 128)
  br label %161

157:                                              ; preds = %142
  %158 = load i32, i32* @CR6A, align 4
  %159 = load i32, i32* @VIACR, align 4
  %160 = call i32 @viafb_write_reg_mask(i32 %158, i32 %159, i32 128, i32 128)
  br label %161

161:                                              ; preds = %157, %150
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local i32 @lcd_powersequence_on(...) #1

declare dso_local i32 @integrated_lvds_enable(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @viafb_enable_lvds_vt1636(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
