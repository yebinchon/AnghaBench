; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_set_capture_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_set_capture_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }

@GOF_PER_SEC = common dso_local global i32 0, align 4
@BA1_CSRC = common dso_local global i64 0, align 8
@BA1_CCI = common dso_local global i64 0, align 8
@BA1_CD = common dso_local global i64 0, align 8
@BA1_VARIDEC_BUF_1 = common dso_local global i32 0, align 4
@BA1_CPI = common dso_local global i64 0, align 8
@BA1_CFG1 = common dso_local global i64 0, align 8
@BA1_CFG2 = common dso_local global i64 0, align 8
@BA1_CCST = common dso_local global i64 0, align 8
@BA1_CSPB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*, i32)* @snd_cs46xx_set_capture_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs46xx_set_capture_sample_rate(%struct.snd_cs46xx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = mul i32 %15, 9
  %17 = icmp ult i32 %16, 48000
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 5333, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ugt i32 %20, 48000
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 48000, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 16
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = udiv i32 %26, 48000
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul i32 %28, 48000
  %30 = load i32, i32* %8, align 4
  %31 = sub i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, 7
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 7
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = udiv i32 %36, 48000
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = xor i32 %40, -1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  store i32 -1149239296, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = udiv i32 %44, %45
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = mul i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = sub i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 10
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 %54, 10
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %4, align 4
  %58 = udiv i32 %56, %57
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %4, align 4
  %64 = mul i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = sub i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @GOF_PER_SEC, align 4
  %69 = udiv i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @GOF_PER_SEC, align 4
  %72 = mul i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = sub i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add i32 1152000, %76
  %78 = sub i32 %77, 1
  %79 = load i32, i32* %4, align 4
  %80 = udiv i32 %78, %79
  store i32 %80, i32* %12, align 4
  %81 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %82 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %81, i32 0, i32 0
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %86 = load i64, i64* @BA1_CSRC, align 8
  %87 = load i32, i32* %11, align 4
  %88 = shl i32 %87, 16
  %89 = and i32 %88, -65536
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, 65535
  %92 = or i32 %89, %91
  %93 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %85, i64 %86, i32 %92)
  %94 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %95 = load i64, i64* @BA1_CCI, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %94, i64 %95, i32 %96)
  %98 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %99 = load i64, i64* @BA1_CD, align 8
  %100 = load i32, i32* @BA1_VARIDEC_BUF_1, align 4
  %101 = load i32, i32* %12, align 4
  %102 = shl i32 %101, 2
  %103 = add i32 %100, %102
  %104 = shl i32 %103, 16
  %105 = and i32 %104, -65536
  %106 = or i32 %105, 128
  %107 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %98, i64 %99, i32 %106)
  %108 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %109 = load i64, i64* @BA1_CPI, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %108, i64 %109, i32 %110)
  %112 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %113 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %112, i32 0, i32 0
  %114 = load i64, i64* %5, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  store i32 1, i32* %13, align 4
  store i32 2, i32* %14, align 4
  br label %116

116:                                              ; preds = %131, %23
  %117 = load i32, i32* %14, align 4
  %118 = icmp ule i32 %117, 64
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %14, align 4
  %122 = udiv i32 %120, %121
  %123 = load i32, i32* %14, align 4
  %124 = mul i32 %122, %123
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, i32* %13, align 4
  %129 = mul i32 %128, 2
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %127, %119
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %14, align 4
  %133 = mul i32 %132, 2
  store i32 %133, i32* %14, align 4
  br label %116

134:                                              ; preds = %116
  %135 = load i32, i32* %4, align 4
  %136 = udiv i32 %135, 3
  %137 = mul i32 %136, 3
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* %13, align 4
  %142 = mul i32 %141, 3
  store i32 %142, i32* %13, align 4
  br label %143

143:                                              ; preds = %140, %134
  store i32 5, i32* %14, align 4
  br label %144

144:                                              ; preds = %159, %143
  %145 = load i32, i32* %14, align 4
  %146 = icmp ule i32 %145, 125
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %14, align 4
  %150 = udiv i32 %148, %149
  %151 = load i32, i32* %14, align 4
  %152 = mul i32 %150, %151
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* %13, align 4
  %157 = mul i32 %156, 5
  store i32 %157, i32* %13, align 4
  br label %158

158:                                              ; preds = %155, %147
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %14, align 4
  %161 = mul i32 %160, 5
  store i32 %161, i32* %14, align 4
  br label %144

162:                                              ; preds = %144
  %163 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %164 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %163, i32 0, i32 0
  %165 = load i64, i64* %5, align 8
  %166 = call i32 @spin_lock_irqsave(i32* %164, i64 %165)
  %167 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %168 = load i64, i64* @BA1_CFG1, align 8
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %167, i64 %168, i32 %169)
  %171 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %172 = load i64, i64* @BA1_CFG2, align 8
  %173 = load i32, i32* %13, align 4
  %174 = or i32 8388608, %173
  %175 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %171, i64 %172, i32 %174)
  %176 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %177 = load i64, i64* @BA1_CCST, align 8
  %178 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %176, i64 %177, i32 65535)
  %179 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %180 = load i64, i64* @BA1_CSPB, align 8
  %181 = load i32, i32* %4, align 4
  %182 = mul i32 65536, %181
  %183 = udiv i32 %182, 24000
  %184 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %179, i64 %180, i32 %183)
  %185 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %186 = load i64, i64* @BA1_CSPB, align 8
  %187 = add nsw i64 %186, 4
  %188 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %185, i64 %187, i32 65535)
  %189 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %190 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %189, i32 0, i32 0
  %191 = load i64, i64* %5, align 8
  %192 = call i32 @spin_unlock_irqrestore(i32* %190, i64 %191)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
