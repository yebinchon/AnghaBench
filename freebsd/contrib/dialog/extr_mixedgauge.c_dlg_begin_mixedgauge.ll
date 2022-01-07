; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_mixedgauge.c_dlg_begin_mixedgauge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_mixedgauge.c_dlg_begin_mixedgauge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@DIALOG_LISTITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"dialog_mixedgauge\00", align 1
@MIN_HIGH = common dso_local global i64 0, align 8
@MIN_WIDE = common dso_local global i32 0, align 4
@GUTTER = common dso_local global i32 0, align 4
@MARGIN = common dso_local global i32 0, align 4
@dialog_attr = common dso_local global i32 0, align 4
@border_attr = common dso_local global i32 0, align 4
@border2_attr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i8*, i8*, i32, i32, i32, i8**)* @dlg_begin_mixedgauge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlg_begin_mixedgauge(%struct.TYPE_6__* %0, i32* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i8** %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8** %7, i8*** %16, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %141, label %24

24:                                               ; preds = %8
  %25 = call i32 @curs_set(i32 0)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = call i32 @memset(%struct.TYPE_6__* %26, i32 0, i32 72)
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i64* @clean_copy(i8* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i64* %32, i64** %34, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i32 %35, i32* %39, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  store i32 %40, i32* %44, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @DIALOG_LISTITEM, align 4
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = call %struct.TYPE_7__* @dlg_calloc(i32 %48, i64 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 13
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 13
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = call i32 @assert_ptr(%struct.TYPE_7__* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 7
  store i32 0, i32* %59, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 8
  store i32 15, i32* %61, align 8
  store i32 0, i32* %17, align 4
  br label %62

62:                                               ; preds = %99, %24
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %102

66:                                               ; preds = %62
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @ItemName(i32 %67)
  %69 = call i64 @strlen(i32 %68)
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %20, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %20, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load i32, i32* %20, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %66
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @ItemName(i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 13
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i32 %82, i32* %89, align 4
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @ItemText(i32 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 13
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 %91, i32* %98, align 4
  br label %99

99:                                               ; preds = %80
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %17, align 4
  br label %62

102:                                              ; preds = %62
  %103 = load i64, i64* @MIN_HIGH, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 12
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* @MIN_WIDE, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = load i32, i32* @GUTTER, align 4
  %115 = add nsw i32 %113, %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %115, %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 9
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = icmp ne i64* %124, null
  br i1 %125, label %126, label %140

126:                                              ; preds = %102
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load i32, i32* @MARGIN, align 4
  %134 = mul nsw i32 2, %133
  %135 = sext i32 %134 to i64
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 12
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, %135
  store i64 %139, i64* %137, align 8
  br label %140

140:                                              ; preds = %132, %126, %102
  br label %141

141:                                              ; preds = %140, %8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 12
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dlg_auto_size(i8* %144, i64* %147, i32* %149, i32* %151, i64 %154, i32 %157)
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @dlg_print_size(i32 %161, i32 %164)
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @dlg_ctl_size(i32 %168, i32 %171)
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @dlg_box_x_ordinate(i32 %175)
  store i32 %176, i32* %19, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @dlg_box_y_ordinate(i32 %179)
  store i32 %180, i32* %18, align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %18, align 4
  %188 = load i32, i32* %19, align 4
  %189 = call i32 @dlg_new_window(i32 %183, i32 %186, i32 %187, i32 %188)
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 10
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 10
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @werase(i32 %194)
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 10
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @dialog_attr, align 4
  %206 = load i32, i32* @border_attr, align 4
  %207 = load i32, i32* @border2_attr, align 4
  %208 = call i32 @dlg_draw_box2(i32 %198, i32 0, i32 0, i32 %201, i32 %204, i32 %205, i32 %206, i32 %207)
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @dlg_draw_title(i32 %211, i8* %214)
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 10
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @FALSE, align 4
  %220 = call i32 @dlg_draw_helpline(i32 %218, i32 %219)
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i64*, i64** %222, align 8
  %224 = icmp ne i64* %223, null
  br i1 %224, label %225, label %288

225:                                              ; preds = %141
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load i64*, i64** %227, align 8
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %288

231:                                              ; preds = %225
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 10
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = call i64 @wmove(i32 %234, i32 %237, i32 0)
  %239 = load i64, i64* @ERR, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %288

241:                                              ; preds = %231
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 10
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 8
  %251 = sub nsw i32 %247, %250
  %252 = load i32, i32* @MARGIN, align 4
  %253 = mul nsw i32 2, %252
  %254 = sub nsw i32 %251, %253
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %18, align 4
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = add nsw i32 %258, %261
  %263 = load i32, i32* @MARGIN, align 4
  %264 = mul nsw i32 2, %263
  %265 = add nsw i32 %262, %264
  %266 = load i32, i32* %19, align 4
  %267 = call i32 @dlg_sub_window(i32 %244, i32 %254, i32 %257, i32 %265, i32 %266)
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 11
  store i32 %267, i32* %269, align 4
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 11
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @dialog_attr, align 4
  %274 = call i32 @dlg_attrset(i32 %272, i32 %273)
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 11
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 1
  %280 = load i64*, i64** %279, align 8
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @dlg_print_autowrap(i32 %277, i64* %280, i32 %283, i32 %286)
  br label %288

288:                                              ; preds = %241, %231, %225, %141
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 10
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = sub nsw i32 %294, 4
  %296 = load i32, i32* @MARGIN, align 4
  %297 = add nsw i32 2, %296
  %298 = load i32, i32* @MARGIN, align 4
  %299 = add nsw i32 2, %298
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @MARGIN, align 4
  %304 = add nsw i32 2, %303
  %305 = mul nsw i32 2, %304
  %306 = sub nsw i32 %302, %305
  %307 = load i32, i32* @dialog_attr, align 4
  %308 = load i32, i32* @border_attr, align 4
  %309 = call i32 @mydraw_mixed_box(i32 %291, i32 %295, i32 %297, i32 %299, i32 %306, i32 %307, i32 %308)
  %310 = load i32*, i32** %10, align 8
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %310, align 4
  ret void
}

declare dso_local i32 @curs_set(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64* @clean_copy(i8*) #1

declare dso_local %struct.TYPE_7__* @dlg_calloc(i32, i64) #1

declare dso_local i32 @assert_ptr(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @ItemName(i32) #1

declare dso_local i32 @ItemText(i32) #1

declare dso_local i32 @dlg_auto_size(i8*, i64*, i32*, i32*, i64, i32) #1

declare dso_local i32 @dlg_print_size(i32, i32) #1

declare dso_local i32 @dlg_ctl_size(i32, i32) #1

declare dso_local i32 @dlg_box_x_ordinate(i32) #1

declare dso_local i32 @dlg_box_y_ordinate(i32) #1

declare dso_local i32 @dlg_new_window(i32, i32, i32, i32) #1

declare dso_local i32 @werase(i32) #1

declare dso_local i32 @dlg_draw_box2(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlg_draw_title(i32, i8*) #1

declare dso_local i32 @dlg_draw_helpline(i32, i32) #1

declare dso_local i64 @wmove(i32, i32, i32) #1

declare dso_local i32 @dlg_sub_window(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dlg_attrset(i32, i32) #1

declare dso_local i32 @dlg_print_autowrap(i32, i64*, i32, i32) #1

declare dso_local i32 @mydraw_mixed_box(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
