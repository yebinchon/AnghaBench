; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_dialog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.bin_dialogex = type { %struct.bin_dialogex*, %struct.bin_dialogex*, %struct.bin_dialogex*, %struct.bin_dialogex*, %struct.bin_dialogex*, %struct.bin_dialogex*, %struct.bin_dialogex*, %struct.bin_dialogex*, %struct.bin_dialogex*, i32, i32, %struct.bin_dialogex*, %struct.bin_dialogex*, %struct.bin_dialogex*, %struct.bin_dialogex* }
%struct.bin_dialog = type { %struct.bin_dialog*, %struct.bin_dialog*, %struct.bin_dialog*, %struct.bin_dialog*, %struct.bin_dialog*, %struct.bin_dialog*, %struct.bin_dialog*, %struct.bin_dialog*, %struct.bin_dialog*, i32, i32, %struct.bin_dialog*, %struct.bin_dialog*, %struct.bin_dialog*, %struct.bin_dialog* }
%struct.bin_dialogfont = type { %struct.bin_dialogfont*, %struct.bin_dialogfont*, %struct.bin_dialogfont*, %struct.bin_dialogfont*, %struct.bin_dialogfont*, %struct.bin_dialogfont*, %struct.bin_dialogfont*, %struct.bin_dialogfont*, %struct.bin_dialogfont*, i32, i32, %struct.bin_dialogfont*, %struct.bin_dialogfont*, %struct.bin_dialogfont*, %struct.bin_dialogfont* }
%struct.bin_dialogexfont = type { %struct.bin_dialogexfont*, %struct.bin_dialogexfont*, %struct.bin_dialogexfont*, %struct.bin_dialogexfont*, %struct.bin_dialogexfont*, %struct.bin_dialogexfont*, %struct.bin_dialogexfont*, %struct.bin_dialogexfont*, %struct.bin_dialogexfont*, i32, i32, %struct.bin_dialogexfont*, %struct.bin_dialogexfont*, %struct.bin_dialogexfont*, %struct.bin_dialogexfont* }
%struct.bin_dialog_control = type { %struct.bin_dialog_control*, %struct.bin_dialog_control*, %struct.bin_dialog_control*, %struct.bin_dialog_control*, %struct.bin_dialog_control*, %struct.bin_dialog_control*, %struct.bin_dialog_control*, %struct.bin_dialog_control*, %struct.bin_dialog_control*, i32, i32, %struct.bin_dialog_control*, %struct.bin_dialog_control*, %struct.bin_dialog_control*, %struct.bin_dialog_control* }
%struct.bin_dialogex_control = type { %struct.bin_dialogex_control*, %struct.bin_dialogex_control*, %struct.bin_dialogex_control*, %struct.bin_dialogex_control*, %struct.bin_dialogex_control*, %struct.bin_dialogex_control*, %struct.bin_dialogex_control*, %struct.bin_dialogex_control*, %struct.bin_dialogex_control*, i32, i32, %struct.bin_dialogex_control*, %struct.bin_dialogex_control*, %struct.bin_dialogex_control*, %struct.bin_dialogex_control* }

@BIN_DIALOGEX_SIZE = common dso_local global i32 0, align 4
@BIN_DIALOG_SIZE = common dso_local global i32 0, align 4
@DS_SETFONT = common dso_local global i32 0, align 4
@BIN_DIALOGFONT_SIZE = common dso_local global i32 0, align 4
@BIN_DIALOGEXFONT_SIZE = common dso_local global i32 0, align 4
@BIN_DIALOG_CONTROL_SIZE = common dso_local global i32 0, align 4
@BIN_DIALOGEX_CONTROL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_8__*)* @res_to_bin_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_to_bin_dialog(i32* %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.bin_dialogex, align 8
  %14 = alloca %struct.bin_dialog, align 8
  %15 = alloca %struct.bin_dialogfont, align 8
  %16 = alloca %struct.bin_dialogexfont, align 8
  %17 = alloca [2 x %struct.bin_dialogfont], align 16
  %18 = alloca %struct.bin_dialog_control, align 8
  %19 = alloca %struct.bin_dialogex_control, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = call i32 @extended_dialog(%struct.TYPE_8__* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %158

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %80, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds %struct.bin_dialog, %struct.bin_dialog* %14, i32 0, i32 6
  %34 = load %struct.bin_dialog*, %struct.bin_dialog** %33, align 8
  %35 = bitcast %struct.bin_dialog* %34 to %struct.bin_dialogfont*
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @windres_put_32(i32* %32, %struct.bin_dialogfont* %35, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds %struct.bin_dialog, %struct.bin_dialog* %14, i32 0, i32 7
  %42 = load %struct.bin_dialog*, %struct.bin_dialog** %41, align 8
  %43 = bitcast %struct.bin_dialog* %42 to %struct.bin_dialogfont*
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @windres_put_32(i32* %40, %struct.bin_dialogfont* %43, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds %struct.bin_dialog, %struct.bin_dialog* %14, i32 0, i32 5
  %50 = load %struct.bin_dialog*, %struct.bin_dialog** %49, align 8
  %51 = bitcast %struct.bin_dialog* %50 to %struct.bin_dialogfont*
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @windres_put_16(i32* %48, %struct.bin_dialogfont* %51, i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds %struct.bin_dialog, %struct.bin_dialog* %14, i32 0, i32 4
  %58 = load %struct.bin_dialog*, %struct.bin_dialog** %57, align 8
  %59 = bitcast %struct.bin_dialog* %58 to %struct.bin_dialogfont*
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @windres_put_16(i32* %56, %struct.bin_dialogfont* %59, i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds %struct.bin_dialog, %struct.bin_dialog* %14, i32 0, i32 3
  %66 = load %struct.bin_dialog*, %struct.bin_dialog** %65, align 8
  %67 = bitcast %struct.bin_dialog* %66 to %struct.bin_dialogfont*
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @windres_put_16(i32* %64, %struct.bin_dialogfont* %67, i32 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds %struct.bin_dialog, %struct.bin_dialog* %14, i32 0, i32 2
  %74 = load %struct.bin_dialog*, %struct.bin_dialog** %73, align 8
  %75 = bitcast %struct.bin_dialog* %74 to %struct.bin_dialogfont*
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @windres_put_16(i32* %72, %struct.bin_dialogfont* %75, i32 %78)
  br label %157

80:                                               ; preds = %28
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds %struct.bin_dialogex, %struct.bin_dialogex* %13, i32 0, i32 14
  %83 = load %struct.bin_dialogex*, %struct.bin_dialogex** %82, align 8
  %84 = bitcast %struct.bin_dialogex* %83 to %struct.bin_dialogfont*
  %85 = call i32 @windres_put_16(i32* %81, %struct.bin_dialogfont* %84, i32 1)
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds %struct.bin_dialogex, %struct.bin_dialogex* %13, i32 0, i32 13
  %88 = load %struct.bin_dialogex*, %struct.bin_dialogex** %87, align 8
  %89 = bitcast %struct.bin_dialogex* %88 to %struct.bin_dialogfont*
  %90 = call i32 @windres_put_16(i32* %86, %struct.bin_dialogfont* %89, i32 65535)
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds %struct.bin_dialogex, %struct.bin_dialogex* %13, i32 0, i32 8
  %93 = load %struct.bin_dialogex*, %struct.bin_dialogex** %92, align 8
  %94 = bitcast %struct.bin_dialogex* %93 to %struct.bin_dialogfont*
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 9
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = icmp ne %struct.TYPE_6__* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %80
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 9
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  br label %106

105:                                              ; preds = %80
  br label %106

106:                                              ; preds = %105, %99
  %107 = phi i32 [ %104, %99 ], [ 0, %105 ]
  %108 = call i32 @windres_put_32(i32* %91, %struct.bin_dialogfont* %94, i32 %107)
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds %struct.bin_dialogex, %struct.bin_dialogex* %13, i32 0, i32 7
  %111 = load %struct.bin_dialogex*, %struct.bin_dialogex** %110, align 8
  %112 = bitcast %struct.bin_dialogex* %111 to %struct.bin_dialogfont*
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @windres_put_32(i32* %109, %struct.bin_dialogfont* %112, i32 %115)
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds %struct.bin_dialogex, %struct.bin_dialogex* %13, i32 0, i32 6
  %119 = load %struct.bin_dialogex*, %struct.bin_dialogex** %118, align 8
  %120 = bitcast %struct.bin_dialogex* %119 to %struct.bin_dialogfont*
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @windres_put_32(i32* %117, %struct.bin_dialogfont* %120, i32 %123)
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds %struct.bin_dialogex, %struct.bin_dialogex* %13, i32 0, i32 5
  %127 = load %struct.bin_dialogex*, %struct.bin_dialogex** %126, align 8
  %128 = bitcast %struct.bin_dialogex* %127 to %struct.bin_dialogfont*
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @windres_put_16(i32* %125, %struct.bin_dialogfont* %128, i32 %131)
  %133 = load i32*, i32** %4, align 8
  %134 = getelementptr inbounds %struct.bin_dialogex, %struct.bin_dialogex* %13, i32 0, i32 4
  %135 = load %struct.bin_dialogex*, %struct.bin_dialogex** %134, align 8
  %136 = bitcast %struct.bin_dialogex* %135 to %struct.bin_dialogfont*
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @windres_put_16(i32* %133, %struct.bin_dialogfont* %136, i32 %139)
  %141 = load i32*, i32** %4, align 8
  %142 = getelementptr inbounds %struct.bin_dialogex, %struct.bin_dialogex* %13, i32 0, i32 3
  %143 = load %struct.bin_dialogex*, %struct.bin_dialogex** %142, align 8
  %144 = bitcast %struct.bin_dialogex* %143 to %struct.bin_dialogfont*
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @windres_put_16(i32* %141, %struct.bin_dialogfont* %144, i32 %147)
  %149 = load i32*, i32** %4, align 8
  %150 = getelementptr inbounds %struct.bin_dialogex, %struct.bin_dialogex* %13, i32 0, i32 2
  %151 = load %struct.bin_dialogex*, %struct.bin_dialogex** %150, align 8
  %152 = bitcast %struct.bin_dialogex* %151 to %struct.bin_dialogfont*
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @windres_put_16(i32* %149, %struct.bin_dialogfont* %152, i32 %155)
  br label %157

157:                                              ; preds = %106, %31
  br label %158

158:                                              ; preds = %157, %3
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load i32, i32* @BIN_DIALOGEX_SIZE, align 4
  br label %165

163:                                              ; preds = %158
  %164 = load i32, i32* @BIN_DIALOG_SIZE, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %5, align 4
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 12
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @resid_to_bin(i32* %169, i32 %170, i32 %173)
  store i32 %174, i32* %5, align 4
  %175 = load i32*, i32** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 11
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @resid_to_bin(i32* %175, i32 %176, i32 %179)
  store i32 %180, i32* %5, align 4
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 10
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @unicode_to_bin(i32* %181, i32 %182, i32 %185)
  store i32 %186, i32* %5, align 4
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @DS_SETFONT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %295

193:                                              ; preds = %165
  %194 = load i32*, i32** %4, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %278

196:                                              ; preds = %193
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %211, label %199

199:                                              ; preds = %196
  %200 = load i32*, i32** %4, align 8
  %201 = getelementptr inbounds %struct.bin_dialogfont, %struct.bin_dialogfont* %15, i32 0, i32 12
  %202 = load %struct.bin_dialogfont*, %struct.bin_dialogfont** %201, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @windres_put_16(i32* %200, %struct.bin_dialogfont* %202, i32 %205)
  %207 = load i32*, i32** %4, align 8
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @BIN_DIALOGFONT_SIZE, align 4
  %210 = call i32 @set_windres_bfd_content(i32* %207, %struct.bin_dialogfont* %15, i32 %208, i32 %209)
  br label %277

211:                                              ; preds = %196
  %212 = load i32*, i32** %4, align 8
  %213 = getelementptr inbounds %struct.bin_dialogexfont, %struct.bin_dialogexfont* %16, i32 0, i32 12
  %214 = load %struct.bin_dialogexfont*, %struct.bin_dialogexfont** %213, align 8
  %215 = bitcast %struct.bin_dialogexfont* %214 to %struct.bin_dialogfont*
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @windres_put_16(i32* %212, %struct.bin_dialogfont* %215, i32 %218)
  %220 = load i32*, i32** %4, align 8
  %221 = getelementptr inbounds %struct.bin_dialogexfont, %struct.bin_dialogexfont* %16, i32 0, i32 11
  %222 = load %struct.bin_dialogexfont*, %struct.bin_dialogexfont** %221, align 8
  %223 = bitcast %struct.bin_dialogexfont* %222 to %struct.bin_dialogfont*
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 9
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = icmp eq %struct.TYPE_6__* %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %211
  br label %235

229:                                              ; preds = %211
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 9
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  br label %235

235:                                              ; preds = %229, %228
  %236 = phi i32 [ 0, %228 ], [ %234, %229 ]
  %237 = call i32 @windres_put_16(i32* %220, %struct.bin_dialogfont* %223, i32 %236)
  %238 = load i32*, i32** %4, align 8
  %239 = getelementptr inbounds %struct.bin_dialogexfont, %struct.bin_dialogexfont* %16, i32 0, i32 10
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 9
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %242, align 8
  %244 = icmp eq %struct.TYPE_6__* %243, null
  br i1 %244, label %245, label %246

245:                                              ; preds = %235
  br label %252

246:                                              ; preds = %235
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 9
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  br label %252

252:                                              ; preds = %246, %245
  %253 = phi i32 [ 0, %245 ], [ %251, %246 ]
  %254 = call i32 @windres_put_8(i32* %238, i32 %240, i32 %253)
  %255 = load i32*, i32** %4, align 8
  %256 = getelementptr inbounds %struct.bin_dialogexfont, %struct.bin_dialogexfont* %16, i32 0, i32 9
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 9
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = icmp eq %struct.TYPE_6__* %260, null
  br i1 %261, label %262, label %263

262:                                              ; preds = %252
  br label %269

263:                                              ; preds = %252
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 9
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  br label %269

269:                                              ; preds = %263, %262
  %270 = phi i32 [ 1, %262 ], [ %268, %263 ]
  %271 = call i32 @windres_put_8(i32* %255, i32 %257, i32 %270)
  %272 = load i32*, i32** %4, align 8
  %273 = bitcast %struct.bin_dialogexfont* %16 to %struct.bin_dialogfont*
  %274 = load i32, i32* %5, align 4
  %275 = load i32, i32* @BIN_DIALOGEXFONT_SIZE, align 4
  %276 = call i32 @set_windres_bfd_content(i32* %272, %struct.bin_dialogfont* %273, i32 %274, i32 %275)
  br label %277

277:                                              ; preds = %269, %199
  br label %278

278:                                              ; preds = %277, %193
  %279 = load i32, i32* %10, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %278
  %282 = load i32, i32* @BIN_DIALOGEXFONT_SIZE, align 4
  br label %285

283:                                              ; preds = %278
  %284 = load i32, i32* @BIN_DIALOGFONT_SIZE, align 4
  br label %285

285:                                              ; preds = %283, %281
  %286 = phi i32 [ %282, %281 ], [ %284, %283 ]
  %287 = load i32, i32* %5, align 4
  %288 = add nsw i32 %287, %286
  store i32 %288, i32* %5, align 4
  %289 = load i32*, i32** %4, align 8
  %290 = load i32, i32* %5, align 4
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @unicode_to_bin(i32* %289, i32 %290, i32 %293)
  store i32 %294, i32* %5, align 4
  br label %295

295:                                              ; preds = %285, %165
  store i32 0, i32* %11, align 4
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 7
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %297, align 8
  store %struct.TYPE_7__* %298, %struct.TYPE_7__** %12, align 8
  br label %299

299:                                              ; preds = %530, %295
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %301 = icmp ne %struct.TYPE_7__* %300, null
  br i1 %301, label %302, label %536

302:                                              ; preds = %299
  %303 = load i32, i32* %5, align 4
  %304 = load i32, i32* %7, align 4
  %305 = sub nsw i32 %303, %304
  %306 = and i32 %305, 3
  %307 = sub nsw i32 4, %306
  %308 = and i32 %307, 3
  %309 = load i32, i32* %5, align 4
  %310 = add nsw i32 %309, %308
  store i32 %310, i32* %5, align 4
  %311 = load i32*, i32** %4, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %449

313:                                              ; preds = %302
  %314 = load i32, i32* %10, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %378, label %316

316:                                              ; preds = %313
  %317 = load i32*, i32** %4, align 8
  %318 = getelementptr inbounds %struct.bin_dialog_control, %struct.bin_dialog_control* %18, i32 0, i32 6
  %319 = load %struct.bin_dialog_control*, %struct.bin_dialog_control** %318, align 8
  %320 = bitcast %struct.bin_dialog_control* %319 to %struct.bin_dialogfont*
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @windres_put_32(i32* %317, %struct.bin_dialogfont* %320, i32 %323)
  %325 = load i32*, i32** %4, align 8
  %326 = getelementptr inbounds %struct.bin_dialog_control, %struct.bin_dialog_control* %18, i32 0, i32 7
  %327 = load %struct.bin_dialog_control*, %struct.bin_dialog_control** %326, align 8
  %328 = bitcast %struct.bin_dialog_control* %327 to %struct.bin_dialogfont*
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @windres_put_32(i32* %325, %struct.bin_dialogfont* %328, i32 %331)
  %333 = load i32*, i32** %4, align 8
  %334 = getelementptr inbounds %struct.bin_dialog_control, %struct.bin_dialog_control* %18, i32 0, i32 5
  %335 = load %struct.bin_dialog_control*, %struct.bin_dialog_control** %334, align 8
  %336 = bitcast %struct.bin_dialog_control* %335 to %struct.bin_dialogfont*
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @windres_put_16(i32* %333, %struct.bin_dialogfont* %336, i32 %339)
  %341 = load i32*, i32** %4, align 8
  %342 = getelementptr inbounds %struct.bin_dialog_control, %struct.bin_dialog_control* %18, i32 0, i32 4
  %343 = load %struct.bin_dialog_control*, %struct.bin_dialog_control** %342, align 8
  %344 = bitcast %struct.bin_dialog_control* %343 to %struct.bin_dialogfont*
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @windres_put_16(i32* %341, %struct.bin_dialogfont* %344, i32 %347)
  %349 = load i32*, i32** %4, align 8
  %350 = getelementptr inbounds %struct.bin_dialog_control, %struct.bin_dialog_control* %18, i32 0, i32 3
  %351 = load %struct.bin_dialog_control*, %struct.bin_dialog_control** %350, align 8
  %352 = bitcast %struct.bin_dialog_control* %351 to %struct.bin_dialogfont*
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @windres_put_16(i32* %349, %struct.bin_dialogfont* %352, i32 %355)
  %357 = load i32*, i32** %4, align 8
  %358 = getelementptr inbounds %struct.bin_dialog_control, %struct.bin_dialog_control* %18, i32 0, i32 2
  %359 = load %struct.bin_dialog_control*, %struct.bin_dialog_control** %358, align 8
  %360 = bitcast %struct.bin_dialog_control* %359 to %struct.bin_dialogfont*
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @windres_put_16(i32* %357, %struct.bin_dialogfont* %360, i32 %363)
  %365 = load i32*, i32** %4, align 8
  %366 = getelementptr inbounds %struct.bin_dialog_control, %struct.bin_dialog_control* %18, i32 0, i32 1
  %367 = load %struct.bin_dialog_control*, %struct.bin_dialog_control** %366, align 8
  %368 = bitcast %struct.bin_dialog_control* %367 to %struct.bin_dialogfont*
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 6
  %371 = load i32, i32* %370, align 8
  %372 = call i32 @windres_put_16(i32* %365, %struct.bin_dialogfont* %368, i32 %371)
  %373 = load i32*, i32** %4, align 8
  %374 = bitcast %struct.bin_dialog_control* %18 to %struct.bin_dialogfont*
  %375 = load i32, i32* %5, align 4
  %376 = load i32, i32* @BIN_DIALOG_CONTROL_SIZE, align 4
  %377 = call i32 @set_windres_bfd_content(i32* %373, %struct.bin_dialogfont* %374, i32 %375, i32 %376)
  br label %448

378:                                              ; preds = %313
  %379 = load i32*, i32** %4, align 8
  %380 = getelementptr inbounds %struct.bin_dialogex_control, %struct.bin_dialogex_control* %19, i32 0, i32 8
  %381 = load %struct.bin_dialogex_control*, %struct.bin_dialogex_control** %380, align 8
  %382 = bitcast %struct.bin_dialogex_control* %381 to %struct.bin_dialogfont*
  %383 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 7
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @windres_put_32(i32* %379, %struct.bin_dialogfont* %382, i32 %385)
  %387 = load i32*, i32** %4, align 8
  %388 = getelementptr inbounds %struct.bin_dialogex_control, %struct.bin_dialogex_control* %19, i32 0, i32 7
  %389 = load %struct.bin_dialogex_control*, %struct.bin_dialogex_control** %388, align 8
  %390 = bitcast %struct.bin_dialogex_control* %389 to %struct.bin_dialogfont*
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @windres_put_32(i32* %387, %struct.bin_dialogfont* %390, i32 %393)
  %395 = load i32*, i32** %4, align 8
  %396 = getelementptr inbounds %struct.bin_dialogex_control, %struct.bin_dialogex_control* %19, i32 0, i32 6
  %397 = load %struct.bin_dialogex_control*, %struct.bin_dialogex_control** %396, align 8
  %398 = bitcast %struct.bin_dialogex_control* %397 to %struct.bin_dialogfont*
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @windres_put_32(i32* %395, %struct.bin_dialogfont* %398, i32 %401)
  %403 = load i32*, i32** %4, align 8
  %404 = getelementptr inbounds %struct.bin_dialogex_control, %struct.bin_dialogex_control* %19, i32 0, i32 5
  %405 = load %struct.bin_dialogex_control*, %struct.bin_dialogex_control** %404, align 8
  %406 = bitcast %struct.bin_dialogex_control* %405 to %struct.bin_dialogfont*
  %407 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @windres_put_16(i32* %403, %struct.bin_dialogfont* %406, i32 %409)
  %411 = load i32*, i32** %4, align 8
  %412 = getelementptr inbounds %struct.bin_dialogex_control, %struct.bin_dialogex_control* %19, i32 0, i32 4
  %413 = load %struct.bin_dialogex_control*, %struct.bin_dialogex_control** %412, align 8
  %414 = bitcast %struct.bin_dialogex_control* %413 to %struct.bin_dialogfont*
  %415 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @windres_put_16(i32* %411, %struct.bin_dialogfont* %414, i32 %417)
  %419 = load i32*, i32** %4, align 8
  %420 = getelementptr inbounds %struct.bin_dialogex_control, %struct.bin_dialogex_control* %19, i32 0, i32 3
  %421 = load %struct.bin_dialogex_control*, %struct.bin_dialogex_control** %420, align 8
  %422 = bitcast %struct.bin_dialogex_control* %421 to %struct.bin_dialogfont*
  %423 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @windres_put_16(i32* %419, %struct.bin_dialogfont* %422, i32 %425)
  %427 = load i32*, i32** %4, align 8
  %428 = getelementptr inbounds %struct.bin_dialogex_control, %struct.bin_dialogex_control* %19, i32 0, i32 2
  %429 = load %struct.bin_dialogex_control*, %struct.bin_dialogex_control** %428, align 8
  %430 = bitcast %struct.bin_dialogex_control* %429 to %struct.bin_dialogfont*
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 5
  %433 = load i32, i32* %432, align 4
  %434 = call i32 @windres_put_16(i32* %427, %struct.bin_dialogfont* %430, i32 %433)
  %435 = load i32*, i32** %4, align 8
  %436 = getelementptr inbounds %struct.bin_dialogex_control, %struct.bin_dialogex_control* %19, i32 0, i32 1
  %437 = load %struct.bin_dialogex_control*, %struct.bin_dialogex_control** %436, align 8
  %438 = bitcast %struct.bin_dialogex_control* %437 to %struct.bin_dialogfont*
  %439 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %440 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %439, i32 0, i32 6
  %441 = load i32, i32* %440, align 8
  %442 = call i32 @windres_put_32(i32* %435, %struct.bin_dialogfont* %438, i32 %441)
  %443 = load i32*, i32** %4, align 8
  %444 = bitcast %struct.bin_dialogex_control* %19 to %struct.bin_dialogfont*
  %445 = load i32, i32* %5, align 4
  %446 = load i32, i32* @BIN_DIALOGEX_CONTROL_SIZE, align 4
  %447 = call i32 @set_windres_bfd_content(i32* %443, %struct.bin_dialogfont* %444, i32 %445, i32 %446)
  br label %448

448:                                              ; preds = %378, %316
  br label %449

449:                                              ; preds = %448, %302
  %450 = load i32, i32* %10, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %449
  %453 = load i32, i32* @BIN_DIALOGEX_CONTROL_SIZE, align 4
  br label %456

454:                                              ; preds = %449
  %455 = load i32, i32* @BIN_DIALOG_CONTROL_SIZE, align 4
  br label %456

456:                                              ; preds = %454, %452
  %457 = phi i32 [ %453, %452 ], [ %455, %454 ]
  %458 = load i32, i32* %5, align 4
  %459 = add nsw i32 %458, %457
  store i32 %459, i32* %5, align 4
  %460 = load i32*, i32** %4, align 8
  %461 = load i32, i32* %5, align 4
  %462 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 10
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @resid_to_bin(i32* %460, i32 %461, i32 %464)
  store i32 %465, i32* %5, align 4
  %466 = load i32*, i32** %4, align 8
  %467 = load i32, i32* %5, align 4
  %468 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %468, i32 0, i32 9
  %470 = load i32, i32* %469, align 8
  %471 = call i32 @resid_to_bin(i32* %466, i32 %467, i32 %470)
  store i32 %471, i32* %5, align 4
  %472 = load i32, i32* %5, align 4
  store i32 %472, i32* %9, align 4
  %473 = load i32, i32* %5, align 4
  %474 = add nsw i32 %473, 2
  store i32 %474, i32* %5, align 4
  %475 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %476 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %475, i32 0, i32 8
  %477 = load i32*, i32** %476, align 8
  %478 = icmp eq i32* %477, null
  br i1 %478, label %479, label %487

479:                                              ; preds = %456
  %480 = load i32*, i32** %4, align 8
  %481 = icmp ne i32* %480, null
  br i1 %481, label %482, label %486

482:                                              ; preds = %479
  %483 = load i32*, i32** %4, align 8
  %484 = getelementptr inbounds [2 x %struct.bin_dialogfont], [2 x %struct.bin_dialogfont]* %17, i64 0, i64 0
  %485 = call i32 @windres_put_16(i32* %483, %struct.bin_dialogfont* %484, i32 0)
  br label %486

486:                                              ; preds = %482, %479
  br label %521

487:                                              ; preds = %456
  %488 = load i32, i32* %5, align 4
  store i32 %488, i32* %20, align 4
  %489 = load i32, i32* %5, align 4
  %490 = load i32, i32* %7, align 4
  %491 = sub nsw i32 %489, %490
  %492 = and i32 %491, 3
  %493 = sub nsw i32 4, %492
  %494 = and i32 %493, 3
  %495 = load i32, i32* %5, align 4
  %496 = add nsw i32 %495, %494
  store i32 %496, i32* %5, align 4
  %497 = load i32, i32* %5, align 4
  store i32 %497, i32* %21, align 4
  %498 = load i32*, i32** %4, align 8
  %499 = load i32, i32* %5, align 4
  %500 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %501 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %500, i32 0, i32 8
  %502 = load i32*, i32** %501, align 8
  %503 = call i32 @res_to_bin_rcdata(i32* %498, i32 %499, i32* %502)
  store i32 %503, i32* %5, align 4
  %504 = load i32, i32* %5, align 4
  %505 = load i32, i32* %21, align 4
  %506 = sub nsw i32 %504, %505
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %487
  %509 = load i32, i32* %20, align 4
  store i32 %509, i32* %5, align 4
  store i32 %509, i32* %21, align 4
  br label %510

510:                                              ; preds = %508, %487
  %511 = load i32*, i32** %4, align 8
  %512 = icmp ne i32* %511, null
  br i1 %512, label %513, label %520

513:                                              ; preds = %510
  %514 = load i32*, i32** %4, align 8
  %515 = getelementptr inbounds [2 x %struct.bin_dialogfont], [2 x %struct.bin_dialogfont]* %17, i64 0, i64 0
  %516 = load i32, i32* %5, align 4
  %517 = load i32, i32* %21, align 4
  %518 = sub nsw i32 %516, %517
  %519 = call i32 @windres_put_16(i32* %514, %struct.bin_dialogfont* %515, i32 %518)
  br label %520

520:                                              ; preds = %513, %510
  br label %521

521:                                              ; preds = %520, %486
  %522 = load i32*, i32** %4, align 8
  %523 = icmp ne i32* %522, null
  br i1 %523, label %524, label %529

524:                                              ; preds = %521
  %525 = load i32*, i32** %4, align 8
  %526 = getelementptr inbounds [2 x %struct.bin_dialogfont], [2 x %struct.bin_dialogfont]* %17, i64 0, i64 0
  %527 = load i32, i32* %9, align 4
  %528 = call i32 @set_windres_bfd_content(i32* %525, %struct.bin_dialogfont* %526, i32 %527, i32 2)
  br label %529

529:                                              ; preds = %524, %521
  br label %530

530:                                              ; preds = %529
  %531 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %532 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %531, i32 0, i32 11
  %533 = load %struct.TYPE_7__*, %struct.TYPE_7__** %532, align 8
  store %struct.TYPE_7__* %533, %struct.TYPE_7__** %12, align 8
  %534 = load i32, i32* %11, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %11, align 4
  br label %299

536:                                              ; preds = %299
  %537 = load i32*, i32** %4, align 8
  %538 = icmp ne i32* %537, null
  br i1 %538, label %539, label %571

539:                                              ; preds = %536
  %540 = load i32*, i32** %4, align 8
  %541 = load i32, i32* %10, align 4
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %547

543:                                              ; preds = %539
  %544 = getelementptr inbounds %struct.bin_dialogex, %struct.bin_dialogex* %13, i32 0, i32 0
  %545 = load %struct.bin_dialogex*, %struct.bin_dialogex** %544, align 8
  %546 = bitcast %struct.bin_dialogex* %545 to i8*
  br label %551

547:                                              ; preds = %539
  %548 = getelementptr inbounds %struct.bin_dialog, %struct.bin_dialog* %14, i32 0, i32 0
  %549 = load %struct.bin_dialog*, %struct.bin_dialog** %548, align 8
  %550 = bitcast %struct.bin_dialog* %549 to i8*
  br label %551

551:                                              ; preds = %547, %543
  %552 = phi i8* [ %546, %543 ], [ %550, %547 ]
  %553 = bitcast i8* %552 to %struct.bin_dialogfont*
  %554 = load i32, i32* %11, align 4
  %555 = call i32 @windres_put_16(i32* %540, %struct.bin_dialogfont* %553, i32 %554)
  %556 = load i32, i32* %10, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %564, label %558

558:                                              ; preds = %551
  %559 = load i32*, i32** %4, align 8
  %560 = bitcast %struct.bin_dialog* %14 to %struct.bin_dialogfont*
  %561 = load i32, i32* %8, align 4
  %562 = load i32, i32* @BIN_DIALOG_SIZE, align 4
  %563 = call i32 @set_windres_bfd_content(i32* %559, %struct.bin_dialogfont* %560, i32 %561, i32 %562)
  br label %570

564:                                              ; preds = %551
  %565 = load i32*, i32** %4, align 8
  %566 = bitcast %struct.bin_dialogex* %13 to %struct.bin_dialogfont*
  %567 = load i32, i32* %8, align 4
  %568 = load i32, i32* @BIN_DIALOGEX_SIZE, align 4
  %569 = call i32 @set_windres_bfd_content(i32* %565, %struct.bin_dialogfont* %566, i32 %567, i32 %568)
  br label %570

570:                                              ; preds = %564, %558
  br label %571

571:                                              ; preds = %570, %536
  %572 = load i32, i32* %5, align 4
  ret i32 %572
}

declare dso_local i32 @extended_dialog(%struct.TYPE_8__*) #1

declare dso_local i32 @windres_put_32(i32*, %struct.bin_dialogfont*, i32) #1

declare dso_local i32 @windres_put_16(i32*, %struct.bin_dialogfont*, i32) #1

declare dso_local i32 @resid_to_bin(i32*, i32, i32) #1

declare dso_local i32 @unicode_to_bin(i32*, i32, i32) #1

declare dso_local i32 @set_windres_bfd_content(i32*, %struct.bin_dialogfont*, i32, i32) #1

declare dso_local i32 @windres_put_8(i32*, i32, i32) #1

declare dso_local i32 @res_to_bin_rcdata(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
