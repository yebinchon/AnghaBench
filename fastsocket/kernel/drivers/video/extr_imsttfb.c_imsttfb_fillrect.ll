; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imsttfb.c_imsttfb_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imsttfb.c_imsttfb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.imstt_par* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.imstt_par = type { i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i64 }

@ROP_COPY = common dso_local global i64 0, align 8
@SSTATUS = common dso_local global i32 0, align 4
@DSA = common dso_local global i32 0, align 4
@CNT = common dso_local global i32 0, align 4
@DP_OCTL = common dso_local global i32 0, align 4
@BI = common dso_local global i32 0, align 4
@MBC = common dso_local global i32 0, align 4
@CLR = common dso_local global i32 0, align 4
@BLTCTL = common dso_local global i32 0, align 4
@S1SA = common dso_local global i32 0, align 4
@SP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @imsttfb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imsttfb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.imstt_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 2
  %15 = load %struct.imstt_par*, %struct.imstt_par** %14, align 8
  store %struct.imstt_par* %15, %struct.imstt_par** %5, align 8
  %16 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %17 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = shl i32 %19, 8
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 16
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 3
  store i32 %31, i32* %6, align 4
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %7, align 4
  %36 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %37 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %42 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %47 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %12, align 4
  %51 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %52 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %11, align 4
  %58 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %59 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ROP_COPY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %138

63:                                               ; preds = %2
  br label %64

64:                                               ; preds = %72, %63
  %65 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %66 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SSTATUS, align 4
  %69 = call i32 @read_reg_le32(i32 %67, i32 %68)
  %70 = and i32 %69, 128
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %64

73:                                               ; preds = %64
  %74 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %75 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DSA, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @write_reg_le32(i32 %76, i32 %77, i32 %80)
  %82 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %83 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CNT, align 4
  %86 = load i32, i32* %12, align 4
  %87 = shl i32 %86, 16
  %88 = load i32, i32* %11, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @write_reg_le32(i32 %84, i32 %85, i32 %89)
  %91 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %92 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DP_OCTL, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @write_reg_le32(i32 %93, i32 %94, i32 %95)
  %97 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %98 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @BI, align 4
  %101 = call i32 @write_reg_le32(i32 %99, i32 %100, i32 -1)
  %102 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %103 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MBC, align 4
  %106 = call i32 @write_reg_le32(i32 %104, i32 %105, i32 -1)
  %107 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %108 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @CLR, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @write_reg_le32(i32 %109, i32 %110, i32 %111)
  %113 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %114 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @BLTCTL, align 4
  %117 = call i32 @write_reg_le32(i32 %115, i32 %116, i32 2112)
  br label %118

118:                                              ; preds = %126, %73
  %119 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %120 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SSTATUS, align 4
  %123 = call i32 @read_reg_le32(i32 %121, i32 %122)
  %124 = and i32 %123, 128
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %118

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %136, %127
  %129 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %130 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @SSTATUS, align 4
  %133 = call i32 @read_reg_le32(i32 %131, i32 %132)
  %134 = and i32 %133, 64
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %128

137:                                              ; preds = %128
  br label %211

138:                                              ; preds = %2
  br label %139

139:                                              ; preds = %147, %138
  %140 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %141 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SSTATUS, align 4
  %144 = call i32 @read_reg_le32(i32 %142, i32 %143)
  %145 = and i32 %144, 128
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %139

148:                                              ; preds = %139
  %149 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %150 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @DSA, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %153, %154
  %156 = call i32 @write_reg_le32(i32 %151, i32 %152, i32 %155)
  %157 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %158 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @S1SA, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %161, %162
  %164 = call i32 @write_reg_le32(i32 %159, i32 %160, i32 %163)
  %165 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %166 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @CNT, align 4
  %169 = load i32, i32* %12, align 4
  %170 = shl i32 %169, 16
  %171 = load i32, i32* %11, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @write_reg_le32(i32 %167, i32 %168, i32 %172)
  %174 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %175 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @DP_OCTL, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @write_reg_le32(i32 %176, i32 %177, i32 %178)
  %180 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %181 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @SP, align 4
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @write_reg_le32(i32 %182, i32 %183, i32 %184)
  %186 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %187 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @BLTCTL, align 4
  %190 = call i32 @write_reg_le32(i32 %188, i32 %189, i32 262149)
  br label %191

191:                                              ; preds = %199, %148
  %192 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %193 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @SSTATUS, align 4
  %196 = call i32 @read_reg_le32(i32 %194, i32 %195)
  %197 = and i32 %196, 128
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  br label %191

200:                                              ; preds = %191
  br label %201

201:                                              ; preds = %209, %200
  %202 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %203 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @SSTATUS, align 4
  %206 = call i32 @read_reg_le32(i32 %204, i32 %205)
  %207 = and i32 %206, 64
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %201
  br label %201

210:                                              ; preds = %201
  br label %211

211:                                              ; preds = %210, %137
  ret void
}

declare dso_local i32 @read_reg_le32(i32, i32) #1

declare dso_local i32 @write_reg_le32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
