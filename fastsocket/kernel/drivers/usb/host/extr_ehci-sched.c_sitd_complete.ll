; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_sitd_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-sched.c_sitd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, i64, i32 }
%struct.ehci_sitd = type { i32, i64, i32, %struct.ehci_iso_stream*, %struct.urb*, i32 }
%struct.ehci_iso_stream = type { i32, i32, i32, i32, %struct.TYPE_5__*, i32, i64, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.urb = type { i32, %struct.usb_device*, i32, i32, i32, %struct.usb_iso_packet_descriptor* }
%struct.usb_device = type { i32 }
%struct.usb_iso_packet_descriptor = type { i64, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@SITD_ERRS = common dso_local global i32 0, align 4
@SITD_STS_DBE = common dso_local global i32 0, align 4
@ENOSR = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@SITD_STS_BABBLE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"deschedule devp %s ep%d%s-iso\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*, %struct.ehci_sitd*)* @sitd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sitd_complete(%struct.ehci_hcd* %0, %struct.ehci_sitd* %1) #0 {
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca %struct.ehci_sitd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ehci_iso_stream*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  store %struct.ehci_sitd* %1, %struct.ehci_sitd** %4, align 8
  %12 = load %struct.ehci_sitd*, %struct.ehci_sitd** %4, align 8
  %13 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %12, i32 0, i32 4
  %14 = load %struct.urb*, %struct.urb** %13, align 8
  store %struct.urb* %14, %struct.urb** %5, align 8
  store i32 -1, i32* %8, align 4
  %15 = load %struct.ehci_sitd*, %struct.ehci_sitd** %4, align 8
  %16 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %15, i32 0, i32 3
  %17 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %16, align 8
  store %struct.ehci_iso_stream* %17, %struct.ehci_iso_stream** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.ehci_sitd*, %struct.ehci_sitd** %4, align 8
  %19 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.urb*, %struct.urb** %5, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 5
  %23 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %23, i64 %25
  store %struct.usb_iso_packet_descriptor* %26, %struct.usb_iso_packet_descriptor** %6, align 8
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %28 = load %struct.ehci_sitd*, %struct.ehci_sitd** %4, align 8
  %29 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %28, i32 0, i32 5
  %30 = call i32 @hc32_to_cpup(%struct.ehci_hcd* %27, i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SITD_ERRS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %2
  %36 = load %struct.urb*, %struct.urb** %5, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SITD_STS_DBE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %35
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @usb_pipein(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @ENOSR, align 4
  %52 = sub nsw i32 0, %51
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @ECOMM, align 4
  %55 = sub nsw i32 0, %54
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %52, %50 ], [ %55, %53 ]
  %58 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %59 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %76

60:                                               ; preds = %35
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @SITD_STS_BABBLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @EOVERFLOW, align 4
  %67 = sub nsw i32 0, %66
  %68 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %69 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  br label %75

70:                                               ; preds = %60
  %71 = load i32, i32* @EPROTO, align 4
  %72 = sub nsw i32 0, %71
  %73 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %74 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %56
  br label %97

77:                                               ; preds = %2
  %78 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %79 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %78, i32 0, i32 2
  store i32 0, i32* %79, align 8
  %80 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %81 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @SITD_LENGTH(i32 %83)
  %85 = sub nsw i64 %82, %84
  %86 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %87 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %89 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.urb*, %struct.urb** %5, align 8
  %92 = getelementptr inbounds %struct.urb, %struct.urb* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 8
  br label %97

97:                                               ; preds = %77, %76
  %98 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %9, align 8
  %99 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 3
  %102 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %9, align 8
  %103 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  %108 = load %struct.urb*, %struct.urb** %5, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %97
  br label %180

113:                                              ; preds = %97
  %114 = load %struct.urb*, %struct.urb** %5, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 1
  %116 = load %struct.usb_device*, %struct.usb_device** %115, align 8
  store %struct.usb_device* %116, %struct.usb_device** %10, align 8
  %117 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %118 = load %struct.urb*, %struct.urb** %5, align 8
  %119 = call i32 @ehci_urb_done(%struct.ehci_hcd* %117, %struct.urb* %118, i32 0)
  store i32 1, i32* %11, align 4
  store %struct.urb* null, %struct.urb** %5, align 8
  %120 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %121 = call i32 @disable_periodic(%struct.ehci_hcd* %120)
  %122 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %123 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %122)
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, -1
  store i64 %127, i64* %125, align 8
  %128 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %129 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %128)
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %113
  %135 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %136 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = call i32 (...) @usb_amd_quirk_pll_enable()
  br label %141

141:                                              ; preds = %139, %134
  br label %142

142:                                              ; preds = %141, %113
  %143 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %9, align 8
  %144 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %143, i32 0, i32 7
  %145 = call i64 @list_is_singular(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %176

147:                                              ; preds = %142
  %148 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %9, align 8
  %149 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %152 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %151)
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = sub nsw i64 %156, %150
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 8
  %159 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %160 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %161 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %9, align 8
  %164 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, 15
  %167 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %9, align 8
  %168 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @USB_DIR_IN, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %175 = call i32 @ehci_vdbg(%struct.ehci_hcd* %159, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %162, i32 %166, i8* %174)
  br label %176

176:                                              ; preds = %147, %142
  %177 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %178 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %9, align 8
  %179 = call i32 @iso_stream_put(%struct.ehci_hcd* %177, %struct.ehci_iso_stream* %178)
  br label %180

180:                                              ; preds = %176, %112
  %181 = load %struct.ehci_sitd*, %struct.ehci_sitd** %4, align 8
  %182 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %181, i32 0, i32 4
  store %struct.urb* null, %struct.urb** %182, align 8
  %183 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %184 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.ehci_sitd*, %struct.ehci_sitd** %4, align 8
  %187 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %185, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %180
  %191 = load %struct.ehci_sitd*, %struct.ehci_sitd** %4, align 8
  %192 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %191, i32 0, i32 3
  store %struct.ehci_iso_stream* null, %struct.ehci_iso_stream** %192, align 8
  %193 = load %struct.ehci_sitd*, %struct.ehci_sitd** %4, align 8
  %194 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %193, i32 0, i32 2
  %195 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %9, align 8
  %196 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %195, i32 0, i32 5
  %197 = call i32 @list_move(i32* %194, i32* %196)
  %198 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %199 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %9, align 8
  %200 = call i32 @iso_stream_put(%struct.ehci_hcd* %198, %struct.ehci_iso_stream* %199)
  br label %219

201:                                              ; preds = %180
  %202 = load %struct.ehci_sitd*, %struct.ehci_sitd** %4, align 8
  %203 = getelementptr inbounds %struct.ehci_sitd, %struct.ehci_sitd* %202, i32 0, i32 2
  %204 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %205 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %204, i32 0, i32 2
  %206 = call i32 @list_move(i32* %203, i32* %205)
  %207 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %9, align 8
  %208 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %211, label %218

211:                                              ; preds = %201
  %212 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %9, align 8
  %213 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %212, i32 0, i32 4
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  store i32* null, i32** %215, align 8
  %216 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %9, align 8
  %217 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %216, i32 0, i32 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %217, align 8
  br label %218

218:                                              ; preds = %211, %201
  br label %219

219:                                              ; preds = %218, %190
  %220 = load i32, i32* %11, align 4
  ret i32 %220
}

declare dso_local i32 @hc32_to_cpup(%struct.ehci_hcd*, i32*) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i64 @SITD_LENGTH(i32) #1

declare dso_local i32 @ehci_urb_done(%struct.ehci_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @disable_periodic(%struct.ehci_hcd*) #1

declare dso_local %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @usb_amd_quirk_pll_enable(...) #1

declare dso_local i64 @list_is_singular(i32*) #1

declare dso_local i32 @ehci_vdbg(%struct.ehci_hcd*, i8*, i32, i32, i8*) #1

declare dso_local i32 @iso_stream_put(%struct.ehci_hcd*, %struct.ehci_iso_stream*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
