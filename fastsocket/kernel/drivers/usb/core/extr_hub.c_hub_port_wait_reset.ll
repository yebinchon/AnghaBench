; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_wait_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_wait_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, i32 }
%struct.usb_device = type { i32 }

@HUB_RESET_TIMEOUT = common dso_local global i32 0, align 4
@USB_PORT_STAT_RESET = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_FEAT_C_CONNECTION = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_LINK_STATE = common dso_local global i32 0, align 4
@USB_PORT_FEAT_C_PORT_LINK_STATE = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_RESET = common dso_local global i32 0, align 4
@USB_PORT_FEAT_C_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"hot reset failed, warm reset port %d\0A\00", align 1
@HUB_BH_RESET_TIME = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@USB_PORT_STAT_ENABLE = common dso_local global i32 0, align 4
@USB_SPEED_WIRELESS = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@USB_PORT_STAT_HIGH_SPEED = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_PORT_STAT_LOW_SPEED = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@HUB_SHORT_RESET_TIME = common dso_local global i32 0, align 4
@HUB_LONG_RESET_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"port %d not %sreset yet, waiting %dms\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"warm \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*, i32, %struct.usb_device*, i32, i32)* @hub_port_wait_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_port_wait_reset(%struct.usb_hub* %0, i32 %1, %struct.usb_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_device* %2, %struct.usb_device** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %204, %5
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @HUB_RESET_TIMEOUT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %208

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @msleep(i32 %22)
  %24 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @hub_port_status(%struct.usb_hub* %24, i32 %25, i32* %14, i32* %15)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %211

31:                                               ; preds = %21
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @USB_PORT_STAT_RESET, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %186

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %171, label %40

40:                                               ; preds = %37
  %41 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i64 @hub_port_warm_reset_required(%struct.usb_hub* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %105

45:                                               ; preds = %40
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %52 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @USB_PORT_FEAT_C_CONNECTION, align 4
  %56 = call i32 @clear_port_feature(i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %45
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @USB_PORT_STAT_C_LINK_STATE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %64 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @USB_PORT_FEAT_C_PORT_LINK_STATE, align 4
  %68 = call i32 @clear_port_feature(i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %57
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @USB_PORT_STAT_C_RESET, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %76 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @USB_PORT_FEAT_C_RESET, align 4
  %80 = call i32 @clear_port_feature(i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %69
  %82 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %83 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %90 = load i32, i32* @HUB_BH_RESET_TIME, align 4
  %91 = call i32 @hub_port_reset(%struct.usb_hub* %87, i32 %88, %struct.usb_device* %89, i32 %90, i32 1)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %81
  %97 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %98 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @USB_PORT_FEAT_C_CONNECTION, align 4
  %102 = call i32 @clear_port_feature(i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %81
  %104 = load i32, i32* %16, align 4
  store i32 %104, i32* %6, align 4
  br label %211

105:                                              ; preds = %40
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @ENOTCONN, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %211

113:                                              ; preds = %105
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* @ENOTCONN, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %6, align 4
  br label %211

121:                                              ; preds = %113
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @USB_PORT_STAT_ENABLE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %170

126:                                              ; preds = %121
  %127 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %128 = call i64 @hub_is_wusb(%struct.usb_hub* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* @USB_SPEED_WIRELESS, align 4
  %132 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %133 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  br label %169

134:                                              ; preds = %126
  %135 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %136 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @hub_is_superspeed(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32, i32* @USB_SPEED_SUPER, align 4
  %142 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %143 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  br label %168

144:                                              ; preds = %134
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @USB_PORT_STAT_HIGH_SPEED, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @USB_SPEED_HIGH, align 4
  %151 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %152 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  br label %167

153:                                              ; preds = %144
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @USB_SPEED_LOW, align 4
  %160 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %161 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  br label %166

162:                                              ; preds = %153
  %163 = load i32, i32* @USB_SPEED_FULL, align 4
  %164 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %165 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %162, %158
  br label %167

167:                                              ; preds = %166, %149
  br label %168

168:                                              ; preds = %167, %140
  br label %169

169:                                              ; preds = %168, %130
  store i32 0, i32* %6, align 4
  br label %211

170:                                              ; preds = %121
  br label %185

171:                                              ; preds = %37
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %178 = load i32, i32* %14, align 4
  %179 = call i64 @hub_port_warm_reset_required(%struct.usb_hub* %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176, %171
  %182 = load i32, i32* @ENOTCONN, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %6, align 4
  br label %211

184:                                              ; preds = %176
  store i32 0, i32* %6, align 4
  br label %211

185:                                              ; preds = %170
  br label %186

186:                                              ; preds = %185, %36
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @HUB_SHORT_RESET_TIME, align 4
  %189 = mul nsw i32 2, %188
  %190 = icmp sge i32 %187, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* @HUB_LONG_RESET_TIME, align 4
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %191, %186
  %194 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %195 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %202 = load i32, i32* %10, align 4
  %203 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %196, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %197, i8* %201, i32 %202)
  br label %204

204:                                              ; preds = %193
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %12, align 4
  %207 = add i32 %206, %205
  store i32 %207, i32* %12, align 4
  br label %17

208:                                              ; preds = %17
  %209 = load i32, i32* @EBUSY, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %6, align 4
  br label %211

211:                                              ; preds = %208, %184, %181, %169, %118, %110, %103, %29
  %212 = load i32, i32* %6, align 4
  ret i32 %212
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hub_port_status(%struct.usb_hub*, i32, i32*, i32*) #1

declare dso_local i64 @hub_port_warm_reset_required(%struct.usb_hub*, i32) #1

declare dso_local i32 @clear_port_feature(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @hub_port_reset(%struct.usb_hub*, i32, %struct.usb_device*, i32, i32) #1

declare dso_local i64 @hub_is_wusb(%struct.usb_hub*) #1

declare dso_local i64 @hub_is_superspeed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
