; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_reserve_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_reserve_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_virt_device = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.xhci_bw_info }
%struct.xhci_bw_info = type { i32 }
%struct.xhci_container_ctx = type { i32 }
%struct.xhci_input_control_ctx = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_virt_device*, %struct.xhci_container_ctx*)* @xhci_reserve_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_reserve_bandwidth(%struct.xhci_hcd* %0, %struct.xhci_virt_device* %1, %struct.xhci_container_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_virt_device*, align 8
  %7 = alloca %struct.xhci_container_ctx*, align 8
  %8 = alloca [31 x %struct.xhci_bw_info], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.xhci_input_control_ctx*, align 8
  %11 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_virt_device* %1, %struct.xhci_virt_device** %6, align 8
  store %struct.xhci_container_ctx* %2, %struct.xhci_container_ctx** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %13 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %18 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %16, %3
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %24 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %7, align 8
  %25 = call %struct.xhci_input_control_ctx* @xhci_get_input_control_ctx(%struct.xhci_hcd* %23, %struct.xhci_container_ctx* %24)
  store %struct.xhci_input_control_ctx* %25, %struct.xhci_input_control_ctx** %10, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %82, %22
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 31
  br i1 %28, label %29, label %85

29:                                               ; preds = %26
  %30 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @EP_IS_ADDED(%struct.xhci_input_control_ctx* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @EP_IS_DROPPED(%struct.xhci_input_control_ctx* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %82

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [31 x %struct.xhci_bw_info], [31 x %struct.xhci_bw_info]* %8, i64 0, i64 %42
  %44 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %45 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @memcpy(%struct.xhci_bw_info* %43, %struct.xhci_bw_info* %50, i32 4)
  %52 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %10, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @EP_IS_DROPPED(%struct.xhci_input_control_ctx* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %40
  %57 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %58 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %59 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %66 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %69 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %72 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %78 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = call i32 @xhci_drop_ep_from_interval_table(%struct.xhci_hcd* %57, %struct.xhci_bw_info* %64, i32 %67, i32 %70, %struct.TYPE_5__* %76, %struct.TYPE_6__* %79)
  br label %81

81:                                               ; preds = %56, %40
  br label %82

82:                                               ; preds = %81, %39
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %26

85:                                               ; preds = %26
  %86 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %87 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %88 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %10, align 8
  %91 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %92 = call i32 @xhci_update_bw_info(%struct.xhci_hcd* %86, i32 %89, %struct.xhci_input_control_ctx* %90, %struct.xhci_virt_device* %91)
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %127, %85
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 31
  br i1 %95, label %96, label %130

96:                                               ; preds = %93
  %97 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %10, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @EP_IS_ADDED(%struct.xhci_input_control_ctx* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %96
  %102 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %103 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %104 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %111 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %114 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %117 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  %122 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %123 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = call i32 @xhci_add_ep_to_interval_table(%struct.xhci_hcd* %102, %struct.xhci_bw_info* %109, i32 %112, i32 %115, %struct.TYPE_5__* %121, %struct.TYPE_6__* %124)
  br label %126

126:                                              ; preds = %101, %96
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %93

130:                                              ; preds = %93
  %131 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %132 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @xhci_check_bw_table(%struct.xhci_hcd* %131, %struct.xhci_virt_device* %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %130
  %137 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %138 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @xhci_update_tt_active_eps(%struct.xhci_hcd* %137, %struct.xhci_virt_device* %138, i32 %139)
  store i32 0, i32* %4, align 4
  br label %234

141:                                              ; preds = %130
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %228, %141
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 31
  br i1 %144, label %145, label %231

145:                                              ; preds = %142
  %146 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %10, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i64 @EP_IS_ADDED(%struct.xhci_input_control_ctx* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %145
  %151 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %10, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i64 @EP_IS_DROPPED(%struct.xhci_input_control_ctx* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  br label %228

156:                                              ; preds = %150, %145
  %157 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %10, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i64 @EP_IS_ADDED(%struct.xhci_input_control_ctx* %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %186

161:                                              ; preds = %156
  %162 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %163 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %164 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %163, i32 0, i32 1
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %171 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %174 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %177 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %176, i32 0, i32 1
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 %180
  %182 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %183 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %182, i32 0, i32 0
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = call i32 @xhci_drop_ep_from_interval_table(%struct.xhci_hcd* %162, %struct.xhci_bw_info* %169, i32 %172, i32 %175, %struct.TYPE_5__* %181, %struct.TYPE_6__* %184)
  br label %186

186:                                              ; preds = %161, %156
  %187 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %188 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %187, i32 0, i32 1
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [31 x %struct.xhci_bw_info], [31 x %struct.xhci_bw_info]* %8, i64 0, i64 %195
  %197 = call i32 @memcpy(%struct.xhci_bw_info* %193, %struct.xhci_bw_info* %196, i32 4)
  %198 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %10, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i64 @EP_IS_DROPPED(%struct.xhci_input_control_ctx* %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %227

202:                                              ; preds = %186
  %203 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %204 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %205 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %204, i32 0, i32 1
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %212 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %215 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %218 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %217, i32 0, i32 1
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i64 %221
  %223 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %6, align 8
  %224 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %223, i32 0, i32 0
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = call i32 @xhci_add_ep_to_interval_table(%struct.xhci_hcd* %203, %struct.xhci_bw_info* %210, i32 %213, i32 %216, %struct.TYPE_5__* %222, %struct.TYPE_6__* %225)
  br label %227

227:                                              ; preds = %202, %186
  br label %228

228:                                              ; preds = %227, %155
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %142

231:                                              ; preds = %142
  %232 = load i32, i32* @ENOMEM, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %4, align 4
  br label %234

234:                                              ; preds = %231, %136
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local %struct.xhci_input_control_ctx* @xhci_get_input_control_ctx(%struct.xhci_hcd*, %struct.xhci_container_ctx*) #1

declare dso_local i64 @EP_IS_ADDED(%struct.xhci_input_control_ctx*, i32) #1

declare dso_local i64 @EP_IS_DROPPED(%struct.xhci_input_control_ctx*, i32) #1

declare dso_local i32 @memcpy(%struct.xhci_bw_info*, %struct.xhci_bw_info*, i32) #1

declare dso_local i32 @xhci_drop_ep_from_interval_table(%struct.xhci_hcd*, %struct.xhci_bw_info*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @xhci_update_bw_info(%struct.xhci_hcd*, i32, %struct.xhci_input_control_ctx*, %struct.xhci_virt_device*) #1

declare dso_local i32 @xhci_add_ep_to_interval_table(%struct.xhci_hcd*, %struct.xhci_bw_info*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @xhci_check_bw_table(%struct.xhci_hcd*, %struct.xhci_virt_device*, i32) #1

declare dso_local i32 @xhci_update_tt_active_eps(%struct.xhci_hcd*, %struct.xhci_virt_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
