; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfGetWrapperSetting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfGetWrapperSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i8*, i64, i32, i64, i32, i64, i32, i64, i32, i64, i64, i32, i32, i8*, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i64, i32, i64*, %struct.TYPE_8__, i64, i8*, i8*, i64*, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64*, i32, i32, i32* }

@wd = common dso_local global %struct.TYPE_12__* null, align 8
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_ADHOCBAND_A = common dso_local global i64 0, align 8
@ZM_CH_A_36 = common dso_local global i32 0, align 4
@ZM_CH_G_6 = common dso_local global i32 0, align 4
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_NO_WEP = common dso_local global i32 0, align 4
@ZM_ADHOCBAND_G = common dso_local global i64 0, align 8
@ZM_ADHOCBAND_BG = common dso_local global i64 0, align 8
@ZM_ADHOCBAND_ABG = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@ZM_AUTH_MODE_WPA = common dso_local global i64 0, align 8
@ZM_AUTH_MODE_WPAPSK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfGetWrapperSetting(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @zmw_get_wlan_dev(i32* %5)
  %7 = call i32 (...) @zmw_declare_for_critical_section()
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @zmw_enter_critical_section(i32* %8)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  store i32 0, i32* %30, align 8
  br label %58

31:                                               ; preds = %1
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @zfChGetFirstChannel(i32* %32, i32* %3)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ZM_MODE_IBSS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %31
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ZM_ADHOCBAND_A, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @ZM_CH_A_36, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %56

52:                                               ; preds = %41
  %53 = load i32, i32* @ZM_CH_G_6, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %31
  br label %58

58:                                               ; preds = %57, %21
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %70 [
    i32 130, label %63
    i32 128, label %63
    i32 129, label %63
  ]

63:                                               ; preds = %58, %58, %58
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %73

70:                                               ; preds = %58
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  store i32 128, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 4
  store i32 0, i32* %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ZM_MODE_AP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %195

82:                                               ; preds = %73
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @zfwGetVapId(i32* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 65535
  br i1 %86, label %87, label %106

87:                                               ; preds = %82
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  store i64 %91, i64* %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 19
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %100, i32* %105, align 4
  br label %131

106:                                              ; preds = %82
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %114, i64 %117
  store i64 %110, i64* %118, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 19
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 %122, i32* %130, align 4
  br label %131

131:                                              ; preds = %106, %87
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 5
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* @ZM_NO_WEP, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 19
  store i32 %135, i32* %138, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = icmp sge i32 %142, 20
  br i1 %143, label %144, label %157

144:                                              ; preds = %131
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = icmp sle i32 %148, 1000
  br i1 %149, label %150, label %157

150:                                              ; preds = %144
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  br label %160

157:                                              ; preds = %144, %131
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 3
  store i32 100, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %150
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 7
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 4
  br label %177

174:                                              ; preds = %160
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 4
  store i32 1, i32* %176, align 4
  br label %177

177:                                              ; preds = %174, %166
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, 1
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  store i32 %182, i32* %185, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 8
  %190 = and i32 %189, 2
  %191 = ashr i32 %190, 1
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  store i32 %191, i32* %194, align 4
  br label %456

195:                                              ; preds = %73
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  store i64 %199, i64* %202, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 5
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 6
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  store i64 %206, i64* %209, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 18
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 14
  store i32 %213, i32* %216, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %195
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 5
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 8
  br label %232

229:                                              ; preds = %195
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 3
  store i32 100, i32* %231, align 8
  br label %232

232:                                              ; preds = %229, %222
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @ZM_MODE_IBSS, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %268

238:                                              ; preds = %232
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @ZM_ADHOCBAND_G, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %259, label %245

245:                                              ; preds = %238
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 5
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @ZM_ADHOCBAND_BG, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %259, label %252

252:                                              ; preds = %245
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 5
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @ZM_ADHOCBAND_ABG, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %252, %245, %238
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 7
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  store i32 1, i32* %262, align 8
  br label %267

263:                                              ; preds = %252
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 7
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  store i32 0, i32* %266, align 8
  br label %267

267:                                              ; preds = %263, %259
  br label %268

268:                                              ; preds = %267, %232
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 17
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %268
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 17
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 6
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 13
  store i64 %278, i64* %281, align 8
  br label %286

282:                                              ; preds = %268
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 6
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 13
  store i64 0, i64* %285, align 8
  br label %286

286:                                              ; preds = %282, %274
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 16
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 6
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 12
  store i32 %290, i32* %293, align 4
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 15
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 6
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 11
  store i32 %297, i32* %300, align 8
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 5
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 13
  %304 = load i8*, i8** %303, align 8
  %305 = icmp ne i8* %304, null
  br i1 %305, label %306, label %324

306:                                              ; preds = %286
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 6
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 10
  %310 = load i64*, i64** %309, align 8
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 5
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 14
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @zfMemoryCopy(i64* %310, i32 %314, i32 6)
  %316 = load i8*, i8** @TRUE, align 8
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 6
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 9
  store i8* %316, i8** %319, align 8
  %320 = load i8*, i8** @FALSE, align 8
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 5
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 13
  store i8* %320, i8** %323, align 8
  br label %329

324:                                              ; preds = %286
  %325 = load i8*, i8** @FALSE, align 8
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 6
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 9
  store i8* %325, i8** %328, align 8
  br label %329

329:                                              ; preds = %324, %306
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 5
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 9
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %432

335:                                              ; preds = %329
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 5
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 12
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 6
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 5
  %343 = load i64*, i64** %342, align 8
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 6
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @zfMemoryIsEqual(i32 %339, i64* %343, i32 %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %381

350:                                              ; preds = %335
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 5
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 9
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 6
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = sext i32 %358 to i64
  %360 = icmp ne i64 %354, %359
  br i1 %360, label %381, label %361

361:                                              ; preds = %350
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 6
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @ZM_AUTH_MODE_WPA, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %381, label %368

368:                                              ; preds = %361
  %369 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 6
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @ZM_AUTH_MODE_WPAPSK, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %381, label %375

375:                                              ; preds = %368
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 5
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i32 0, i32 10
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %431

381:                                              ; preds = %375, %368, %361, %350, %335
  %382 = load i8*, i8** @FALSE, align 8
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 6
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 8
  store i8* %382, i8** %385, align 8
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 6
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 7
  store i64 0, i64* %388, align 8
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 6
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 6
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 0
  store i64 0, i64* %392, align 8
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 5
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 9
  %396 = load i64, i64* %395, align 8
  %397 = trunc i64 %396 to i32
  %398 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 6
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 2
  store i32 %397, i32* %400, align 8
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 6
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 5
  %404 = load i64*, i64** %403, align 8
  %405 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 5
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 12
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 6
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = call i32 @zfMemoryCopy(i64* %404, i32 %408, i32 %412)
  %414 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 6
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = icmp slt i32 %417, 32
  br i1 %418, label %419, label %430

419:                                              ; preds = %381
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 6
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 5
  %423 = load i64*, i64** %422, align 8
  %424 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %425 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %424, i32 0, i32 6
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 8
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i64, i64* %423, i64 %428
  store i64 0, i64* %429, align 8
  br label %430

430:                                              ; preds = %419, %381
  br label %431

431:                                              ; preds = %430, %375
  br label %441

432:                                              ; preds = %329
  %433 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %434 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i32 0, i32 6
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 5
  %436 = load i64*, i64** %435, align 8
  %437 = getelementptr inbounds i64, i64* %436, i64 0
  store i64 0, i64* %437, align 8
  %438 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %439 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %438, i32 0, i32 6
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 2
  store i32 0, i32* %440, align 8
  br label %441

441:                                              ; preds = %432, %431
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 5
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 11
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %447 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %446, i32 0, i32 6
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i32 0, i32 4
  store i32 %445, i32* %448, align 8
  %449 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %450 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %449, i32 0, i32 5
  %451 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %450, i32 0, i32 10
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %454 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %453, i32 0, i32 6
  %455 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %454, i32 0, i32 3
  store i64 %452, i64* %455, align 8
  br label %456

456:                                              ; preds = %441, %177
  %457 = load i32*, i32** %2, align 8
  %458 = call i32 @zmw_leave_critical_section(i32* %457)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfChGetFirstChannel(i32*, i32*) #1

declare dso_local i32 @zfwGetVapId(i32*) #1

declare dso_local i32 @zfMemoryCopy(i64*, i32, i32) #1

declare dso_local i32 @zfMemoryIsEqual(i32, i64*, i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
