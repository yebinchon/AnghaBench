; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_configure_input_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_configure_input_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.urb*, i32* }
%struct.u132_endp = type { i64, i32, %struct.u132_ring*, i64, %struct.u132* }
%struct.u132_ring = type { i32 }
%struct.u132 = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"device has been removed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"device is being removed urb=%p\0A\00", align 1
@TD_CC_NOERROR = common dso_local global i32 0, align 4
@TD_DATAUNDERRUN = common dso_local global i32 0, align 4
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@u132_hcd_configure_empty_sent = common dso_local global i32 0, align 4
@TD_CC_STALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"giving back SETUP INPUT STALL urb %p\0A\00", align 1
@cc_to_error = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"giving back SETUP INPUT %s urb %p\0A\00", align 1
@cc_to_text = common dso_local global %struct.urb** null, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"CALLBACK called urb=%p unlinked=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @u132_hcd_configure_input_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_hcd_configure_input_recv(i8* %0, %struct.urb* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca %struct.urb*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.u132_endp*, align 8
  %26 = alloca %struct.u132*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.u132_ring*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store %struct.urb* %1, %struct.urb** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = bitcast i8* %33 to %struct.u132_endp*
  store %struct.u132_endp* %34, %struct.u132_endp** %25, align 8
  %35 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %36 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %35, i32 0, i32 4
  %37 = load %struct.u132*, %struct.u132** %36, align 8
  store %struct.u132* %37, %struct.u132** %26, align 8
  %38 = load %struct.u132*, %struct.u132** %26, align 8
  %39 = getelementptr inbounds %struct.u132, %struct.u132* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %42 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %27, align 4
  %47 = load %struct.u132*, %struct.u132** %26, align 8
  %48 = getelementptr inbounds %struct.u132, %struct.u132* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.u132*, %struct.u132** %26, align 8
  %51 = getelementptr inbounds %struct.u132, %struct.u132* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %72

54:                                               ; preds = %12
  %55 = load %struct.u132*, %struct.u132** %26, align 8
  %56 = getelementptr inbounds %struct.u132, %struct.u132* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.u132*, %struct.u132** %26, align 8
  %60 = getelementptr inbounds %struct.u132, %struct.u132* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.u132*, %struct.u132** %26, align 8
  %64 = getelementptr inbounds %struct.u132, %struct.u132* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load %struct.u132*, %struct.u132** %26, align 8
  %67 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %68 = load %struct.urb*, %struct.urb** %14, align 8
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32 @u132_hcd_forget_urb(%struct.u132* %66, %struct.u132_endp* %67, %struct.urb* %68, i32 %70)
  br label %243

72:                                               ; preds = %12
  %73 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %74 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %79 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load %struct.u132*, %struct.u132** %26, align 8
  %81 = getelementptr inbounds %struct.u132, %struct.u132* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load %struct.u132*, %struct.u132** %26, align 8
  %84 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %85 = load %struct.urb*, %struct.urb** %14, align 8
  %86 = load i32, i32* @EINTR, align 4
  %87 = sub nsw i32 0, %86
  %88 = call i32 @u132_hcd_giveback_urb(%struct.u132* %83, %struct.u132_endp* %84, %struct.urb* %85, i32 %87)
  br label %243

89:                                               ; preds = %72
  %90 = load %struct.u132*, %struct.u132** %26, align 8
  %91 = getelementptr inbounds %struct.u132, %struct.u132* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %89
  %95 = load %struct.u132*, %struct.u132** %26, align 8
  %96 = getelementptr inbounds %struct.u132, %struct.u132* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.urb*, %struct.urb** %14, align 8
  %100 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %99)
  %101 = load %struct.u132*, %struct.u132** %26, align 8
  %102 = getelementptr inbounds %struct.u132, %struct.u132* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.u132*, %struct.u132** %26, align 8
  %105 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %106 = load %struct.urb*, %struct.urb** %14, align 8
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  %109 = call i32 @u132_hcd_giveback_urb(%struct.u132* %104, %struct.u132_endp* %105, %struct.urb* %106, i32 %108)
  br label %243

110:                                              ; preds = %89
  %111 = load %struct.urb*, %struct.urb** %14, align 8
  %112 = getelementptr inbounds %struct.urb, %struct.urb* %111, i32 0, i32 2
  %113 = load %struct.urb*, %struct.urb** %112, align 8
  %114 = icmp ne %struct.urb* %113, null
  br i1 %114, label %226, label %115

115:                                              ; preds = %110
  %116 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %117 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %116, i32 0, i32 2
  %118 = load %struct.u132_ring*, %struct.u132_ring** %117, align 8
  store %struct.u132_ring* %118, %struct.u132_ring** %28, align 8
  %119 = load %struct.urb*, %struct.urb** %14, align 8
  %120 = getelementptr inbounds %struct.urb, %struct.urb* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %29, align 8
  %122 = load i32*, i32** %15, align 8
  store i32* %122, i32** %30, align 8
  %123 = load i32, i32* %16, align 4
  store i32 %123, i32* %31, align 4
  br label %124

124:                                              ; preds = %128, %115
  %125 = load i32, i32* %31, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %31, align 4
  %127 = icmp sgt i32 %125, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i32*, i32** %30, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %30, align 8
  %131 = load i32, i32* %129, align 4
  %132 = load i32*, i32** %29, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %29, align 8
  store i32 %131, i32* %132, align 4
  br label %124

134:                                              ; preds = %124
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.urb*, %struct.urb** %14, align 8
  %137 = getelementptr inbounds %struct.urb, %struct.urb* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* @TD_CC_NOERROR, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %152, label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* @TD_DATAUNDERRUN, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %179

145:                                              ; preds = %141
  %146 = load %struct.urb*, %struct.urb** %14, align 8
  %147 = getelementptr inbounds %struct.urb, %struct.urb* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %179

152:                                              ; preds = %145, %134
  %153 = load %struct.u132*, %struct.u132** %26, align 8
  %154 = getelementptr inbounds %struct.u132, %struct.u132* %153, i32 0, i32 1
  %155 = call i32 @mutex_unlock(i32* %154)
  %156 = load %struct.u132*, %struct.u132** %26, align 8
  %157 = getelementptr inbounds %struct.u132, %struct.u132* %156, i32 0, i32 2
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load %struct.u132_ring*, %struct.u132_ring** %28, align 8
  %160 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %163 = load %struct.urb*, %struct.urb** %14, align 8
  %164 = load i32, i32* %27, align 4
  %165 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %166 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @u132_hcd_configure_empty_sent, align 4
  %169 = call i32 @usb_ftdi_elan_edset_empty(%struct.TYPE_4__* %158, i32 %161, %struct.u132_endp* %162, %struct.urb* %163, i32 %164, i32 %167, i32 3, i32 %168)
  store i32 %169, i32* %32, align 4
  %170 = load i32, i32* %32, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %152
  %173 = load %struct.u132*, %struct.u132** %26, align 8
  %174 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %175 = load %struct.urb*, %struct.urb** %14, align 8
  %176 = load i32, i32* %32, align 4
  %177 = call i32 @u132_hcd_giveback_urb(%struct.u132* %173, %struct.u132_endp* %174, %struct.urb* %175, i32 %176)
  br label %178

178:                                              ; preds = %172, %152
  br label %243

179:                                              ; preds = %145, %141
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* @TD_CC_STALL, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %202

183:                                              ; preds = %179
  %184 = load %struct.u132*, %struct.u132** %26, align 8
  %185 = getelementptr inbounds %struct.u132, %struct.u132* %184, i32 0, i32 1
  %186 = call i32 @mutex_unlock(i32* %185)
  %187 = load %struct.u132*, %struct.u132** %26, align 8
  %188 = getelementptr inbounds %struct.u132, %struct.u132* %187, i32 0, i32 2
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load %struct.urb*, %struct.urb** %14, align 8
  %192 = call i32 @dev_warn(i32* %190, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %191)
  %193 = load %struct.u132*, %struct.u132** %26, align 8
  %194 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %195 = load %struct.urb*, %struct.urb** %14, align 8
  %196 = load i32*, i32** @cc_to_error, align 8
  %197 = load i32, i32* %19, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @u132_hcd_giveback_urb(%struct.u132* %193, %struct.u132_endp* %194, %struct.urb* %195, i32 %200)
  br label %243

202:                                              ; preds = %179
  %203 = load %struct.u132*, %struct.u132** %26, align 8
  %204 = getelementptr inbounds %struct.u132, %struct.u132* %203, i32 0, i32 1
  %205 = call i32 @mutex_unlock(i32* %204)
  %206 = load %struct.u132*, %struct.u132** %26, align 8
  %207 = getelementptr inbounds %struct.u132, %struct.u132* %206, i32 0, i32 2
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load %struct.urb**, %struct.urb*** @cc_to_text, align 8
  %211 = load i32, i32* %19, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.urb*, %struct.urb** %210, i64 %212
  %214 = load %struct.urb*, %struct.urb** %213, align 8
  %215 = load %struct.urb*, %struct.urb** %14, align 8
  %216 = call i32 (i32*, i8*, ...) @dev_err(i32* %209, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), %struct.urb* %214, %struct.urb* %215)
  %217 = load %struct.u132*, %struct.u132** %26, align 8
  %218 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %219 = load %struct.urb*, %struct.urb** %14, align 8
  %220 = load i32*, i32** @cc_to_error, align 8
  %221 = load i32, i32* %19, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @u132_hcd_giveback_urb(%struct.u132* %217, %struct.u132_endp* %218, %struct.urb* %219, i32 %224)
  br label %243

226:                                              ; preds = %110
  %227 = load %struct.u132*, %struct.u132** %26, align 8
  %228 = getelementptr inbounds %struct.u132, %struct.u132* %227, i32 0, i32 2
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load %struct.urb*, %struct.urb** %14, align 8
  %232 = load %struct.urb*, %struct.urb** %14, align 8
  %233 = getelementptr inbounds %struct.urb, %struct.urb* %232, i32 0, i32 2
  %234 = load %struct.urb*, %struct.urb** %233, align 8
  %235 = call i32 (i32*, i8*, ...) @dev_err(i32* %230, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), %struct.urb* %231, %struct.urb* %234)
  %236 = load %struct.u132*, %struct.u132** %26, align 8
  %237 = getelementptr inbounds %struct.u132, %struct.u132* %236, i32 0, i32 1
  %238 = call i32 @mutex_unlock(i32* %237)
  %239 = load %struct.u132*, %struct.u132** %26, align 8
  %240 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %241 = load %struct.urb*, %struct.urb** %14, align 8
  %242 = call i32 @u132_hcd_giveback_urb(%struct.u132* %239, %struct.u132_endp* %240, %struct.urb* %241, i32 0)
  br label %243

243:                                              ; preds = %226, %202, %183, %178, %94, %77, %54
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @u132_hcd_forget_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i32 @u132_hcd_giveback_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i32 @usb_ftdi_elan_edset_empty(%struct.TYPE_4__*, i32, %struct.u132_endp*, %struct.urb*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
