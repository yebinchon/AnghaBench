; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_free_streams.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_free_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_device = type { i64 }
%struct.usb_host_endpoint = type { i32 }
%struct.xhci_hcd = type { i32, %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.xhci_command* }
%struct.xhci_command = type { i32 }
%struct.xhci_ep_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EP_GETTING_NO_STREAMS = common dso_local global i32 0, align 4
@EP_HAS_STREAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_free_streams(%struct.usb_hcd* %0, %struct.usb_device* %1, %struct.usb_host_endpoint** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_host_endpoint**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xhci_hcd*, align 8
  %15 = alloca %struct.xhci_virt_device*, align 8
  %16 = alloca %struct.xhci_command*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.xhci_ep_ctx*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %7, align 8
  store %struct.usb_device* %1, %struct.usb_device** %8, align 8
  store %struct.usb_host_endpoint** %2, %struct.usb_host_endpoint*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %22 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %21)
  store %struct.xhci_hcd* %22, %struct.xhci_hcd** %14, align 8
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %24 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %23, i32 0, i32 1
  %25 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %24, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %25, i64 %28
  %30 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %29, align 8
  store %struct.xhci_virt_device* %30, %struct.xhci_virt_device** %15, align 8
  %31 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %32 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %31, i32 0, i32 0
  %33 = load i64, i64* %18, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %37 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @xhci_calculate_no_streams_bitmask(%struct.xhci_hcd* %35, %struct.usb_device* %36, %struct.usb_host_endpoint** %37, i32 %38)
  store i64 %39, i64* %19, align 8
  %40 = load i64, i64* %19, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %5
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %44 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %43, i32 0, i32 0
  %45 = load i64, i64* %18, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %208

49:                                               ; preds = %5
  %50 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %9, align 8
  %51 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %50, i64 0
  %52 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %51, align 8
  %53 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %52, i32 0, i32 0
  %54 = call i32 @xhci_get_endpoint_index(i32* %53)
  store i32 %54, i32* %17, align 4
  %55 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %15, align 8
  %56 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %17, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.xhci_command*, %struct.xhci_command** %63, align 8
  store %struct.xhci_command* %64, %struct.xhci_command** %16, align 8
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %118, %49
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %121

69:                                               ; preds = %65
  %70 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %9, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %70, i64 %72
  %74 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %73, align 8
  %75 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %74, i32 0, i32 0
  %76 = call i32 @xhci_get_endpoint_index(i32* %75)
  store i32 %76, i32* %17, align 4
  %77 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %78 = load %struct.xhci_command*, %struct.xhci_command** %16, align 8
  %79 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %77, i32 %80, i32 %81)
  store %struct.xhci_ep_ctx* %82, %struct.xhci_ep_ctx** %20, align 8
  %83 = load i32, i32* @EP_GETTING_NO_STREAMS, align 4
  %84 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %85 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %84, i32 0, i32 1
  %86 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %85, align 8
  %87 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %88 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %86, i64 %89
  %91 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %90, align 8
  %92 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %83
  store i32 %99, i32* %97, align 8
  %100 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %101 = load %struct.xhci_command*, %struct.xhci_command** %16, align 8
  %102 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %15, align 8
  %105 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @xhci_endpoint_copy(%struct.xhci_hcd* %100, i32 %103, i32 %106, i32 %107)
  %109 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %110 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %20, align 8
  %111 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %15, align 8
  %112 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = call i32 @xhci_setup_no_streams_ep_input_ctx(%struct.xhci_hcd* %109, %struct.xhci_ep_ctx* %110, %struct.TYPE_3__* %116)
  br label %118

118:                                              ; preds = %69
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %65

121:                                              ; preds = %65
  %122 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %123 = load %struct.xhci_command*, %struct.xhci_command** %16, align 8
  %124 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %15, align 8
  %127 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* %19, align 8
  %131 = call i32 @xhci_setup_input_ctx_for_config_ep(%struct.xhci_hcd* %122, i32 %125, i32 %128, i64 %129, i64 %130)
  %132 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %133 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %132, i32 0, i32 0
  %134 = load i64, i64* %18, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %137 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %138 = load %struct.xhci_command*, %struct.xhci_command** %16, align 8
  %139 = call i32 @xhci_configure_endpoint(%struct.xhci_hcd* %136, %struct.usb_device* %137, %struct.xhci_command* %138, i32 0, i32 1)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %121
  %143 = load i32, i32* %13, align 4
  store i32 %143, i32* %6, align 4
  br label %208

144:                                              ; preds = %121
  %145 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %146 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %145, i32 0, i32 0
  %147 = load i64, i64* %18, align 8
  %148 = call i32 @spin_lock_irqsave(i32* %146, i64 %147)
  store i32 0, i32* %12, align 4
  br label %149

149:                                              ; preds = %200, %144
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %203

153:                                              ; preds = %149
  %154 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %9, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %154, i64 %156
  %158 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %157, align 8
  %159 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %158, i32 0, i32 0
  %160 = call i32 @xhci_get_endpoint_index(i32* %159)
  store i32 %160, i32* %17, align 4
  %161 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %162 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %15, align 8
  %163 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %162, i32 0, i32 0
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load i32, i32* %17, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = call i32 @xhci_free_stream_info(%struct.xhci_hcd* %161, %struct.TYPE_4__* %169)
  %171 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %15, align 8
  %172 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %171, i32 0, i32 0
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %177, align 8
  %178 = load i32, i32* @EP_GETTING_NO_STREAMS, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %15, align 8
  %181 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %180, i32 0, i32 0
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = load i32, i32* %17, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, %179
  store i32 %188, i32* %186, align 8
  %189 = load i32, i32* @EP_HAS_STREAMS, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %15, align 8
  %192 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %191, i32 0, i32 0
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = load i32, i32* %17, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = and i32 %198, %190
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %153
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %149

203:                                              ; preds = %149
  %204 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %205 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %204, i32 0, i32 0
  %206 = load i64, i64* %18, align 8
  %207 = call i32 @spin_unlock_irqrestore(i32* %205, i64 %206)
  store i32 0, i32* %6, align 4
  br label %208

208:                                              ; preds = %203, %142, %42
  %209 = load i32, i32* %6, align 4
  ret i32 %209
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @xhci_calculate_no_streams_bitmask(%struct.xhci_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xhci_get_endpoint_index(i32*) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @xhci_endpoint_copy(%struct.xhci_hcd*, i32, i32, i32) #1

declare dso_local i32 @xhci_setup_no_streams_ep_input_ctx(%struct.xhci_hcd*, %struct.xhci_ep_ctx*, %struct.TYPE_3__*) #1

declare dso_local i32 @xhci_setup_input_ctx_for_config_ep(%struct.xhci_hcd*, i32, i32, i64, i64) #1

declare dso_local i32 @xhci_configure_endpoint(%struct.xhci_hcd*, %struct.usb_device*, %struct.xhci_command*, i32, i32) #1

declare dso_local i32 @xhci_free_stream_info(%struct.xhci_hcd*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
