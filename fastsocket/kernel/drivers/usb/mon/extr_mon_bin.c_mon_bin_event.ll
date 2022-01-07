; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_bin_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_bin.c_mon_bin_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_bin = type { i32, i32, i32, i32, i64 }
%struct.urb = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.timeval = type { i32, i32 }
%struct.mon_bin_hdr = type { i8, i8, i64, i32, i32, i32, i8, i32, i8, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@ISODESC_MAX = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i8 0, align 1
@PKT_SIZE = common dso_local global i32 0, align 4
@xfer_to_pipe = common dso_local global i32* null, align 8
@PKT_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_reader_bin*, %struct.urb*, i8, i32)* @mon_bin_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_bin_event(%struct.mon_reader_bin* %0, %struct.urb* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca %struct.mon_reader_bin*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.timeval, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca %struct.mon_bin_hdr*, align 8
  %20 = alloca i8, align 1
  store %struct.mon_reader_bin* %0, %struct.mon_reader_bin** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  %21 = load %struct.urb*, %struct.urb** %6, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %24, %struct.usb_endpoint_descriptor** %9, align 8
  store i8 0, i8* %20, align 1
  %25 = call i32 @do_gettimeofday(%struct.timeval* %11)
  %26 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %27 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %26, i32 0, i32 2
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %31 = call i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %4
  %34 = load %struct.urb*, %struct.urb** %6, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %16, align 4
  br label %52

39:                                               ; preds = %33
  %40 = load %struct.urb*, %struct.urb** %6, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ISODESC_MAX, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @ISODESC_MAX, align 4
  store i32 %46, i32* %16, align 4
  br label %51

47:                                               ; preds = %39
  %48 = load %struct.urb*, %struct.urb** %6, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %47, %45
  br label %52

52:                                               ; preds = %51, %38
  br label %54

53:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %16, align 4
  %56 = zext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %17, align 4
  %59 = load i8, i8* %7, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 83
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.urb*, %struct.urb** %6, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  br label %70

66:                                               ; preds = %54
  %67 = load %struct.urb*, %struct.urb** %6, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i32 [ %65, %62 ], [ %69, %66 ]
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %75 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sdiv i32 %76, 5
  %78 = icmp uge i32 %73, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %81 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %82, 5
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %79, %70
  %85 = load %struct.urb*, %struct.urb** %6, align 8
  %86 = call i64 @usb_urb_dir_in(%struct.urb* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i8, i8* %7, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 83
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 0, i32* %14, align 4
  store i8 60, i8* %20, align 1
  br label %93

93:                                               ; preds = %92, %88
  %94 = load i8, i8* @USB_DIR_IN, align 1
  store i8 %94, i8* %18, align 1
  br label %101

95:                                               ; preds = %84
  %96 = load i8, i8* %7, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 67
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 0, i32* %14, align 4
  store i8 62, i8* %20, align 1
  br label %100

100:                                              ; preds = %99, %95
  store i8 0, i8* %18, align 1
  br label %101

101:                                              ; preds = %100, %93
  %102 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %103 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @PKT_SIZE, align 4
  %110 = add i32 %108, %109
  %111 = load i32, i32* %17, align 4
  %112 = add i32 %110, %111
  %113 = call i32 @mon_buff_area_alloc_contiguous(%struct.mon_reader_bin* %107, i32 %112)
  store i32 %113, i32* %13, align 4
  br label %122

114:                                              ; preds = %101
  %115 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @PKT_SIZE, align 4
  %118 = add i32 %116, %117
  %119 = load i32, i32* %17, align 4
  %120 = add i32 %118, %119
  %121 = call i32 @mon_buff_area_alloc(%struct.mon_reader_bin* %115, i32 %120)
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %114, %106
  %123 = load i32, i32* %13, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %127 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %131 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %130, i32 0, i32 2
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  br label %360

134:                                              ; preds = %122
  %135 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin* %135, i32 %136)
  store %struct.mon_bin_hdr* %137, %struct.mon_bin_hdr** %19, align 8
  %138 = load i32, i32* @PKT_SIZE, align 4
  %139 = load i32, i32* %13, align 4
  %140 = add i32 %139, %138
  store i32 %140, i32* %13, align 4
  %141 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %142 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp uge i32 %140, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  store i32 0, i32* %13, align 4
  br label %146

146:                                              ; preds = %145, %134
  %147 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %148 = load i32, i32* @PKT_SIZE, align 4
  %149 = call i32 @memset(%struct.mon_bin_hdr* %147, i32 0, i32 %148)
  %150 = load i8, i8* %7, align 1
  %151 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %152 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %151, i32 0, i32 0
  store i8 %150, i8* %152, align 8
  %153 = load i32*, i32** @xfer_to_pipe, align 8
  %154 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %155 = call i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %154)
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %159 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %158, i32 0, i32 17
  store i32 %157, i32* %159, align 8
  %160 = load i8, i8* %18, align 1
  %161 = zext i8 %160 to i32
  %162 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %163 = call zeroext i8 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %162)
  %164 = zext i8 %163 to i32
  %165 = or i32 %161, %164
  %166 = trunc i32 %165 to i8
  %167 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %168 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %167, i32 0, i32 1
  store i8 %166, i8* %168, align 1
  %169 = load %struct.urb*, %struct.urb** %6, align 8
  %170 = getelementptr inbounds %struct.urb, %struct.urb* %169, i32 0, i32 7
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %175 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %174, i32 0, i32 16
  store i32 %173, i32* %175, align 4
  %176 = load %struct.urb*, %struct.urb** %6, align 8
  %177 = getelementptr inbounds %struct.urb, %struct.urb* %176, i32 0, i32 7
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %184 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %183, i32 0, i32 15
  store i32 %182, i32* %184, align 8
  %185 = load %struct.urb*, %struct.urb** %6, align 8
  %186 = ptrtoint %struct.urb* %185 to i64
  %187 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %188 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  %189 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %192 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %191, i32 0, i32 14
  store i32 %190, i32* %192, align 4
  %193 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %196 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %195, i32 0, i32 13
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %199 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* %12, align 4
  %201 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %202 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* %17, align 4
  %205 = add i32 %203, %204
  %206 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %207 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %206, i32 0, i32 5
  store i32 %205, i32* %207, align 8
  %208 = load %struct.urb*, %struct.urb** %6, align 8
  %209 = getelementptr inbounds %struct.urb, %struct.urb* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %212 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %211, i32 0, i32 12
  store i32 %210, i32* %212, align 4
  %213 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %214 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %146
  %217 = load %struct.urb*, %struct.urb** %6, align 8
  %218 = getelementptr inbounds %struct.urb, %struct.urb* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %221 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %220, i32 0, i32 11
  store i32 %219, i32* %221, align 8
  br label %252

222:                                              ; preds = %146
  %223 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %224 = call i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %251

226:                                              ; preds = %222
  %227 = load %struct.urb*, %struct.urb** %6, align 8
  %228 = getelementptr inbounds %struct.urb, %struct.urb* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %231 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %230, i32 0, i32 11
  store i32 %229, i32* %231, align 8
  %232 = load %struct.urb*, %struct.urb** %6, align 8
  %233 = getelementptr inbounds %struct.urb, %struct.urb* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %236 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %235, i32 0, i32 10
  store i32 %234, i32* %236, align 4
  %237 = load %struct.urb*, %struct.urb** %6, align 8
  %238 = getelementptr inbounds %struct.urb, %struct.urb* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %241 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %240, i32 0, i32 9
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 1
  store i32 %239, i32* %243, align 4
  %244 = load %struct.urb*, %struct.urb** %6, align 8
  %245 = getelementptr inbounds %struct.urb, %struct.urb* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %248 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %247, i32 0, i32 9
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  store i32 %246, i32* %250, align 4
  br label %251

251:                                              ; preds = %226, %222
  br label %252

252:                                              ; preds = %251, %216
  %253 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %254 = call i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %270

256:                                              ; preds = %252
  %257 = load i8, i8* %7, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 83
  br i1 %259, label %260, label %270

260:                                              ; preds = %256
  %261 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %262 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %261, i32 0, i32 9
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.urb*, %struct.urb** %6, align 8
  %266 = load i8, i8* %7, align 1
  %267 = call signext i8 @mon_bin_get_setup(i32 %264, %struct.urb* %265, i8 signext %266)
  %268 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %269 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %268, i32 0, i32 6
  store i8 %267, i8* %269, align 4
  br label %273

270:                                              ; preds = %256, %252
  %271 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %272 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %271, i32 0, i32 6
  store i8 45, i8* %272, align 4
  br label %273

273:                                              ; preds = %270, %260
  %274 = load i32, i32* %16, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %300

276:                                              ; preds = %273
  %277 = load i32, i32* %16, align 4
  %278 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %279 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %278, i32 0, i32 7
  store i32 %277, i32* %279, align 8
  %280 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %281 = load i32, i32* %13, align 4
  %282 = load %struct.urb*, %struct.urb** %6, align 8
  %283 = load i8, i8* %7, align 1
  %284 = load i32, i32* %16, align 4
  %285 = call i32 @mon_bin_get_isodesc(%struct.mon_reader_bin* %280, i32 %281, %struct.urb* %282, i8 signext %283, i32 %284)
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* %13, align 4
  %288 = add i32 %287, %286
  store i32 %288, i32* %13, align 4
  %289 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %290 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp uge i32 %288, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %276
  %294 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %295 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sub i32 %297, %296
  store i32 %298, i32* %13, align 4
  br label %299

299:                                              ; preds = %293, %276
  br label %300

300:                                              ; preds = %299, %273
  %301 = load i32, i32* %14, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %348

303:                                              ; preds = %300
  %304 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %305 = load i32, i32* %13, align 4
  %306 = load %struct.urb*, %struct.urb** %6, align 8
  %307 = load i32, i32* %14, align 4
  %308 = call signext i8 @mon_bin_get_data(%struct.mon_reader_bin* %304, i32 %305, %struct.urb* %306, i32 %307)
  %309 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %310 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %309, i32 0, i32 8
  store i8 %308, i8* %310, align 4
  %311 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %312 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %311, i32 0, i32 8
  %313 = load i8, i8* %312, align 4
  %314 = sext i8 %313 to i32
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %347

316:                                              ; preds = %303
  %317 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %318 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @PKT_ALIGN, align 4
  %321 = add i32 %319, %320
  %322 = sub i32 %321, 1
  %323 = load i32, i32* @PKT_ALIGN, align 4
  %324 = sub nsw i32 %323, 1
  %325 = xor i32 %324, -1
  %326 = and i32 %322, %325
  store i32 %326, i32* %15, align 4
  %327 = load i32, i32* %14, align 4
  %328 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %329 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 8
  %331 = sub i32 %330, %327
  store i32 %331, i32* %329, align 8
  %332 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %333 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @PKT_ALIGN, align 4
  %336 = add i32 %334, %335
  %337 = sub i32 %336, 1
  %338 = load i32, i32* @PKT_ALIGN, align 4
  %339 = sub nsw i32 %338, 1
  %340 = xor i32 %339, -1
  %341 = and i32 %337, %340
  %342 = load i32, i32* %15, align 4
  %343 = sub i32 %342, %341
  store i32 %343, i32* %15, align 4
  %344 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %345 = load i32, i32* %15, align 4
  %346 = call i32 @mon_buff_area_shrink(%struct.mon_reader_bin* %344, i32 %345)
  br label %347

347:                                              ; preds = %316, %303
  br label %352

348:                                              ; preds = %300
  %349 = load i8, i8* %20, align 1
  %350 = load %struct.mon_bin_hdr*, %struct.mon_bin_hdr** %19, align 8
  %351 = getelementptr inbounds %struct.mon_bin_hdr, %struct.mon_bin_hdr* %350, i32 0, i32 8
  store i8 %349, i8* %351, align 4
  br label %352

352:                                              ; preds = %348, %347
  %353 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %354 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %353, i32 0, i32 2
  %355 = load i64, i64* %10, align 8
  %356 = call i32 @spin_unlock_irqrestore(i32* %354, i64 %355)
  %357 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %5, align 8
  %358 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %357, i32 0, i32 1
  %359 = call i32 @wake_up(i32* %358)
  br label %360

360:                                              ; preds = %352, %125
  ret void
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i32 @mon_buff_area_alloc_contiguous(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @mon_buff_area_alloc(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.mon_bin_hdr* @MON_OFF2HDR(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @memset(%struct.mon_bin_hdr*, i32, i32) #1

declare dso_local i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local zeroext i8 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor*) #1

declare dso_local signext i8 @mon_bin_get_setup(i32, %struct.urb*, i8 signext) #1

declare dso_local i32 @mon_bin_get_isodesc(%struct.mon_reader_bin*, i32, %struct.urb*, i8 signext, i32) #1

declare dso_local signext i8 @mon_bin_get_data(%struct.mon_reader_bin*, i32, %struct.urb*, i32) #1

declare dso_local i32 @mon_buff_area_shrink(%struct.mon_reader_bin*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
