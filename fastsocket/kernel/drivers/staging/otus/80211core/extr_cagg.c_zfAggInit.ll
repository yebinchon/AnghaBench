; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggInit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__**, %struct.TYPE_9__**, i64, %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__*, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32**, i64*, i64* }
%struct.TYPE_13__ = type { i32 (i32*)* }
%struct.TYPE_14__ = type { i32 (i32*)* }

@wd = common dso_local global %struct.TYPE_12__* null, align 8
@ZM_MAX_STA_SUPPORT = common dso_local global i64 0, align 8
@ZM_AC = common dso_local global i64 0, align 8
@ZM_AGG_POOL_SIZE = common dso_local global i64 0, align 8
@ZM_AGG_BAW_SIZE = common dso_local global i64 0, align 8
@DESTQ = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@aggr_count = common dso_local global i64 0, align 8
@success_mpdu = common dso_local global i64 0, align 8
@total_mpdu = common dso_local global i64 0, align 8
@BAW = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfAggInit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @zmw_get_wlan_dev(i32* %5)
  %7 = call i32 (...) @zmw_declare_for_critical_section()
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @zmw_enter_critical_section(i32* %8)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %69, %1
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @ZM_MAX_STA_SUPPORT, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %18
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %65, %22
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @ZM_AC, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %23
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %27
  %66 = load i64, i64* %4, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %4, align 8
  br label %23

68:                                               ; preds = %23
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %3, align 8
  br label %18

72:                                               ; preds = %18
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  store i64 0, i64* %3, align 8
  br label %75

75:                                               ; preds = %230, %72
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* @ZM_AGG_POOL_SIZE, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %233

79:                                               ; preds = %75
  %80 = load i32*, i32** %2, align 8
  %81 = call i8* @zfwMemAllocate(i32* %80, i32 4)
  %82 = bitcast i8* %81 to %struct.TYPE_9__*
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %84, align 8
  %86 = load i64, i64* %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %85, i64 %86
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %89, align 8
  %91 = load i64, i64* %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %90, i64 %91
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = icmp ne %struct.TYPE_9__* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %79
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @zmw_leave_critical_section(i32* %96)
  br label %243

98:                                               ; preds = %79
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %100, align 8
  %102 = load i64, i64* %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %101, i64 %102
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %107, align 8
  %109 = load i64, i64* %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %108, i64 %109
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %114, align 8
  %116 = load i64, i64* %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %115, i64 %116
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %121, align 8
  %123 = load i64, i64* %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %122, i64 %123
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %128, align 8
  %130 = load i64, i64* %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %129, i64 %130
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 4
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %135, align 8
  %137 = load i64, i64* %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %136, i64 %137
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 5
  store i64 0, i64* %140, align 8
  %141 = load i32*, i32** %2, align 8
  %142 = call i8* @zfwMemAllocate(i32* %141, i32 4)
  %143 = bitcast i8* %142 to %struct.TYPE_11__*
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %145, align 8
  %147 = load i64, i64* %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %146, i64 %147
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %148, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %150, align 8
  %152 = load i64, i64* %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %151, i64 %152
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = icmp ne %struct.TYPE_11__* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %98
  %157 = load i32*, i32** %2, align 8
  %158 = call i32 @zmw_leave_critical_section(i32* %157)
  br label %243

159:                                              ; preds = %98
  %160 = load i64, i64* @ZM_MAX_STA_SUPPORT, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %162, align 8
  %164 = load i64, i64* %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %163, i64 %164
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  store i64 %160, i64* %167, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %169, align 8
  %171 = load i64, i64* %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %170, i64 %171
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 5
  store i64 0, i64* %174, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %176, align 8
  %178 = load i64, i64* %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %177, i64 %178
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 6
  store i64 0, i64* %181, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %183, align 8
  %185 = load i64, i64* %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %184, i64 %185
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 7
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %190, align 8
  %192 = load i64, i64* %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %191, i64 %192
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 3
  store i64 0, i64* %195, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %197, align 8
  %199 = load i64, i64* %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %198, i64 %199
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 4
  store i64 0, i64* %202, align 8
  store i64 0, i64* %4, align 8
  br label %203

203:                                              ; preds = %219, %159
  %204 = load i64, i64* %4, align 8
  %205 = load i64, i64* @ZM_AGG_BAW_SIZE, align 8
  %206 = icmp ule i64 %204, %205
  br i1 %206, label %207, label %222

207:                                              ; preds = %203
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %209, align 8
  %211 = load i64, i64* %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %210, i64 %211
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = load i64, i64* %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  store i64 0, i64* %218, align 8
  br label %219

219:                                              ; preds = %207
  %220 = load i64, i64* %4, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %4, align 8
  br label %203

222:                                              ; preds = %203
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %224, align 8
  %226 = load i64, i64* %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %225, i64 %226
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  store i64 0, i64* %229, align 8
  br label %230

230:                                              ; preds = %222
  %231 = load i64, i64* %3, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %3, align 8
  br label %75

233:                                              ; preds = %75
  %234 = load i32*, i32** %2, align 8
  %235 = call i32 @zmw_leave_critical_section(i32* %234)
  %236 = load i32*, i32** %2, align 8
  %237 = call i32 @zfAggTallyReset(i32* %236)
  store i32 (i32*)* @zfAggDestInit, i32 (i32*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @DESTQ, i32 0, i32 0), align 8
  %238 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @DESTQ, i32 0, i32 0), align 8
  %239 = load i32*, i32** %2, align 8
  %240 = call i32 %238(i32* %239)
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  store i32 1, i32* %242, align 8
  store i64 0, i64* @aggr_count, align 8
  store i64 0, i64* @success_mpdu, align 8
  store i64 0, i64* @total_mpdu, align 8
  br label %243

243:                                              ; preds = %233, %156, %95
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i8* @zfwMemAllocate(i32*, i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfAggTallyReset(i32*) #1

declare dso_local i32 @zfAggDestInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
