; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_68328fb.c_mc68x328fb_check_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_68328fb.c_mc68x328fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.fb_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@FB_VMODE_CONUPDATE = common dso_local global i32 0, align 4
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@videomemorysize = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @mc68x328fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc68x328fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @FB_VMODE_CONUPDATE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %13, %2
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 3
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 4
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %47
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %69, %61
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %78, 1
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 7
  store i32 1, i32* %82, align 4
  br label %122

83:                                               ; preds = %75
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = icmp sle i32 %86, 8
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 7
  store i32 8, i32* %90, align 4
  br label %121

91:                                               ; preds = %83
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %94, 16
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 7
  store i32 16, i32* %98, align 4
  br label %120

99:                                               ; preds = %91
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %102, 24
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 7
  store i32 24, i32* %106, align 4
  br label %119

107:                                              ; preds = %99
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = icmp sle i32 %110, 32
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 7
  store i32 32, i32* %114, align 4
  br label %118

115:                                              ; preds = %107
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %358

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %104
  br label %120

120:                                              ; preds = %119, %96
  br label %121

121:                                              ; preds = %120, %88
  br label %122

122:                                              ; preds = %121, %80
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %130 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %128, %131
  %133 = icmp slt i32 %125, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %122
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %137, %140
  %142 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %143 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %134, %122
  %145 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %146 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %152 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %150, %153
  %155 = icmp slt i32 %147, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %144
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %158 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %159, %162
  %164 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %165 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %156, %144
  %167 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %168 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %171 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @get_line_length(i32 %169, i32 %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %176 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = mul nsw i32 %174, %177
  %179 = load i32, i32* @videomemorysize, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %166
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %358

184:                                              ; preds = %166
  %185 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %186 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  switch i32 %187, label %345 [
    i32 1, label %188
    i32 8, label %213
    i32 16, label %238
    i32 24, label %295
    i32 32, label %320
  ]

188:                                              ; preds = %184
  %189 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %190 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %189, i32 0, i32 11
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  store i32 0, i32* %191, align 8
  %192 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %193 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %192, i32 0, i32 11
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  store i32 1, i32* %194, align 8
  %195 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %196 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %195, i32 0, i32 10
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  %198 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %199 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %198, i32 0, i32 10
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  store i32 1, i32* %200, align 4
  %201 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %202 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %201, i32 0, i32 9
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  store i32 0, i32* %203, align 8
  %204 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %205 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %204, i32 0, i32 9
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  store i32 1, i32* %206, align 4
  %207 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %208 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %207, i32 0, i32 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  store i32 0, i32* %209, align 8
  %210 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %211 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %210, i32 0, i32 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  store i32 0, i32* %212, align 4
  br label %345

213:                                              ; preds = %184
  %214 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %215 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %214, i32 0, i32 11
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  store i32 0, i32* %216, align 8
  %217 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %218 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %217, i32 0, i32 11
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  store i32 8, i32* %219, align 8
  %220 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %221 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %220, i32 0, i32 10
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  store i32 0, i32* %222, align 8
  %223 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %224 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %223, i32 0, i32 10
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 1
  store i32 8, i32* %225, align 4
  %226 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %227 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %226, i32 0, i32 9
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  store i32 0, i32* %228, align 8
  %229 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %230 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %229, i32 0, i32 9
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  store i32 8, i32* %231, align 4
  %232 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %233 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %232, i32 0, i32 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  store i32 0, i32* %234, align 8
  %235 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %236 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %235, i32 0, i32 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  store i32 0, i32* %237, align 4
  br label %345

238:                                              ; preds = %184
  %239 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %240 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %239, i32 0, i32 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %269

244:                                              ; preds = %238
  %245 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %246 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %245, i32 0, i32 11
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 2
  store i32 0, i32* %247, align 8
  %248 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %249 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %248, i32 0, i32 11
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  store i32 5, i32* %250, align 8
  %251 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %252 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %251, i32 0, i32 10
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  store i32 5, i32* %253, align 8
  %254 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %255 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %254, i32 0, i32 10
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  store i32 5, i32* %256, align 4
  %257 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %258 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %257, i32 0, i32 9
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  store i32 10, i32* %259, align 8
  %260 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %261 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %260, i32 0, i32 9
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  store i32 5, i32* %262, align 4
  %263 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %264 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %263, i32 0, i32 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  store i32 15, i32* %265, align 8
  %266 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %267 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %266, i32 0, i32 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 1
  store i32 1, i32* %268, align 4
  br label %294

269:                                              ; preds = %238
  %270 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %271 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %270, i32 0, i32 11
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 2
  store i32 0, i32* %272, align 8
  %273 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %274 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %273, i32 0, i32 11
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  store i32 5, i32* %275, align 8
  %276 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %277 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %276, i32 0, i32 10
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  store i32 5, i32* %278, align 8
  %279 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %280 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %279, i32 0, i32 10
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 1
  store i32 6, i32* %281, align 4
  %282 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %283 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %282, i32 0, i32 9
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 0
  store i32 11, i32* %284, align 8
  %285 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %286 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %285, i32 0, i32 9
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 1
  store i32 5, i32* %287, align 4
  %288 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %289 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %288, i32 0, i32 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  store i32 0, i32* %290, align 8
  %291 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %292 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %291, i32 0, i32 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 1
  store i32 0, i32* %293, align 4
  br label %294

294:                                              ; preds = %269, %244
  br label %345

295:                                              ; preds = %184
  %296 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %297 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %296, i32 0, i32 11
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 2
  store i32 0, i32* %298, align 8
  %299 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %300 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %299, i32 0, i32 11
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  store i32 8, i32* %301, align 8
  %302 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %303 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %302, i32 0, i32 10
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 0
  store i32 8, i32* %304, align 8
  %305 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %306 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %305, i32 0, i32 10
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  store i32 8, i32* %307, align 4
  %308 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %309 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %308, i32 0, i32 9
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  store i32 16, i32* %310, align 8
  %311 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %312 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %311, i32 0, i32 9
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 1
  store i32 8, i32* %313, align 4
  %314 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %315 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %314, i32 0, i32 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  store i32 0, i32* %316, align 8
  %317 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %318 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %317, i32 0, i32 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 1
  store i32 0, i32* %319, align 4
  br label %345

320:                                              ; preds = %184
  %321 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %322 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %321, i32 0, i32 11
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 2
  store i32 0, i32* %323, align 8
  %324 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %325 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %324, i32 0, i32 11
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  store i32 8, i32* %326, align 8
  %327 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %328 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %327, i32 0, i32 10
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 0
  store i32 8, i32* %329, align 8
  %330 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %331 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %330, i32 0, i32 10
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 1
  store i32 8, i32* %332, align 4
  %333 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %334 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %333, i32 0, i32 9
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  store i32 16, i32* %335, align 8
  %336 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %337 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %336, i32 0, i32 9
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 1
  store i32 8, i32* %338, align 4
  %339 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %340 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %339, i32 0, i32 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 0
  store i32 24, i32* %341, align 8
  %342 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %343 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %342, i32 0, i32 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 1
  store i32 8, i32* %344, align 4
  br label %345

345:                                              ; preds = %184, %320, %295, %294, %213, %188
  %346 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %347 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %346, i32 0, i32 11
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 1
  store i64 0, i64* %348, align 8
  %349 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %350 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %349, i32 0, i32 10
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 2
  store i64 0, i64* %351, align 8
  %352 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %353 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %352, i32 0, i32 9
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 2
  store i64 0, i64* %354, align 8
  %355 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %356 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %355, i32 0, i32 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 2
  store i64 0, i64* %357, align 8
  store i32 0, i32* %3, align 4
  br label %358

358:                                              ; preds = %345, %181, %115
  %359 = load i32, i32* %3, align 4
  ret i32 %359
}

declare dso_local i32 @get_line_length(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
