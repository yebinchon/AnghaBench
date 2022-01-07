; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_set_scale.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DISPC_VID1_BASE = common dso_local global i32 0, align 4
@DISPC_VID_ATTRIBUTES = common dso_local global i32 0, align 4
@DISPC_VID2_BASE = common dso_local global i32 0, align 4
@DISPC_VID_SIZE = common dso_local global i32 0, align 4
@DISPC_VID_FIR = common dso_local global i32 0, align 4
@OMAPFB_PLANE_NUM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@OMAPFB_PLANE_GFX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [82 x i8] c"out_width %d out_height %d orig_width %d orig_height %d fir_hinc  %d fir_vinc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @omap_dispc_set_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dispc_set_scale(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* @DISPC_VID1_BASE, align 4
  %21 = load i32, i32* @DISPC_VID_ATTRIBUTES, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds i32, i32* %19, i64 1
  %24 = load i32, i32* @DISPC_VID2_BASE, align 4
  %25 = load i32, i32* @DISPC_VID_ATTRIBUTES, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* @DISPC_VID1_BASE, align 4
  %30 = load i32, i32* @DISPC_VID_SIZE, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds i32, i32* %28, i64 1
  %33 = load i32, i32* @DISPC_VID2_BASE, align 4
  %34 = load i32, i32* @DISPC_VID_SIZE, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* @DISPC_VID1_BASE, align 4
  %39 = load i32, i32* @DISPC_VID_FIR, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %37, align 4
  %41 = getelementptr inbounds i32, i32* %37, i64 1
  %42 = load i32, i32* @DISPC_VID2_BASE, align 4
  %43 = load i32, i32* @DISPC_VID_FIR, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %41, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @OMAPFB_PLANE_NUM, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %5
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %202

51:                                               ; preds = %5
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @OMAPFB_PLANE_GFX, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %55
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %202

66:                                               ; preds = %59, %51
  %67 = call i32 @enable_lcd_clocks(i32 1)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = mul nsw i32 %76, 8
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %81, 8
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80, %75, %71
  %86 = call i32 @enable_lcd_clocks(i32 0)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %202

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @set_upsampling_coef_table(i32 %90)
  br label %101

92:                                               ; preds = %66
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = call i32 @enable_lcd_clocks(i32 0)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %202

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %89
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %101
  store i32 0, i32* %16, align 4
  br label %114

109:                                              ; preds = %104
  %110 = load i32, i32* %8, align 4
  %111 = mul nsw i32 1024, %110
  %112 = load i32, i32* %10, align 4
  %113 = sdiv i32 %111, %112
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %109, %108
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117, %114
  store i32 0, i32* %17, align 4
  br label %127

122:                                              ; preds = %117
  %123 = load i32, i32* %9, align 4
  %124 = mul nsw i32 1024, %123
  %125 = load i32, i32* %11, align 4
  %126 = sdiv i32 %124, %125
  store i32 %126, i32* %17, align 4
  br label %127

127:                                              ; preds = %122, %121
  %128 = load i32, i32* %16, align 4
  %129 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %128, i32* %132, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 1), align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @FLD_MASK(i32 16, i32 12)
  %143 = call i32 @FLD_MASK(i32 0, i32 12)
  %144 = or i32 %142, %143
  %145 = load i32, i32* %17, align 4
  %146 = and i32 %145, 4095
  %147 = shl i32 %146, 16
  %148 = load i32, i32* %16, align 4
  %149 = and i32 %148, 4095
  %150 = or i32 %147, %149
  %151 = call i32 @MOD_REG_FLD(i32 %141, i32 %144, i32 %150)
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 2), align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %17, align 4
  %161 = call i32 @dev_dbg(i32 %154, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @FLD_MASK(i32 16, i32 11)
  %167 = call i32 @FLD_MASK(i32 0, i32 11)
  %168 = or i32 %166, %167
  %169 = load i32, i32* %11, align 4
  %170 = sub nsw i32 %169, 1
  %171 = shl i32 %170, 16
  %172 = load i32, i32* %10, align 4
  %173 = sub nsw i32 %172, 1
  %174 = or i32 %171, %173
  %175 = call i32 @MOD_REG_FLD(i32 %165, i32 %168, i32 %174)
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @dispc_read_reg(i32 %179)
  store i32 %180, i32* %15, align 4
  %181 = load i32, i32* %15, align 4
  %182 = and i32 %181, -97
  store i32 %182, i32* %15, align 4
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 32, i32 0
  %187 = load i32, i32* %15, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %15, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 64, i32 0
  %193 = load i32, i32* %15, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %15, align 4
  %200 = call i32 @dispc_write_reg(i32 %198, i32 %199)
  %201 = call i32 @enable_lcd_clocks(i32 0)
  store i32 0, i32* %6, align 4
  br label %202

202:                                              ; preds = %127, %96, %85, %63, %48
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @enable_lcd_clocks(i32) #1

declare dso_local i32 @set_upsampling_coef_table(i32) #1

declare dso_local i32 @MOD_REG_FLD(i32, i32, i32) #1

declare dso_local i32 @FLD_MASK(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
