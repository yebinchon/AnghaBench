; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_mds.c_Mds_HeaderCopy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_mds.c_Mds_HeaderCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsoft_priv = type { %struct.wb35_mds }
%struct.wb35_mds = type { i32** }
%struct.wb35_descriptor = type { i32**, i64, i32, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i64 }

@CURRENT_FRAGMENT_THRESHOLD = common dso_local global i32 0, align 4
@DEFAULT_FRAGMENT_THRESHOLD = common dso_local global i32 0, align 4
@DOT_11_MAC_HEADER_SIZE = common dso_local global i32 0, align 4
@CURRENT_TX_RATE_FOR_MNG = common dso_local global i32 0, align 4
@WLAN_PREAMBLE_TYPE_LONG = common dso_local global i32 0, align 4
@CURRENT_PREAMBLE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsoft_priv*, %struct.wb35_descriptor*, i32*)* @Mds_HeaderCopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Mds_HeaderCopy(%struct.wbsoft_priv* %0, %struct.wb35_descriptor* %1, i32* %2) #0 {
  %4 = alloca %struct.wbsoft_priv*, align 8
  %5 = alloca %struct.wb35_descriptor*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wb35_mds*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wbsoft_priv* %0, %struct.wbsoft_priv** %4, align 8
  store %struct.wb35_descriptor* %1, %struct.wb35_descriptor** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %4, align 8
  %18 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %17, i32 0, i32 0
  store %struct.wb35_mds* %18, %struct.wb35_mds** %7, align 8
  %19 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %20 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  %24 = load i32, i32* @CURRENT_FRAGMENT_THRESHOLD, align 4
  store i32 %24, i32* %16, align 4
  %25 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %26 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %9, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = bitcast i32* %32 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %10, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32* %35, i32** %6, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %41 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 24, i32* %46, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @DEFAULT_FRAGMENT_THRESHOLD, align 4
  store i32 %51, i32* %16, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @DOT_11_MAC_HEADER_SIZE, align 4
  %55 = call i32 @memcpy(i32* %52, i32* %53, i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* @DOT_11_MAC_HEADER_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %61 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  store i32* %59, i32** %63, align 8
  %64 = load i32, i32* @DOT_11_MAC_HEADER_SIZE, align 4
  %65 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %66 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %70 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %73 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @DOT_11_MAC_HEADER_SIZE, align 4
  %77 = add nsw i32 %76, 4
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %82 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, 4
  store i32 %86, i32* %84, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 30
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* @CURRENT_TX_RATE_FOR_MNG, align 4
  store i32 %90, i32* %15, align 4
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %93 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %13, align 4
  %95 = srem i32 %94, 3
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %188, %3
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %191

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %107, %104
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.wb35_mds*, %struct.wb35_mds** %7, align 8
  %112 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %111, i32 0, i32 0
  %113 = load i32**, i32*** %112, align 8
  %114 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %115 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32*, i32** %113, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %110, i32* %121, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp eq i32 %122, 108
  br i1 %123, label %124, label %125

124:                                              ; preds = %109
  store i32 7, i32* %14, align 4
  br label %176

125:                                              ; preds = %109
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, 96
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 6, i32* %14, align 4
  br label %175

129:                                              ; preds = %125
  %130 = load i32, i32* %13, align 4
  %131 = icmp eq i32 %130, 72
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 5, i32* %14, align 4
  br label %174

133:                                              ; preds = %129
  %134 = load i32, i32* %13, align 4
  %135 = icmp eq i32 %134, 48
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 4, i32* %14, align 4
  br label %173

137:                                              ; preds = %133
  %138 = load i32, i32* %13, align 4
  %139 = icmp eq i32 %138, 36
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 3, i32* %14, align 4
  br label %172

141:                                              ; preds = %137
  %142 = load i32, i32* %13, align 4
  %143 = icmp eq i32 %142, 24
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 2, i32* %14, align 4
  br label %171

145:                                              ; preds = %141
  %146 = load i32, i32* %13, align 4
  %147 = icmp eq i32 %146, 18
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 1, i32* %14, align 4
  br label %170

149:                                              ; preds = %145
  %150 = load i32, i32* %13, align 4
  %151 = icmp eq i32 %150, 12
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 0, i32* %14, align 4
  br label %169

153:                                              ; preds = %149
  %154 = load i32, i32* %13, align 4
  %155 = icmp eq i32 %154, 22
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 3, i32* %14, align 4
  br label %168

157:                                              ; preds = %153
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, 11
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 2, i32* %14, align 4
  br label %167

161:                                              ; preds = %157
  %162 = load i32, i32* %13, align 4
  %163 = icmp eq i32 %162, 4
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 1, i32* %14, align 4
  br label %166

165:                                              ; preds = %161
  store i32 0, i32* %14, align 4
  br label %166

166:                                              ; preds = %165, %164
  br label %167

167:                                              ; preds = %166, %160
  br label %168

168:                                              ; preds = %167, %156
  br label %169

169:                                              ; preds = %168, %152
  br label %170

170:                                              ; preds = %169, %148
  br label %171

171:                                              ; preds = %170, %144
  br label %172

172:                                              ; preds = %171, %140
  br label %173

173:                                              ; preds = %172, %136
  br label %174

174:                                              ; preds = %173, %132
  br label %175

175:                                              ; preds = %174, %128
  br label %176

176:                                              ; preds = %175, %124
  %177 = load i32, i32* %12, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32, i32* %14, align 4
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  br label %187

183:                                              ; preds = %176
  %184 = load i32, i32* %14, align 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %183, %179
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %101

191:                                              ; preds = %101
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %191
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load i32, i32* @WLAN_PREAMBLE_TYPE_LONG, align 4
  %203 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %204 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  br label %209

205:                                              ; preds = %196, %191
  %206 = load i32, i32* @CURRENT_PREAMBLE_MODE, align 4
  %207 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %208 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %205, %201
  %210 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %211 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
