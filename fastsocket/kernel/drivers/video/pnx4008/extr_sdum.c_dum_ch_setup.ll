; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_dum_ch_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_dum_ch_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dum_ch_setup = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cmdstring = type { i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8**, i64 }
%struct.disp_window = type { i32, i32, i32, i32, i32, i32 }
%struct.dumchannel = type { i32, i64, i64, i32, i32, i32 }

@DISP_XMIN_L_REG = common dso_local global i32 0, align 4
@DISP_XMIN_H_REG = common dso_local global i32 0, align 4
@DISP_YMIN_REG = common dso_local global i32 0, align 4
@DISP_XMAX_L_REG = common dso_local global i32 0, align 4
@DISP_XMAX_H_REG = common dso_local global i32 0, align 4
@DISP_YMAX_REG = common dso_local global i32 0, align 4
@DISP_PIXEL_REG = common dso_local global i32 0, align 4
@DISP_1_REG = common dso_local global i32 0, align 4
@DISP_DUMMY1_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dum_ch_setup*)* @dum_ch_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dum_ch_setup(i32 %0, %struct.dum_ch_setup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dum_ch_setup*, align 8
  %6 = alloca %struct.cmdstring, align 8
  %7 = alloca %struct.cmdstring*, align 8
  %8 = alloca %struct.disp_window, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dumchannel, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.dum_ch_setup* %1, %struct.dum_ch_setup** %5, align 8
  store %struct.cmdstring* %6, %struct.cmdstring** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = bitcast %struct.dumchannel* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %16 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %15, i32 0, i32 12
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %21 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %20, i32 0, i32 11
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %26 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %24, %19, %2
  store i32 0, i32* %9, align 4
  %30 = call i32 @BIT(i32 1)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %32 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %31, i32 0, i32 12
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = call i32 @BIT(i32 4)
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %41 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %40, i32 0, i32 11
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = call i32 @BIT(i32 3)
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %50 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = call i32 @BIT(i32 0)
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %53, %48
  br label %59

58:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %62 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %67 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %66, i32 0, i32 1
  store i32 32, i32* %67, align 4
  %68 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %69 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  br label %75

70:                                               ; preds = %59
  %71 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %72 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %71, i32 0, i32 1
  store i32 48, i32* %72, align 4
  %73 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %74 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %73, i32 0, i32 2
  store i32 16, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %77 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 %78, 4
  %80 = call i32 @BIT(i32 3)
  %81 = or i32 %79, %80
  %82 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %83 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %88 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %87, i32 0, i32 10
  store i64 %86, i64* %88, align 8
  %89 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %90 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %89, i32 0, i32 3
  store i32 0, i32* %90, align 4
  %91 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %92 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 65535
  %95 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %96 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %98 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = ashr i32 %99, 16
  %101 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %102 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %104 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %137

107:                                              ; preds = %75
  %108 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %109 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %137

112:                                              ; preds = %107
  %113 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %114 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %112
  %118 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %119 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %117
  %123 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %124 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %129 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %134 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %133, i32 0, i32 6
  store i32 0, i32* %134, align 8
  %135 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %136 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %135, i32 0, i32 7
  store i32 0, i32* %136, align 4
  br label %148

137:                                              ; preds = %127, %122, %117, %112, %107, %75
  %138 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %139 = call i32 @nof_bytes(%struct.dum_ch_setup* %138)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = and i32 %140, 65535
  %142 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %143 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %13, align 4
  %145 = ashr i32 %144, 16
  %146 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %147 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %146, i32 0, i32 7
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %137, %132
  %149 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %150 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %149, i32 0, i32 9
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = call i32 @BIT(i32 15)
  %155 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %156 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %148
  %160 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %161 = call i32 @build_disp_window(%struct.dum_ch_setup* %160, %struct.disp_window* %8)
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %249

164:                                              ; preds = %159
  %165 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %166 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @DISP_XMIN_L_REG, align 4
  %169 = call i8* @build_command(i32 %167, i32 %168, i32 153)
  %170 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %171 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %170, i32 0, i32 9
  %172 = load i8**, i8*** %171, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 0
  store i8* %169, i8** %173, align 8
  %174 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %175 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @DISP_XMIN_L_REG, align 4
  %178 = getelementptr inbounds %struct.disp_window, %struct.disp_window* %8, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @build_command(i32 %176, i32 %177, i32 %179)
  %181 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %182 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %181, i32 0, i32 9
  %183 = load i8**, i8*** %182, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 1
  store i8* %180, i8** %184, align 8
  %185 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %186 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @DISP_XMIN_H_REG, align 4
  %189 = getelementptr inbounds %struct.disp_window, %struct.disp_window* %8, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @build_command(i32 %187, i32 %188, i32 %190)
  %192 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %193 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %192, i32 0, i32 9
  %194 = load i8**, i8*** %193, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 2
  store i8* %191, i8** %195, align 8
  %196 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %197 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @DISP_YMIN_REG, align 4
  %200 = getelementptr inbounds %struct.disp_window, %struct.disp_window* %8, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i8* @build_command(i32 %198, i32 %199, i32 %201)
  %203 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %204 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %203, i32 0, i32 9
  %205 = load i8**, i8*** %204, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 3
  store i8* %202, i8** %206, align 8
  %207 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %208 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @DISP_XMAX_L_REG, align 4
  %211 = getelementptr inbounds %struct.disp_window, %struct.disp_window* %8, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @build_command(i32 %209, i32 %210, i32 %212)
  %214 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %215 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %214, i32 0, i32 9
  %216 = load i8**, i8*** %215, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i64 4
  store i8* %213, i8** %217, align 8
  %218 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %219 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @DISP_XMAX_H_REG, align 4
  %222 = getelementptr inbounds %struct.disp_window, %struct.disp_window* %8, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = call i8* @build_command(i32 %220, i32 %221, i32 %223)
  %225 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %226 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %225, i32 0, i32 9
  %227 = load i8**, i8*** %226, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 5
  store i8* %224, i8** %228, align 8
  %229 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %230 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @DISP_YMAX_REG, align 4
  %233 = getelementptr inbounds %struct.disp_window, %struct.disp_window* %8, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = call i8* @build_command(i32 %231, i32 %232, i32 %234)
  %236 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %237 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %236, i32 0, i32 9
  %238 = load i8**, i8*** %237, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 6
  store i8* %235, i8** %239, align 8
  %240 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %241 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @DISP_PIXEL_REG, align 4
  %244 = call i8* @build_double_index(i32 %242, i32 %243)
  %245 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %246 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %245, i32 0, i32 9
  %247 = load i8**, i8*** %246, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 7
  store i8* %244, i8** %248, align 8
  br label %425

249:                                              ; preds = %159
  %250 = getelementptr inbounds %struct.disp_window, %struct.disp_window* %8, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %4, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %264

254:                                              ; preds = %249
  %255 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %256 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @DISP_XMIN_L_REG, align 4
  %259 = call i8* @build_command(i32 %257, i32 %258, i32 153)
  %260 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %261 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %260, i32 0, i32 9
  %262 = load i8**, i8*** %261, align 8
  %263 = getelementptr inbounds i8*, i8** %262, i64 0
  store i8* %259, i8** %263, align 8
  br label %275

264:                                              ; preds = %249
  %265 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %266 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @DISP_XMIN_L_REG, align 4
  %269 = load i32, i32* %4, align 4
  %270 = call i8* @build_command(i32 %267, i32 %268, i32 %269)
  %271 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %272 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %271, i32 0, i32 9
  %273 = load i8**, i8*** %272, align 8
  %274 = getelementptr inbounds i8*, i8** %273, i64 0
  store i8* %270, i8** %274, align 8
  br label %275

275:                                              ; preds = %264, %254
  %276 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %277 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @DISP_XMIN_L_REG, align 4
  %280 = getelementptr inbounds %struct.disp_window, %struct.disp_window* %8, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i8* @build_command(i32 %278, i32 %279, i32 %281)
  %283 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %284 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %283, i32 0, i32 9
  %285 = load i8**, i8*** %284, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 1
  store i8* %282, i8** %286, align 8
  %287 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %288 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @DISP_XMIN_H_REG, align 4
  %291 = getelementptr inbounds %struct.disp_window, %struct.disp_window* %8, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i8* @build_command(i32 %289, i32 %290, i32 %292)
  %294 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %295 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %294, i32 0, i32 9
  %296 = load i8**, i8*** %295, align 8
  %297 = getelementptr inbounds i8*, i8** %296, i64 2
  store i8* %293, i8** %297, align 8
  %298 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %299 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @DISP_YMIN_REG, align 4
  %302 = getelementptr inbounds %struct.disp_window, %struct.disp_window* %8, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = call i8* @build_command(i32 %300, i32 %301, i32 %303)
  %305 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %306 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %305, i32 0, i32 9
  %307 = load i8**, i8*** %306, align 8
  %308 = getelementptr inbounds i8*, i8** %307, i64 3
  store i8* %304, i8** %308, align 8
  %309 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %310 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @DISP_XMAX_L_REG, align 4
  %313 = getelementptr inbounds %struct.disp_window, %struct.disp_window* %8, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = call i8* @build_command(i32 %311, i32 %312, i32 %314)
  %316 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %317 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %316, i32 0, i32 9
  %318 = load i8**, i8*** %317, align 8
  %319 = getelementptr inbounds i8*, i8** %318, i64 4
  store i8* %315, i8** %319, align 8
  %320 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %321 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @DISP_XMAX_H_REG, align 4
  %324 = getelementptr inbounds %struct.disp_window, %struct.disp_window* %8, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = call i8* @build_command(i32 %322, i32 %323, i32 %325)
  %327 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %328 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %327, i32 0, i32 9
  %329 = load i8**, i8*** %328, align 8
  %330 = getelementptr inbounds i8*, i8** %329, i64 5
  store i8* %326, i8** %330, align 8
  %331 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %332 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @DISP_YMAX_REG, align 4
  %335 = getelementptr inbounds %struct.disp_window, %struct.disp_window* %8, i32 0, i32 5
  %336 = load i32, i32* %335, align 4
  %337 = call i8* @build_command(i32 %333, i32 %334, i32 %336)
  %338 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %339 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %338, i32 0, i32 9
  %340 = load i8**, i8*** %339, align 8
  %341 = getelementptr inbounds i8*, i8** %340, i64 6
  store i8* %337, i8** %341, align 8
  %342 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %343 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @DISP_1_REG, align 4
  %346 = load i32, i32* %10, align 4
  %347 = call i8* @build_command(i32 %344, i32 %345, i32 %346)
  %348 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %349 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %348, i32 0, i32 9
  %350 = load i8**, i8*** %349, align 8
  %351 = getelementptr inbounds i8*, i8** %350, i64 7
  store i8* %347, i8** %351, align 8
  %352 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %353 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @DISP_PIXEL_REG, align 4
  %356 = call i8* @build_double_index(i32 %354, i32 %355)
  %357 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %358 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %357, i32 0, i32 9
  %359 = load i8**, i8*** %358, align 8
  %360 = getelementptr inbounds i8*, i8** %359, i64 8
  store i8* %356, i8** %360, align 8
  %361 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %362 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @DISP_PIXEL_REG, align 4
  %365 = call i8* @build_double_index(i32 %363, i32 %364)
  %366 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %367 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %366, i32 0, i32 9
  %368 = load i8**, i8*** %367, align 8
  %369 = getelementptr inbounds i8*, i8** %368, i64 9
  store i8* %365, i8** %369, align 8
  %370 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %371 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @DISP_PIXEL_REG, align 4
  %374 = call i8* @build_double_index(i32 %372, i32 %373)
  %375 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %376 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %375, i32 0, i32 9
  %377 = load i8**, i8*** %376, align 8
  %378 = getelementptr inbounds i8*, i8** %377, i64 10
  store i8* %374, i8** %378, align 8
  %379 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %380 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @DISP_PIXEL_REG, align 4
  %383 = call i8* @build_double_index(i32 %381, i32 %382)
  %384 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %385 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %384, i32 0, i32 9
  %386 = load i8**, i8*** %385, align 8
  %387 = getelementptr inbounds i8*, i8** %386, i64 11
  store i8* %383, i8** %387, align 8
  %388 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %389 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @DISP_1_REG, align 4
  %392 = call i32 @BIT(i32 1)
  %393 = call i8* @build_command(i32 %390, i32 %391, i32 %392)
  %394 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %395 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %394, i32 0, i32 8
  %396 = load i8**, i8*** %395, align 8
  %397 = getelementptr inbounds i8*, i8** %396, i64 0
  store i8* %393, i8** %397, align 8
  %398 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %399 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @DISP_DUMMY1_REG, align 4
  %402 = call i8* @build_command(i32 %400, i32 %401, i32 1)
  %403 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %404 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %403, i32 0, i32 8
  %405 = load i8**, i8*** %404, align 8
  %406 = getelementptr inbounds i8*, i8** %405, i64 1
  store i8* %402, i8** %406, align 8
  %407 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %408 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* @DISP_DUMMY1_REG, align 4
  %411 = call i8* @build_command(i32 %409, i32 %410, i32 2)
  %412 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %413 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %412, i32 0, i32 8
  %414 = load i8**, i8*** %413, align 8
  %415 = getelementptr inbounds i8*, i8** %414, i64 2
  store i8* %411, i8** %415, align 8
  %416 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %417 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @DISP_DUMMY1_REG, align 4
  %420 = call i8* @build_command(i32 %418, i32 %419, i32 3)
  %421 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %422 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %421, i32 0, i32 8
  %423 = load i8**, i8*** %422, align 8
  %424 = getelementptr inbounds i8*, i8** %423, i64 3
  store i8* %420, i8** %424, align 8
  br label %425

425:                                              ; preds = %275, %164
  %426 = call i32 @put_cmd_string(%struct.cmdstring* byval(%struct.cmdstring) align 8 %6)
  store i32 %426, i32* %12, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %425
  %429 = load i32, i32* %12, align 4
  store i32 %429, i32* %3, align 4
  br label %455

430:                                              ; preds = %425
  %431 = load %struct.cmdstring*, %struct.cmdstring** %7, align 8
  %432 = getelementptr inbounds %struct.cmdstring, %struct.cmdstring* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = getelementptr inbounds %struct.dumchannel, %struct.dumchannel* %11, i32 0, i32 0
  store i32 %433, i32* %434, align 8
  %435 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %436 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %435, i32 0, i32 8
  %437 = load i64, i64* %436, align 8
  %438 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %439 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = sext i32 %440 to i64
  %442 = add nsw i64 %437, %441
  %443 = getelementptr inbounds %struct.dumchannel, %struct.dumchannel* %11, i32 0, i32 1
  store i64 %442, i64* %443, align 8
  %444 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %445 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %444, i32 0, i32 8
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.dum_ch_setup*, %struct.dum_ch_setup** %5, align 8
  %448 = getelementptr inbounds %struct.dum_ch_setup, %struct.dum_ch_setup* %447, i32 0, i32 3
  %449 = load i64, i64* %448, align 8
  %450 = add nsw i64 %446, %449
  %451 = getelementptr inbounds %struct.dumchannel, %struct.dumchannel* %11, i32 0, i32 2
  store i64 %450, i64* %451, align 8
  %452 = getelementptr inbounds %struct.dumchannel, %struct.dumchannel* %11, i32 0, i32 3
  store i32 2, i32* %452, align 8
  %453 = getelementptr inbounds %struct.dumchannel, %struct.dumchannel* %11, i32 0, i32 4
  store i32 4, i32* %453, align 4
  %454 = call i32 @put_channel(%struct.dumchannel* byval(%struct.dumchannel) align 8 %11)
  store i32 0, i32* %3, align 4
  br label %455

455:                                              ; preds = %430, %428
  %456 = load i32, i32* %3, align 4
  ret i32 %456
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @nof_bytes(%struct.dum_ch_setup*) #2

declare dso_local i32 @build_disp_window(%struct.dum_ch_setup*, %struct.disp_window*) #2

declare dso_local i8* @build_command(i32, i32, i32) #2

declare dso_local i8* @build_double_index(i32, i32) #2

declare dso_local i32 @put_cmd_string(%struct.cmdstring* byval(%struct.cmdstring) align 8) #2

declare dso_local i32 @put_channel(%struct.dumchannel* byval(%struct.dumchannel) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
