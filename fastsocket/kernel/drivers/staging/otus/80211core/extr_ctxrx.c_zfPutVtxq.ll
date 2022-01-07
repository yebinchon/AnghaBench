; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfPutVtxq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfPutVtxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32*, i32*)*, i64, i64, i32*, i32*, i32*, %struct.TYPE_5__, i32***, %struct.TYPE_4__, %struct.aggTally }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64 }
%struct.aggTally = type { i32 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@zcUpToAc = common dso_local global i32* null, align 8
@ZM_VTXQ_SIZE_MASK = common dso_local global i32 0, align 4
@ZM_VTXQ_SIZE = common dso_local global i32 0, align 4
@ZM_SUCCESS = common dso_local global i64 0, align 8
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Packet discarded, first ip frag, ac=\00", align 1
@ZM_ERR_EXCEED_PRIORITY_THRESHOLD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Packet discarded, ip frag, ac=\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Packet discarded, VTXQ full, ac=\00", align 1
@ZM_ERR_TX_BUFFER_UNAVAILABLE = common dso_local global i64 0, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_MODE_PSEUDO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfPutVtxq(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = call i32 (...) @zmw_declare_for_critical_section()
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @zfTxGetIpTosAndFrag(i32* %12, i32* %13, i32* %7, i64* %8)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %16, align 8
  %18 = icmp ne i32 (i32*, i32*)* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %21, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 %22(i32* %23, i32* %24)
  store i32 %25, i32* %6, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load i32*, i32** @zcUpToAc, align 8
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 3
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %26, %19
  %35 = load i64, i64* %8, align 8
  %36 = and i64 %35, 65343
  %37 = icmp eq i64 %36, 32
  br i1 %37, label %38, label %105

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @zmw_enter_critical_section(i32* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %47, %54
  %56 = load i32, i32* @ZM_VTXQ_SIZE_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @ZM_VTXQ_SIZE, align 4
  %59 = sub nsw i32 %58, 20
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %38
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 1, i32* %67, align 4
  br label %75

68:                                               ; preds = %38
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @zmw_leave_critical_section(i32* %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %104

86:                                               ; preds = %75
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = load i64, i64* @ZM_SUCCESS, align 8
  %99 = call i32 @zfwBufFree(i32* %96, i32* %97, i64 %98)
  %100 = load i32, i32* @ZM_LV_1, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @zm_msg1_tx(i32 %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i64, i64* @ZM_ERR_EXCEED_PRIORITY_THRESHOLD, align 8
  store i64 %103, i64* %3, align 8
  br label %226

104:                                              ; preds = %75
  br label %117

105:                                              ; preds = %34
  %106 = load i64, i64* %8, align 8
  %107 = and i64 %106, 65343
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %109, %105
  br label %117

117:                                              ; preds = %116, %104
  %118 = load i64, i64* %8, align 8
  %119 = and i64 %118, 65311
  store i64 %119, i64* %8, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %148

121:                                              ; preds = %117
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %148

130:                                              ; preds = %121
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load i32*, i32** %4, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = load i64, i64* @ZM_SUCCESS, align 8
  %143 = call i32 @zfwBufFree(i32* %140, i32* %141, i64 %142)
  %144 = load i32, i32* @ZM_LV_1, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @zm_msg1_tx(i32 %144, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load i64, i64* @ZM_ERR_EXCEED_PRIORITY_THRESHOLD, align 8
  store i64 %147, i64* %3, align 8
  br label %226

148:                                              ; preds = %121, %117
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 @zmw_enter_critical_section(i32* %149)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  %159 = load i32, i32* @ZM_VTXQ_SIZE_MASK, align 4
  %160 = and i32 %158, %159
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %160, %167
  br i1 %168, label %169, label %206

169:                                              ; preds = %148
  %170 = load i32*, i32** %5, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 7
  %173 = load i32***, i32**** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32**, i32*** %173, i64 %175
  %177 = load i32**, i32*** %176, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %177, i64 %185
  store i32* %170, i32** %186, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  %195 = load i32, i32* @ZM_VTXQ_SIZE_MASK, align 4
  %196 = and i32 %194, %195
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %196, i32* %202, align 4
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 @zmw_leave_critical_section(i32* %203)
  %205 = load i64, i64* @ZM_SUCCESS, align 8
  store i64 %205, i64* %3, align 8
  br label %226

206:                                              ; preds = %148
  %207 = load i32*, i32** %4, align 8
  %208 = call i32 @zmw_leave_critical_section(i32* %207)
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 6
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  %218 = load i32*, i32** %4, align 8
  %219 = load i32*, i32** %5, align 8
  %220 = load i64, i64* @ZM_SUCCESS, align 8
  %221 = call i32 @zfwBufFree(i32* %218, i32* %219, i64 %220)
  %222 = load i32, i32* @ZM_LV_1, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @zm_msg1_tx(i32 %222, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %223)
  %225 = load i64, i64* @ZM_ERR_EXCEED_PRIORITY_THRESHOLD, align 8
  store i64 %225, i64* %3, align 8
  br label %226

226:                                              ; preds = %206, %169, %130, %86
  %227 = load i64, i64* %3, align 8
  ret i64 %227
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zfTxGetIpTosAndFrag(i32*, i32*, i32*, i64*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i64) #1

declare dso_local i32 @zm_msg1_tx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
