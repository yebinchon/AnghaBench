; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaIbssPSCheckState.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaIbssPSCheckState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i8*, i8* }

@wd = common dso_local global %struct.TYPE_8__* null, align 8
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A3_OFFSET = common dso_local global i32 0, align 4
@ZM_BIT_4 = common dso_local global i32 0, align 4
@ZM_MAX_PS_STA = common dso_local global i32 0, align 4
@ZM_WLAN_HEADER_A2_OFFSET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaIbssPSCheckState(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @zmw_get_wlan_dev(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @zfStaIsConnected(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %240

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ZM_MODE_IBSS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %240

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* @ZM_WLAN_HEADER_A3_OFFSET, align 4
  %29 = call i64 @zfRxBufferEqualToStr(i32* %21, i32* %22, i32* %27, i32 %28, i32 6)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %240

32:                                               ; preds = %20
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @zmw_rx_buf_readb(i32* %33, i32* %34, i32 1)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ZM_BIT_4, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %155

40:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %76, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @ZM_MAX_PS_STA, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %45
  br label %76

58:                                               ; preds = %45
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @ZM_WLAN_HEADER_A2_OFFSET, align 4
  %72 = call i64 @zfRxBufferEqualToStr(i32* %59, i32* %60, i32* %70, i32 %71, i32 6)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  br label %240

75:                                               ; preds = %58
  br label %76

76:                                               ; preds = %75, %57
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %41

79:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %80

80:                                               ; preds = %118, %79
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @ZM_MAX_PS_STA, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %121

84:                                               ; preds = %80
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %117, label %96

96:                                               ; preds = %84
  %97 = load i8*, i8** @TRUE, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  store i8* %97, i8** %106, align 8
  %107 = load i8*, i8** @FALSE, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i8* %107, i8** %116, align 8
  br label %121

117:                                              ; preds = %84
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %80

121:                                              ; preds = %96, %80
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @ZM_MAX_PS_STA, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %240

126:                                              ; preds = %121
  %127 = load i32*, i32** %3, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @ZM_WLAN_HEADER_A2_OFFSET, align 4
  %140 = call i32 @zfCopyFromRxBuffer(i32* %127, i32* %128, i32* %138, i32 %139, i32 6)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %126
  br label %148

148:                                              ; preds = %147, %126
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  br label %240

155:                                              ; preds = %32
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %239

162:                                              ; preds = %155
  store i32 1, i32* %5, align 4
  br label %163

163:                                              ; preds = %227, %162
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @ZM_MAX_PS_STA, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %230

167:                                              ; preds = %163
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %226

179:                                              ; preds = %167
  %180 = load i32*, i32** %3, align 8
  %181 = load i32*, i32** %4, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* @ZM_WLAN_HEADER_A2_OFFSET, align 4
  %193 = call i64 @zfRxBufferEqualToStr(i32* %180, i32* %181, i32* %191, i32 %192, i32 6)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %225

195:                                              ; preds = %179
  %196 = load i8*, i8** @FALSE, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  store i8* %196, i8** %205, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, -1
  store i64 %211, i64* %209, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  %221 = load i8*, i8** %220, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %224

223:                                              ; preds = %195
  br label %224

224:                                              ; preds = %223, %195
  br label %225

225:                                              ; preds = %224, %179
  br label %226

226:                                              ; preds = %225, %167
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %5, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %5, align 4
  br label %163

230:                                              ; preds = %163
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %230
  br label %238

238:                                              ; preds = %237, %230
  br label %239

239:                                              ; preds = %238, %155
  br label %240

240:                                              ; preds = %12, %19, %31, %74, %125, %239, %148
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfStaIsConnected(i32*) #1

declare dso_local i64 @zfRxBufferEqualToStr(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfCopyFromRxBuffer(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
