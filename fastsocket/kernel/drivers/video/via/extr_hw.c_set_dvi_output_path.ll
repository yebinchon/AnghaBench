; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_set_dvi_output_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_set_dvi_output_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CR6B = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i64 0, align 8
@IGA1 = common dso_local global i32 0, align 4
@CR96 = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i64 0, align 8
@CR6C = common dso_local global i32 0, align 4
@BIT5 = common dso_local global i64 0, align 8
@BIT7 = common dso_local global i64 0, align 8
@SR1E = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i64 0, align 8
@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@UNICHROME_CLE266 = common dso_local global i32 0, align 4
@CR93 = common dso_local global i32 0, align 4
@CR9B = common dso_local global i32 0, align 4
@CR97 = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i64 0, align 8
@SR2A = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i64 0, align 8
@BIT3 = common dso_local global i64 0, align 8
@CR99 = common dso_local global i32 0, align 4
@IGA2 = common dso_local global i32 0, align 4
@CR79 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_dvi_output_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dvi_output_path(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %202 [
    i32 130, label %6
    i32 129, label %48
    i32 132, label %102
    i32 131, label %148
    i32 128, label %187
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @CR6B, align 4
  %8 = load i32, i32* @VIACR, align 4
  %9 = load i64, i64* @BIT0, align 8
  %10 = call i32 @viafb_write_reg_mask(i32 %7, i32 %8, i32 1, i64 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IGA1, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %6
  %15 = load i32, i32* @CR96, align 4
  %16 = load i32, i32* @VIACR, align 4
  %17 = load i64, i64* @BIT4, align 8
  %18 = call i32 @viafb_write_reg_mask(i32 %15, i32 %16, i32 0, i64 %17)
  %19 = load i32, i32* @CR6C, align 4
  %20 = load i32, i32* @VIACR, align 4
  %21 = load i64, i64* @BIT0, align 8
  %22 = load i64, i64* @BIT5, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* @BIT7, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @viafb_write_reg_mask(i32 %19, i32 %20, i32 33, i64 %25)
  br label %40

27:                                               ; preds = %6
  %28 = load i32, i32* @CR96, align 4
  %29 = load i32, i32* @VIACR, align 4
  %30 = load i64, i64* @BIT4, align 8
  %31 = call i32 @viafb_write_reg_mask(i32 %28, i32 %29, i32 16, i64 %30)
  %32 = load i32, i32* @CR6C, align 4
  %33 = load i32, i32* @VIACR, align 4
  %34 = load i64, i64* @BIT0, align 8
  %35 = load i64, i64* @BIT5, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* @BIT7, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @viafb_write_reg_mask(i32 %32, i32 %33, i32 161, i64 %38)
  br label %40

40:                                               ; preds = %27, %14
  %41 = load i32, i32* @SR1E, align 4
  %42 = load i32, i32* @VIASR, align 4
  %43 = load i64, i64* @BIT7, align 8
  %44 = load i64, i64* @BIT6, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @viafb_write_reg_mask(i32 %41, i32 %42, i32 192, i64 %45)
  %47 = call i32 (...) @dvi_patch_skew_dvp0()
  br label %202

48:                                               ; preds = %2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UNICHROME_CLE266, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %48
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @IGA1, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* @CR93, align 4
  %62 = load i32, i32* @VIACR, align 4
  %63 = load i64, i64* @BIT0, align 8
  %64 = load i64, i64* @BIT5, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i64, i64* @BIT7, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @viafb_write_reg_mask(i32 %61, i32 %62, i32 33, i64 %67)
  br label %78

69:                                               ; preds = %56
  %70 = load i32, i32* @CR93, align 4
  %71 = load i32, i32* @VIACR, align 4
  %72 = load i64, i64* @BIT0, align 8
  %73 = load i64, i64* @BIT5, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i64, i64* @BIT7, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @viafb_write_reg_mask(i32 %70, i32 %71, i32 161, i64 %76)
  br label %78

78:                                               ; preds = %69, %60
  br label %94

79:                                               ; preds = %48
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @IGA1, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* @CR9B, align 4
  %85 = load i32, i32* @VIACR, align 4
  %86 = load i64, i64* @BIT4, align 8
  %87 = call i32 @viafb_write_reg_mask(i32 %84, i32 %85, i32 0, i64 %86)
  br label %93

88:                                               ; preds = %79
  %89 = load i32, i32* @CR9B, align 4
  %90 = load i32, i32* @VIACR, align 4
  %91 = load i64, i64* @BIT4, align 8
  %92 = call i32 @viafb_write_reg_mask(i32 %89, i32 %90, i32 16, i64 %91)
  br label %93

93:                                               ; preds = %88, %83
  br label %94

94:                                               ; preds = %93, %78
  %95 = load i32, i32* @SR1E, align 4
  %96 = load i32, i32* @VIASR, align 4
  %97 = load i64, i64* @BIT4, align 8
  %98 = load i64, i64* @BIT5, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @viafb_write_reg_mask(i32 %95, i32 %96, i32 48, i64 %99)
  %101 = call i32 (...) @dvi_patch_skew_dvp1()
  br label %202

102:                                              ; preds = %2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @UNICHROME_CLE266, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %141

110:                                              ; preds = %102
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @IGA1, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = load i32, i32* @CR96, align 4
  %116 = load i32, i32* @VIACR, align 4
  %117 = load i64, i64* @BIT4, align 8
  %118 = call i32 @viafb_write_reg_mask(i32 %115, i32 %116, i32 0, i64 %117)
  %119 = load i32, i32* @CR97, align 4
  %120 = load i32, i32* @VIACR, align 4
  %121 = load i64, i64* @BIT0, align 8
  %122 = load i64, i64* @BIT1, align 8
  %123 = add nsw i64 %121, %122
  %124 = load i64, i64* @BIT4, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @viafb_write_reg_mask(i32 %119, i32 %120, i32 3, i64 %125)
  br label %140

127:                                              ; preds = %110
  %128 = load i32, i32* @CR96, align 4
  %129 = load i32, i32* @VIACR, align 4
  %130 = load i64, i64* @BIT4, align 8
  %131 = call i32 @viafb_write_reg_mask(i32 %128, i32 %129, i32 16, i64 %130)
  %132 = load i32, i32* @CR97, align 4
  %133 = load i32, i32* @VIACR, align 4
  %134 = load i64, i64* @BIT0, align 8
  %135 = load i64, i64* @BIT1, align 8
  %136 = add nsw i64 %134, %135
  %137 = load i64, i64* @BIT4, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @viafb_write_reg_mask(i32 %132, i32 %133, i32 19, i64 %138)
  br label %140

140:                                              ; preds = %127, %114
  br label %141

141:                                              ; preds = %140, %102
  %142 = load i32, i32* @SR2A, align 4
  %143 = load i32, i32* @VIASR, align 4
  %144 = load i64, i64* @BIT2, align 8
  %145 = load i64, i64* @BIT3, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @viafb_write_reg_mask(i32 %142, i32 %143, i32 12, i64 %146)
  br label %202

148:                                              ; preds = %2
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @UNICHROME_CLE266, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %202

157:                                              ; preds = %148
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* @IGA1, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = load i32, i32* @CR99, align 4
  %163 = load i32, i32* @VIACR, align 4
  %164 = load i64, i64* @BIT4, align 8
  %165 = call i32 @viafb_write_reg_mask(i32 %162, i32 %163, i32 0, i64 %164)
  %166 = load i32, i32* @CR9B, align 4
  %167 = load i32, i32* @VIACR, align 4
  %168 = load i64, i64* @BIT4, align 8
  %169 = call i32 @viafb_write_reg_mask(i32 %166, i32 %167, i32 0, i64 %168)
  br label %179

170:                                              ; preds = %157
  %171 = load i32, i32* @CR99, align 4
  %172 = load i32, i32* @VIACR, align 4
  %173 = load i64, i64* @BIT4, align 8
  %174 = call i32 @viafb_write_reg_mask(i32 %171, i32 %172, i32 16, i64 %173)
  %175 = load i32, i32* @CR9B, align 4
  %176 = load i32, i32* @VIACR, align 4
  %177 = load i64, i64* @BIT4, align 8
  %178 = call i32 @viafb_write_reg_mask(i32 %175, i32 %176, i32 16, i64 %177)
  br label %179

179:                                              ; preds = %170, %161
  %180 = load i32, i32* @SR2A, align 4
  %181 = load i32, i32* @VIASR, align 4
  %182 = load i64, i64* @BIT0, align 8
  %183 = load i64, i64* @BIT1, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @viafb_write_reg_mask(i32 %180, i32 %181, i32 3, i64 %184)
  %186 = call i32 (...) @dvi_patch_skew_dvp_low()
  br label %202

187:                                              ; preds = %2
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* @IGA1, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = load i32, i32* @CR99, align 4
  %193 = load i32, i32* @VIACR, align 4
  %194 = load i64, i64* @BIT4, align 8
  %195 = call i32 @viafb_write_reg_mask(i32 %192, i32 %193, i32 0, i64 %194)
  br label %201

196:                                              ; preds = %187
  %197 = load i32, i32* @CR99, align 4
  %198 = load i32, i32* @VIACR, align 4
  %199 = load i64, i64* @BIT4, align 8
  %200 = call i32 @viafb_write_reg_mask(i32 %197, i32 %198, i32 16, i64 %199)
  br label %201

201:                                              ; preds = %196, %191
  br label %202

202:                                              ; preds = %2, %201, %179, %156, %141, %94, %40
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* @IGA2, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = call i32 (...) @enable_second_display_channel()
  %208 = load i32, i32* @CR79, align 4
  %209 = load i32, i32* @VIACR, align 4
  %210 = load i64, i64* @BIT0, align 8
  %211 = call i32 @viafb_write_reg_mask(i32 %208, i32 %209, i32 0, i64 %210)
  br label %212

212:                                              ; preds = %206, %202
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i64) #1

declare dso_local i32 @dvi_patch_skew_dvp0(...) #1

declare dso_local i32 @dvi_patch_skew_dvp1(...) #1

declare dso_local i32 @dvi_patch_skew_dvp_low(...) #1

declare dso_local i32 @enable_second_display_channel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
