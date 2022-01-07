; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_video_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_video_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i32, i32* }

@_num_decoders = common dso_local global i32 0, align 4
@MON_A_CTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@_display_field_cnt = common dso_local global i32* null, align 8
@DENC_AB_CTRL = common dso_local global i32 0, align 4
@BYP_AB_CTRL = common dso_local global i32 0, align 4
@AFE_AB_DIAG_CTRL = common dso_local global i32 0, align 4
@PIN_OE_CTRL = common dso_local global i32 0, align 4
@MAX_DECODERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @medusa_video_init(%struct.cx25821_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx25821_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %9 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %12 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* @_num_decoders, align 4
  %14 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %15 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* @MON_A_CTRL, align 4
  %19 = call i32 @cx25821_i2c_read(i32* %17, i32 %18, i32* %5)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, -3841
  store i32 %21, i32* %4, align 4
  %22 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %23 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* @MON_A_CTRL, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @cx25821_i2c_write(i32* %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %33 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %210

37:                                               ; preds = %1
  %38 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %39 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* @MON_A_CTRL, align 4
  %43 = call i32 @cx25821_i2c_read(i32* %41, i32 %42, i32* %5)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, -33
  store i32 %45, i32* %4, align 4
  %46 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %47 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* @MON_A_CTRL, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @cx25821_i2c_write(i32* %49, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %37
  %56 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %57 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %210

61:                                               ; preds = %37
  %62 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %63 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %78, %61
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @_num_decoders, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32*, i32** @_display_field_cnt, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @medusa_set_decoderduration(%struct.cx25821_dev* %70, i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %65

81:                                               ; preds = %65
  %82 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %83 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %82, i32 0, i32 1
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %86 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* @DENC_AB_CTRL, align 4
  %90 = call i32 @cx25821_i2c_read(i32* %88, i32 %89, i32* %5)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, -9371792
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = or i32 %93, 589832
  store i32 %94, i32* %4, align 4
  %95 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %96 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* @DENC_AB_CTRL, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @cx25821_i2c_write(i32* %98, i32 %99, i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %81
  %105 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %106 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %210

110:                                              ; preds = %81
  %111 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %112 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* @BYP_AB_CTRL, align 4
  %116 = call i32 @cx25821_i2c_read(i32* %114, i32 %115, i32* %5)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = or i32 %117, 262400
  store i32 %118, i32* %4, align 4
  %119 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %120 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* @BYP_AB_CTRL, align 4
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @cx25821_i2c_write(i32* %122, i32 %123, i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %110
  %129 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %130 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %129, i32 0, i32 1
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %210

134:                                              ; preds = %110
  %135 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %136 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* @AFE_AB_DIAG_CTRL, align 4
  %140 = call i32 @cx25821_i2c_read(i32* %138, i32 %139, i32* %5)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = and i32 %141, -2080374785
  store i32 %142, i32* %4, align 4
  %143 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %144 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* @AFE_AB_DIAG_CTRL, align 4
  %148 = load i32, i32* %4, align 4
  %149 = or i32 %148, 268435456
  %150 = call i32 @cx25821_i2c_write(i32* %146, i32 %147, i32 %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %134
  %154 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %155 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %154, i32 0, i32 1
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %210

159:                                              ; preds = %134
  %160 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %161 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* @PIN_OE_CTRL, align 4
  %165 = call i32 @cx25821_i2c_read(i32* %163, i32 %164, i32* %5)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = and i32 %166, -17760768
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* @_num_decoders, align 4
  %169 = load i32, i32* @MAX_DECODERS, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %159
  %172 = load i32, i32* %4, align 4
  %173 = or i32 %172, 16777720
  store i32 %173, i32* %4, align 4
  br label %177

174:                                              ; preds = %159
  %175 = load i32, i32* %4, align 4
  %176 = or i32 %175, 17760520
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i32, i32* %4, align 4
  %179 = or i32 %178, 7
  store i32 %179, i32* %4, align 4
  %180 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %181 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* @PIN_OE_CTRL, align 4
  %185 = load i32, i32* %4, align 4
  %186 = call i32 @cx25821_i2c_write(i32* %183, i32 %184, i32 %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %177
  %190 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %191 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %190, i32 0, i32 1
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %2, align 4
  br label %210

195:                                              ; preds = %177
  %196 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %197 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %196, i32 0, i32 1
  %198 = call i32 @mutex_unlock(i32* %197)
  %199 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %200 = call i32 @medusa_set_videostandard(%struct.cx25821_dev* %199)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %195
  %204 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %205 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %204, i32 0, i32 1
  %206 = call i32 @mutex_unlock(i32* %205)
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %2, align 4
  br label %210

209:                                              ; preds = %195
  store i32 1, i32* %2, align 4
  br label %210

210:                                              ; preds = %209, %203, %189, %153, %128, %104, %55, %31
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx25821_i2c_read(i32*, i32, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @medusa_set_decoderduration(%struct.cx25821_dev*, i32, i32) #1

declare dso_local i32 @medusa_set_videostandard(%struct.cx25821_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
