; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiWlanQueryBssListV1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiWlanQueryBssListV1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.zsBssInfo* }
%struct.zsBssInfo = type { i32*, i64*, i64, %struct.zsBssInfo* }
%struct.zsBssListV1 = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@wd = common dso_local global %struct.TYPE_8__* null, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfiWlanQueryBssListV1(i32* %0, %struct.zsBssListV1* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.zsBssListV1*, align 8
  %5 = alloca %struct.zsBssInfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i32], align 16
  store i32* %0, i32** %3, align 8
  store %struct.zsBssListV1* %1, %struct.zsBssListV1** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = call i32 (...) @zmw_declare_for_critical_section()
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @zmw_enter_critical_section(i32* %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.zsBssListV1*, %struct.zsBssListV1** %4, align 8
  %23 = getelementptr inbounds %struct.zsBssListV1, %struct.zsBssListV1* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.zsBssInfo*, %struct.zsBssInfo** %27, align 8
  store %struct.zsBssInfo* %28, %struct.zsBssInfo** %5, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %34 = call i32 @ZM_MAC_WORD_TO_BYTE(i32 %32, i32* %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %195, %2
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %198

43:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = call i64 @zfStaIsConnected(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %133

47:                                               ; preds = %43
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %133

53:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %72, %53
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 6
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %59 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %75

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %54

75:                                               ; preds = %70, %54
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 6
  br i1 %77, label %78, label %132

78:                                               ; preds = %75
  %79 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %80 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %83, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %78
  %90 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %91 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %132

96:                                               ; preds = %89, %78
  %97 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %98 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %96
  %105 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %106 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %117 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  store i64 %115, i64* %119, align 8
  br label %120

120:                                              ; preds = %111, %104
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %131

126:                                              ; preds = %120
  store i32 1, i32* %8, align 4
  %127 = load %struct.zsBssListV1*, %struct.zsBssListV1** %4, align 8
  %128 = getelementptr inbounds %struct.zsBssListV1, %struct.zsBssListV1* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %126, %123
  br label %132

132:                                              ; preds = %131, %96, %89, %75
  br label %133

133:                                              ; preds = %132, %47, %43
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %174

136:                                              ; preds = %133
  %137 = load %struct.zsBssListV1*, %struct.zsBssListV1** %4, align 8
  %138 = getelementptr inbounds %struct.zsBssListV1, %struct.zsBssListV1* %137, i32 0, i32 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = bitcast %struct.TYPE_5__* %142 to i32*
  %144 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %145 = bitcast %struct.zsBssInfo* %144 to i32*
  %146 = call i32 @zfMemoryCopy(i32* %143, i32* %145, i32 32)
  %147 = load i32, i32* %10, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %171

149:                                              ; preds = %136
  %150 = load %struct.zsBssListV1*, %struct.zsBssListV1** %4, align 8
  %151 = getelementptr inbounds %struct.zsBssListV1, %struct.zsBssListV1* %150, i32 0, i32 1
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @zfMemoryCopy(i32* %158, i32* %162, i32 %167)
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %171

171:                                              ; preds = %149, %136
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %171, %133
  %175 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %176 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %175, i32 0, i32 3
  %177 = load %struct.zsBssInfo*, %struct.zsBssInfo** %176, align 8
  %178 = icmp ne %struct.zsBssInfo* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %181 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %180, i32 0, i32 3
  %182 = load %struct.zsBssInfo*, %struct.zsBssInfo** %181, align 8
  store %struct.zsBssInfo* %182, %struct.zsBssInfo** %5, align 8
  br label %194

183:                                              ; preds = %174
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %189, 1
  %191 = icmp eq i32 %184, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @zm_assert(i32 %192)
  br label %194

194:                                              ; preds = %183, %179
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  br label %35

198:                                              ; preds = %35
  %199 = load i32*, i32** %3, align 8
  %200 = call i32 @zmw_leave_critical_section(i32* %199)
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 @zfScanMgrScanAck(i32* %201)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @ZM_MAC_WORD_TO_BYTE(i32, i32*) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32 @zfMemoryCopy(i32*, i32*, i32) #1

declare dso_local i32 @zm_assert(i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfScanMgrScanAck(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
