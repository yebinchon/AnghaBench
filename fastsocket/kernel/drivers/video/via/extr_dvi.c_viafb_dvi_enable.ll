; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_dvi.c_viafb_dvi_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_dvi.c_viafb_dvi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@viaparinfo = common dso_local global %struct.TYPE_6__* null, align 8
@INTERFACE_DVP0 = common dso_local global i64 0, align 8
@SR1E = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@UNICHROME_CLE266 = common dso_local global i64 0, align 8
@CR91 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@INTERFACE_DVP1 = common dso_local global i64 0, align 8
@viafb_platform_epia_dvi = common dso_local global i32 0, align 4
@CR88 = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@viafb_bus_width = common dso_local global i32 0, align 4
@viafb_device_lcd_dualedge = common dso_local global i32 0, align 4
@INTERFACE_DFP_HIGH = common dso_local global i64 0, align 8
@SR2A = common dso_local global i32 0, align 4
@INTERFACE_DFP_LOW = common dso_local global i64 0, align 8
@INTERFACE_TMDS = common dso_local global i64 0, align 8
@BIT7 = common dso_local global i32 0, align 4
@CRD2 = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_dvi_enable() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @INTERFACE_DVP0, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %0
  %11 = load i32, i32* @SR1E, align 4
  %12 = load i32, i32* @VIASR, align 4
  %13 = load i32, i32* @VIASR, align 4
  %14 = load i32, i32* @SR1E, align 4
  %15 = call i32 @viafb_read_reg(i32 %13, i32 %14)
  %16 = or i32 %15, 192
  %17 = call i32 @viafb_write_reg(i32 %11, i32 %12, i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UNICHROME_CLE266, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %10
  %26 = call i32 @tmds_register_write(i32 136, i32 59)
  br label %35

27:                                               ; preds = %10
  %28 = load i32, i32* @CR91, align 4
  %29 = load i32, i32* @VIACR, align 4
  %30 = load i32, i32* @VIACR, align 4
  %31 = load i32, i32* @CR91, align 4
  %32 = call i32 @viafb_read_reg(i32 %30, i32 %31)
  %33 = and i32 %32, 223
  %34 = call i32 @viafb_write_reg(i32 %28, i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %27, %25
  br label %36

36:                                               ; preds = %35, %0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @INTERFACE_DVP1, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %101

45:                                               ; preds = %36
  %46 = load i32, i32* @SR1E, align 4
  %47 = load i32, i32* @VIASR, align 4
  %48 = load i32, i32* @VIASR, align 4
  %49 = load i32, i32* @SR1E, align 4
  %50 = call i32 @viafb_read_reg(i32 %48, i32 %49)
  %51 = or i32 %50, 48
  %52 = call i32 @viafb_write_reg(i32 %46, i32 %47, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @UNICHROME_CLE266, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %45
  %61 = call i32 @tmds_register_write(i32 136, i32 59)
  br label %70

62:                                               ; preds = %45
  %63 = load i32, i32* @CR91, align 4
  %64 = load i32, i32* @VIACR, align 4
  %65 = load i32, i32* @VIACR, align 4
  %66 = load i32, i32* @CR91, align 4
  %67 = call i32 @viafb_read_reg(i32 %65, i32 %66)
  %68 = and i32 %67, 223
  %69 = call i32 @viafb_write_reg(i32 %63, i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %62, %60
  %71 = load i32, i32* @viafb_platform_epia_dvi, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %100

73:                                               ; preds = %70
  %74 = load i32, i32* @CR91, align 4
  %75 = load i32, i32* @VIACR, align 4
  %76 = call i32 @viafb_write_reg_mask(i32 %74, i32 %75, i32 31, i32 31)
  %77 = load i32, i32* @CR88, align 4
  %78 = load i32, i32* @VIACR, align 4
  %79 = load i32, i32* @BIT6, align 4
  %80 = load i32, i32* @BIT0, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i32 @viafb_write_reg_mask(i32 %77, i32 %78, i32 0, i32 %81)
  %83 = load i32, i32* @viafb_bus_width, align 4
  %84 = icmp eq i32 %83, 24
  br i1 %84, label %85, label %99

85:                                               ; preds = %73
  %86 = load i32, i32* @viafb_device_lcd_dualedge, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 63, i32* %1, align 4
  br label %90

89:                                               ; preds = %85
  store i32 55, i32* %1, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %1, align 4
  %98 = call i32 @viafb_i2c_writebyte(i32 %96, i32 8, i32 %97)
  br label %99

99:                                               ; preds = %90, %73
  br label %100

100:                                              ; preds = %99, %70
  br label %101

101:                                              ; preds = %100, %36
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @INTERFACE_DFP_HIGH, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %101
  %111 = load i32, i32* @SR2A, align 4
  %112 = load i32, i32* @VIASR, align 4
  %113 = load i32, i32* @VIASR, align 4
  %114 = load i32, i32* @SR2A, align 4
  %115 = call i32 @viafb_read_reg(i32 %113, i32 %114)
  %116 = or i32 %115, 12
  %117 = call i32 @viafb_write_reg(i32 %111, i32 %112, i32 %116)
  %118 = load i32, i32* @CR91, align 4
  %119 = load i32, i32* @VIACR, align 4
  %120 = load i32, i32* @VIACR, align 4
  %121 = load i32, i32* @CR91, align 4
  %122 = call i32 @viafb_read_reg(i32 %120, i32 %121)
  %123 = and i32 %122, 223
  %124 = call i32 @viafb_write_reg(i32 %118, i32 %119, i32 %123)
  br label %125

125:                                              ; preds = %110, %101
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @INTERFACE_DFP_LOW, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %125
  %135 = load i32, i32* @SR2A, align 4
  %136 = load i32, i32* @VIASR, align 4
  %137 = load i32, i32* @VIASR, align 4
  %138 = load i32, i32* @SR2A, align 4
  %139 = call i32 @viafb_read_reg(i32 %137, i32 %138)
  %140 = or i32 %139, 3
  %141 = call i32 @viafb_write_reg(i32 %135, i32 %136, i32 %140)
  %142 = load i32, i32* @CR91, align 4
  %143 = load i32, i32* @VIACR, align 4
  %144 = load i32, i32* @VIACR, align 4
  %145 = load i32, i32* @CR91, align 4
  %146 = call i32 @viafb_read_reg(i32 %144, i32 %145)
  %147 = and i32 %146, 223
  %148 = call i32 @viafb_write_reg(i32 %142, i32 %143, i32 %147)
  br label %149

149:                                              ; preds = %134, %125
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viaparinfo, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @INTERFACE_TMDS, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %149
  %159 = load i32, i32* @CR91, align 4
  %160 = load i32, i32* @VIACR, align 4
  %161 = load i32, i32* @BIT7, align 4
  %162 = call i32 @viafb_write_reg_mask(i32 %159, i32 %160, i32 0, i32 %161)
  %163 = load i32, i32* @CRD2, align 4
  %164 = load i32, i32* @VIACR, align 4
  %165 = load i32, i32* @BIT3, align 4
  %166 = call i32 @viafb_write_reg_mask(i32 %163, i32 %164, i32 0, i32 %165)
  br label %167

167:                                              ; preds = %158, %149
  ret void
}

declare dso_local i32 @viafb_write_reg(i32, i32, i32) #1

declare dso_local i32 @viafb_read_reg(i32, i32) #1

declare dso_local i32 @tmds_register_write(i32, i32) #1

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local i32 @viafb_i2c_writebyte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
