; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_alloc_tx_desc_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_alloc_tx_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"TX buffer allocation too large\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DMA buffer is not aligned\0A\00", align 1
@ENOMEM = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to allocate mem for buffer NP\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Unable to allocate mem for buffer LP\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Unable to allocate mem for buffer HP\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Unable to allocate mem for buffer BP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @alloc_tx_desc_ring(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.r8180_priv*, align 8
  %16 = alloca %struct.pci_dev*, align 8
  %17 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call i64 @ieee80211_priv(%struct.net_device* %18)
  %20 = inttoptr i64 %19 to %struct.r8180_priv*
  store %struct.r8180_priv* %20, %struct.r8180_priv** %15, align 8
  %21 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %22 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %21, i32 0, i32 21
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %16, align 8
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 4095
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = call i32 @DMESGE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i16 0, i16* %5, align 2
  br label %252

30:                                               ; preds = %4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 32, %33
  %35 = add i64 %34, 256
  %36 = trunc i64 %35 to i32
  %37 = call i64 @pci_alloc_consistent(%struct.pci_dev* %31, i32 %36, i32* %13)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i16 -1, i16* %5, align 2
  br label %252

42:                                               ; preds = %30
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %43, 255
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32*, i32** %11, align 8
  store i32* %49, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %197, %48
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %200

54:                                               ; preds = %50
  %55 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @pci_alloc_consistent(%struct.pci_dev* %55, i32 %56, i32* %14)
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %17, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i16, i16* @ENOMEM, align 2
  %63 = sext i16 %62 to i32
  %64 = sub nsw i32 0, %63
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %5, align 2
  br label %252

66:                                               ; preds = %54
  %67 = load i32, i32* %9, align 4
  switch i32 %67, label %166 [
    i32 130, label %68
    i32 132, label %82
    i32 133, label %96
    i32 129, label %110
    i32 128, label %124
    i32 131, label %138
    i32 134, label %152
  ]

68:                                               ; preds = %66
  %69 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %70 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %69, i32 0, i32 20
  %71 = load i8*, i8** %17, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @buffer_add(i32* %70, i8* %71, i32 %72, i32* null)
  %74 = icmp eq i32 -1, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = call i32 @DMESGE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i16, i16* @ENOMEM, align 2
  %78 = sext i16 %77 to i32
  %79 = sub nsw i32 0, %78
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %5, align 2
  br label %252

81:                                               ; preds = %68
  br label %166

82:                                               ; preds = %66
  %83 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %84 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %83, i32 0, i32 19
  %85 = load i8*, i8** %17, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @buffer_add(i32* %84, i8* %85, i32 %86, i32* null)
  %88 = icmp eq i32 -1, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = call i32 @DMESGE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i16, i16* @ENOMEM, align 2
  %92 = sext i16 %91 to i32
  %93 = sub nsw i32 0, %92
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %5, align 2
  br label %252

95:                                               ; preds = %82
  br label %166

96:                                               ; preds = %66
  %97 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %98 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %97, i32 0, i32 18
  %99 = load i8*, i8** %17, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @buffer_add(i32* %98, i8* %99, i32 %100, i32* null)
  %102 = icmp eq i32 -1, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = call i32 @DMESGE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i16, i16* @ENOMEM, align 2
  %106 = sext i16 %105 to i32
  %107 = sub nsw i32 0, %106
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %5, align 2
  br label %252

109:                                              ; preds = %96
  br label %166

110:                                              ; preds = %66
  %111 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %112 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %111, i32 0, i32 17
  %113 = load i8*, i8** %17, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @buffer_add(i32* %112, i8* %113, i32 %114, i32* null)
  %116 = icmp eq i32 -1, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = call i32 @DMESGE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i16, i16* @ENOMEM, align 2
  %120 = sext i16 %119 to i32
  %121 = sub nsw i32 0, %120
  %122 = trunc i32 %121 to i16
  store i16 %122, i16* %5, align 2
  br label %252

123:                                              ; preds = %110
  br label %166

124:                                              ; preds = %66
  %125 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %126 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %125, i32 0, i32 16
  %127 = load i8*, i8** %17, align 8
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @buffer_add(i32* %126, i8* %127, i32 %128, i32* null)
  %130 = icmp eq i32 -1, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = call i32 @DMESGE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i16, i16* @ENOMEM, align 2
  %134 = sext i16 %133 to i32
  %135 = sub nsw i32 0, %134
  %136 = trunc i32 %135 to i16
  store i16 %136, i16* %5, align 2
  br label %252

137:                                              ; preds = %124
  br label %166

138:                                              ; preds = %66
  %139 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %140 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %139, i32 0, i32 15
  %141 = load i8*, i8** %17, align 8
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @buffer_add(i32* %140, i8* %141, i32 %142, i32* null)
  %144 = icmp eq i32 -1, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = call i32 @DMESGE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %147 = load i16, i16* @ENOMEM, align 2
  %148 = sext i16 %147 to i32
  %149 = sub nsw i32 0, %148
  %150 = trunc i32 %149 to i16
  store i16 %150, i16* %5, align 2
  br label %252

151:                                              ; preds = %138
  br label %166

152:                                              ; preds = %66
  %153 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %154 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %153, i32 0, i32 14
  %155 = load i8*, i8** %17, align 8
  %156 = load i32, i32* %14, align 4
  %157 = call i32 @buffer_add(i32* %154, i8* %155, i32 %156, i32* null)
  %158 = icmp eq i32 -1, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %152
  %160 = call i32 @DMESGE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %161 = load i16, i16* @ENOMEM, align 2
  %162 = sext i16 %161 to i32
  %163 = sub nsw i32 0, %162
  %164 = trunc i32 %163 to i16
  store i16 %164, i16* %5, align 2
  br label %252

165:                                              ; preds = %152
  br label %166

166:                                              ; preds = %66, %165, %151, %137, %123, %109, %95, %81
  %167 = load i32*, i32** %12, align 8
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 2147483647
  %170 = load i32*, i32** %12, align 8
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32*, i32** %12, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32*, i32** %12, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 3
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  %179 = load i32, i32* %8, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %166
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  %185 = mul nsw i32 %184, 8
  %186 = mul nsw i32 %185, 4
  %187 = add nsw i32 %182, %186
  %188 = load i32*, i32** %12, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 4
  store i32 %187, i32* %189, align 4
  br label %194

190:                                              ; preds = %166
  %191 = load i32, i32* %13, align 4
  %192 = load i32*, i32** %12, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 4
  store i32 %191, i32* %193, align 4
  br label %194

194:                                              ; preds = %190, %181
  %195 = load i32*, i32** %12, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 8
  store i32* %196, i32** %12, align 8
  br label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %10, align 4
  br label %50

200:                                              ; preds = %50
  %201 = load i32, i32* %9, align 4
  switch i32 %201, label %251 [
    i32 130, label %202
    i32 132, label %209
    i32 133, label %216
    i32 129, label %223
    i32 128, label %230
    i32 131, label %237
    i32 134, label %244
  ]

202:                                              ; preds = %200
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %205 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load i32*, i32** %11, align 8
  %207 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %208 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %207, i32 0, i32 1
  store i32* %206, i32** %208, align 8
  br label %251

209:                                              ; preds = %200
  %210 = load i32, i32* %13, align 4
  %211 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %212 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load i32*, i32** %11, align 8
  %214 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %215 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %214, i32 0, i32 3
  store i32* %213, i32** %215, align 8
  br label %251

216:                                              ; preds = %200
  %217 = load i32, i32* %13, align 4
  %218 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %219 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %218, i32 0, i32 4
  store i32 %217, i32* %219, align 8
  %220 = load i32*, i32** %11, align 8
  %221 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %222 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %221, i32 0, i32 5
  store i32* %220, i32** %222, align 8
  br label %251

223:                                              ; preds = %200
  %224 = load i32, i32* %13, align 4
  %225 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %226 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %225, i32 0, i32 6
  store i32 %224, i32* %226, align 8
  %227 = load i32*, i32** %11, align 8
  %228 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %229 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %228, i32 0, i32 7
  store i32* %227, i32** %229, align 8
  br label %251

230:                                              ; preds = %200
  %231 = load i32, i32* %13, align 4
  %232 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %233 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %232, i32 0, i32 8
  store i32 %231, i32* %233, align 8
  %234 = load i32*, i32** %11, align 8
  %235 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %236 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %235, i32 0, i32 9
  store i32* %234, i32** %236, align 8
  br label %251

237:                                              ; preds = %200
  %238 = load i32, i32* %13, align 4
  %239 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %240 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %239, i32 0, i32 10
  store i32 %238, i32* %240, align 8
  %241 = load i32*, i32** %11, align 8
  %242 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %243 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %242, i32 0, i32 11
  store i32* %241, i32** %243, align 8
  br label %251

244:                                              ; preds = %200
  %245 = load i32, i32* %13, align 4
  %246 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %247 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %246, i32 0, i32 12
  store i32 %245, i32* %247, align 8
  %248 = load i32*, i32** %11, align 8
  %249 = load %struct.r8180_priv*, %struct.r8180_priv** %15, align 8
  %250 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %249, i32 0, i32 13
  store i32* %248, i32** %250, align 8
  br label %251

251:                                              ; preds = %200, %244, %237, %230, %223, %216, %209, %202
  store i16 0, i16* %5, align 2
  br label %252

252:                                              ; preds = %251, %159, %145, %131, %117, %103, %89, %75, %61, %41, %28
  %253 = load i16, i16* %5, align 2
  ret i16 %253
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @DMESGE(i8*) #1

declare dso_local i64 @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @buffer_add(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
