; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_tidy_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_tidy_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbduxsub = type { i32, i32, i64, i64, i64, %struct.TYPE_6__**, %struct.TYPE_6__**, %struct.TYPE_6__**, %struct.TYPE_6__**, %struct.TYPE_6__*, %struct.TYPE_6__**, %struct.TYPE_6__**, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__** }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"comedi_: tiding up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbduxsub*)* @tidy_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tidy_up(%struct.usbduxsub* %0) #0 {
  %2 = alloca %struct.usbduxsub*, align 8
  %3 = alloca i32, align 4
  store %struct.usbduxsub* %0, %struct.usbduxsub** %2, align 8
  %4 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %5 = icmp ne %struct.usbduxsub* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %265

7:                                                ; preds = %1
  %8 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %9 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %8, i32 0, i32 13
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %14 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %13, i32 0, i32 13
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %19 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %18, i32 0, i32 13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call i32 @usb_set_intfdata(%struct.TYPE_5__* %20, i32* null)
  br label %22

22:                                               ; preds = %17, %7
  %23 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %24 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %23, i32 0, i32 12
  store i64 0, i64* %24, align 8
  %25 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %26 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %25, i32 0, i32 11
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %26, align 8
  %28 = icmp ne %struct.TYPE_6__** %27, null
  br i1 %28, label %29, label %97

29:                                               ; preds = %22
  %30 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %31 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %36 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %38 = call i32 @usbduxsub_unlink_InURBs(%struct.usbduxsub* %37)
  br label %39

39:                                               ; preds = %34, %29
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %87, %39
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %43 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %90

46:                                               ; preds = %40
  %47 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %48 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %47, i32 0, i32 11
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %49, i64 %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %54, align 8
  %56 = call i32 @kfree(%struct.TYPE_6__** %55)
  %57 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %58 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %57, i32 0, i32 11
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %64, align 8
  %65 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %66 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %65, i32 0, i32 11
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %67, i64 %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = call i32 @usb_kill_urb(%struct.TYPE_6__* %71)
  %73 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %74 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %73, i32 0, i32 11
  %75 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %75, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = call i32 @usb_free_urb(%struct.TYPE_6__* %79)
  %81 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %82 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %81, i32 0, i32 11
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 %85
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %86, align 8
  br label %87

87:                                               ; preds = %46
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %40

90:                                               ; preds = %40
  %91 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %92 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %91, i32 0, i32 11
  %93 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %92, align 8
  %94 = call i32 @kfree(%struct.TYPE_6__** %93)
  %95 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %96 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %95, i32 0, i32 11
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %96, align 8
  br label %97

97:                                               ; preds = %90, %22
  %98 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %99 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %98, i32 0, i32 10
  %100 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %99, align 8
  %101 = icmp ne %struct.TYPE_6__** %100, null
  br i1 %101, label %102, label %192

102:                                              ; preds = %97
  %103 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %104 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %109 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %108, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %111 = call i32 @usbduxsub_unlink_OutURBs(%struct.usbduxsub* %110)
  br label %112

112:                                              ; preds = %107, %102
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %182, %112
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %116 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %185

119:                                              ; preds = %113
  %120 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %121 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %120, i32 0, i32 10
  %122 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %121, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %122, i64 %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %127, align 8
  %129 = icmp ne %struct.TYPE_6__** %128, null
  br i1 %129, label %130, label %149

130:                                              ; preds = %119
  %131 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %132 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %131, i32 0, i32 10
  %133 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %132, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %133, i64 %135
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %138, align 8
  %140 = call i32 @kfree(%struct.TYPE_6__** %139)
  %141 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %142 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %141, i32 0, i32 10
  %143 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %142, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %143, i64 %145
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %148, align 8
  br label %149

149:                                              ; preds = %130, %119
  %150 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %151 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %150, i32 0, i32 10
  %152 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %152, i64 %154
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = icmp ne %struct.TYPE_6__* %156, null
  br i1 %157, label %158, label %181

158:                                              ; preds = %149
  %159 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %160 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %159, i32 0, i32 10
  %161 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %161, i64 %163
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = call i32 @usb_kill_urb(%struct.TYPE_6__* %165)
  %167 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %168 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %167, i32 0, i32 10
  %169 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %168, align 8
  %170 = load i32, i32* %3, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %169, i64 %171
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = call i32 @usb_free_urb(%struct.TYPE_6__* %173)
  %175 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %176 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %175, i32 0, i32 10
  %177 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %176, align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %177, i64 %179
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %180, align 8
  br label %181

181:                                              ; preds = %158, %149
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %3, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %3, align 4
  br label %113

185:                                              ; preds = %113
  %186 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %187 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %186, i32 0, i32 10
  %188 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %187, align 8
  %189 = call i32 @kfree(%struct.TYPE_6__** %188)
  %190 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %191 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %190, i32 0, i32 10
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %191, align 8
  br label %192

192:                                              ; preds = %185, %97
  %193 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %194 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %193, i32 0, i32 9
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = icmp ne %struct.TYPE_6__* %195, null
  br i1 %196, label %197, label %228

197:                                              ; preds = %192
  %198 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %199 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %204 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %203, i32 0, i32 2
  store i64 0, i64* %204, align 8
  %205 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %206 = call i32 @usbduxsub_unlink_PwmURBs(%struct.usbduxsub* %205)
  br label %207

207:                                              ; preds = %202, %197
  %208 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %209 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %208, i32 0, i32 9
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %211, align 8
  %213 = call i32 @kfree(%struct.TYPE_6__** %212)
  %214 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %215 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %214, i32 0, i32 9
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %217, align 8
  %218 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %219 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %218, i32 0, i32 9
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = call i32 @usb_kill_urb(%struct.TYPE_6__* %220)
  %222 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %223 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %222, i32 0, i32 9
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = call i32 @usb_free_urb(%struct.TYPE_6__* %224)
  %226 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %227 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %226, i32 0, i32 9
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %227, align 8
  br label %228

228:                                              ; preds = %207, %192
  %229 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %230 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %229, i32 0, i32 7
  %231 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %230, align 8
  %232 = call i32 @kfree(%struct.TYPE_6__** %231)
  %233 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %234 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %233, i32 0, i32 7
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %234, align 8
  %235 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %236 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %235, i32 0, i32 8
  %237 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %236, align 8
  %238 = call i32 @kfree(%struct.TYPE_6__** %237)
  %239 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %240 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %239, i32 0, i32 8
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %240, align 8
  %241 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %242 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %241, i32 0, i32 7
  %243 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %242, align 8
  %244 = call i32 @kfree(%struct.TYPE_6__** %243)
  %245 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %246 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %245, i32 0, i32 7
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %246, align 8
  %247 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %248 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %247, i32 0, i32 6
  %249 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %248, align 8
  %250 = call i32 @kfree(%struct.TYPE_6__** %249)
  %251 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %252 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %251, i32 0, i32 6
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %252, align 8
  %253 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %254 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %253, i32 0, i32 5
  %255 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %254, align 8
  %256 = call i32 @kfree(%struct.TYPE_6__** %255)
  %257 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %258 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %257, i32 0, i32 5
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %258, align 8
  %259 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %260 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %259, i32 0, i32 4
  store i64 0, i64* %260, align 8
  %261 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %262 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %261, i32 0, i32 3
  store i64 0, i64* %262, align 8
  %263 = load %struct.usbduxsub*, %struct.usbduxsub** %2, align 8
  %264 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %263, i32 0, i32 2
  store i64 0, i64* %264, align 8
  br label %265

265:                                              ; preds = %228, %6
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @usb_set_intfdata(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @usbduxsub_unlink_InURBs(%struct.usbduxsub*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__**) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_6__*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_6__*) #1

declare dso_local i32 @usbduxsub_unlink_OutURBs(%struct.usbduxsub*) #1

declare dso_local i32 @usbduxsub_unlink_PwmURBs(%struct.usbduxsub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
