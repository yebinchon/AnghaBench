; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_at91_udc.c_at91_udc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_at91_udc.c_at91_udc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_udc = type { i32, %struct.at91_ep*, %struct.TYPE_5__, %struct.TYPE_4__*, i64 }
%struct.at91_ep = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)* }

@AT91_UDP_ISR = common dso_local global i32 0, align 4
@AT91_UDP_IMR = common dso_local global i32 0, align 4
@AT91_UDP_ENDBUSRES = common dso_local global i32 0, align 4
@AT91_UDP_IDR = common dso_local global i32 0, align 4
@MINIMUS_INTERRUPTUS = common dso_local global i32 0, align 4
@AT91_UDP_IER = common dso_local global i32 0, align 4
@AT91_UDP_ICR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"end bus reset\0A\00", align 1
@AT91_UDP_EPEDS = common dso_local global i32 0, align 4
@AT91_UDP_EPTYPE_CTRL = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@AT91_UDP_RXSUSP = common dso_local global i32 0, align 4
@AT91_UDP_RXRSM = common dso_local global i32 0, align 4
@NUM_ENDPOINTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91_udc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_udc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.at91_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.at91_ep*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.at91_udc*
  store %struct.at91_udc* %12, %struct.at91_udc** %5, align 8
  store i32 5, i32* %6, align 4
  br label %13

13:                                               ; preds = %202, %141, %94, %2
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %203

17:                                               ; preds = %13
  %18 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %19 = load i32, i32* @AT91_UDP_ISR, align 4
  %20 = call i32 @at91_udp_read(%struct.at91_udc* %18, i32 %19)
  %21 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %22 = load i32, i32* @AT91_UDP_IMR, align 4
  %23 = call i32 @at91_udp_read(%struct.at91_udc* %21, i32 %22)
  %24 = and i32 %20, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %203

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @AT91_UDP_ENDBUSRES, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %28
  %34 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %35 = load i32, i32* @AT91_UDP_IDR, align 4
  %36 = load i32, i32* @MINIMUS_INTERRUPTUS, align 4
  %37 = xor i32 %36, -1
  %38 = call i32 @at91_udp_write(%struct.at91_udc* %34, i32 %35, i32 %37)
  %39 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %40 = load i32, i32* @AT91_UDP_IER, align 4
  %41 = load i32, i32* @MINIMUS_INTERRUPTUS, align 4
  %42 = call i32 @at91_udp_write(%struct.at91_udc* %39, i32 %40, i32 %41)
  %43 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %44 = load i32, i32* @AT91_UDP_ICR, align 4
  %45 = load i32, i32* @AT91_UDP_ENDBUSRES, align 4
  %46 = call i32 @at91_udp_write(%struct.at91_udc* %43, i32 %44, i32 %45)
  %47 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %48 = load i32, i32* @AT91_UDP_ICR, align 4
  %49 = load i32, i32* @AT91_UDP_ENDBUSRES, align 4
  %50 = call i32 @at91_udp_write(%struct.at91_udc* %47, i32 %48, i32 %49)
  %51 = call i32 @VDBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %53 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %55 = call i32 @stop_activity(%struct.at91_udc* %54)
  %56 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %57 = call i32 @AT91_UDP_CSR(i32 0)
  %58 = load i32, i32* @AT91_UDP_EPEDS, align 4
  %59 = load i32, i32* @AT91_UDP_EPTYPE_CTRL, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @at91_udp_write(%struct.at91_udc* %56, i32 %57, i32 %60)
  %62 = load i32, i32* @USB_SPEED_FULL, align 4
  %63 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %64 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %67 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %69 = load i32, i32* @AT91_UDP_IER, align 4
  %70 = call i32 @AT91_UDP_EP(i32 0)
  %71 = call i32 @at91_udp_write(%struct.at91_udc* %68, i32 %69, i32 %70)
  br label %202

72:                                               ; preds = %28
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @AT91_UDP_RXSUSP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %119

77:                                               ; preds = %72
  %78 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %79 = load i32, i32* @AT91_UDP_IDR, align 4
  %80 = load i32, i32* @AT91_UDP_RXSUSP, align 4
  %81 = call i32 @at91_udp_write(%struct.at91_udc* %78, i32 %79, i32 %80)
  %82 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %83 = load i32, i32* @AT91_UDP_IER, align 4
  %84 = load i32, i32* @AT91_UDP_RXRSM, align 4
  %85 = call i32 @at91_udp_write(%struct.at91_udc* %82, i32 %83, i32 %84)
  %86 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %87 = load i32, i32* @AT91_UDP_ICR, align 4
  %88 = load i32, i32* @AT91_UDP_RXSUSP, align 4
  %89 = call i32 @at91_udp_write(%struct.at91_udc* %86, i32 %87, i32 %88)
  %90 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %91 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %77
  br label %13

95:                                               ; preds = %77
  %96 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %97 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %99 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = icmp ne %struct.TYPE_4__* %100, null
  br i1 %101, label %102, label %118

102:                                              ; preds = %95
  %103 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %104 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %106, align 8
  %108 = icmp ne i32 (%struct.TYPE_5__*)* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %102
  %110 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %111 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %113, align 8
  %115 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %116 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %115, i32 0, i32 2
  %117 = call i32 %114(%struct.TYPE_5__* %116)
  br label %118

118:                                              ; preds = %109, %102, %95
  br label %201

119:                                              ; preds = %72
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @AT91_UDP_RXRSM, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %166

124:                                              ; preds = %119
  %125 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %126 = load i32, i32* @AT91_UDP_IDR, align 4
  %127 = load i32, i32* @AT91_UDP_RXRSM, align 4
  %128 = call i32 @at91_udp_write(%struct.at91_udc* %125, i32 %126, i32 %127)
  %129 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %130 = load i32, i32* @AT91_UDP_IER, align 4
  %131 = load i32, i32* @AT91_UDP_RXSUSP, align 4
  %132 = call i32 @at91_udp_write(%struct.at91_udc* %129, i32 %130, i32 %131)
  %133 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %134 = load i32, i32* @AT91_UDP_ICR, align 4
  %135 = load i32, i32* @AT91_UDP_RXRSM, align 4
  %136 = call i32 @at91_udp_write(%struct.at91_udc* %133, i32 %134, i32 %135)
  %137 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %138 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %124
  br label %13

142:                                              ; preds = %124
  %143 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %144 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  %145 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %146 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %145, i32 0, i32 3
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = icmp ne %struct.TYPE_4__* %147, null
  br i1 %148, label %149, label %165

149:                                              ; preds = %142
  %150 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %151 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %150, i32 0, i32 3
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %153, align 8
  %155 = icmp ne i32 (%struct.TYPE_5__*)* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %149
  %157 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %158 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %157, i32 0, i32 3
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %160, align 8
  %162 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %163 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %162, i32 0, i32 2
  %164 = call i32 %161(%struct.TYPE_5__* %163)
  br label %165

165:                                              ; preds = %156, %149, %142
  br label %200

166:                                              ; preds = %119
  store i32 1, i32* %9, align 4
  %167 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %168 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %167, i32 0, i32 1
  %169 = load %struct.at91_ep*, %struct.at91_ep** %168, align 8
  %170 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %169, i64 1
  store %struct.at91_ep* %170, %struct.at91_ep** %10, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %9, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %166
  %176 = load %struct.at91_udc*, %struct.at91_udc** %5, align 8
  %177 = call i32 @handle_ep0(%struct.at91_udc* %176)
  br label %178

178:                                              ; preds = %175, %166
  store i32 1, i32* %8, align 4
  br label %179

179:                                              ; preds = %196, %178
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @NUM_ENDPOINTS, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %179
  %184 = load i32, i32* %9, align 4
  %185 = shl i32 %184, 1
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %9, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %183
  %191 = load %struct.at91_ep*, %struct.at91_ep** %10, align 8
  %192 = call i32 @handle_ep(%struct.at91_ep* %191)
  br label %193

193:                                              ; preds = %190, %183
  %194 = load %struct.at91_ep*, %struct.at91_ep** %10, align 8
  %195 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %194, i32 1
  store %struct.at91_ep* %195, %struct.at91_ep** %10, align 8
  br label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %179

199:                                              ; preds = %179
  br label %200

200:                                              ; preds = %199, %165
  br label %201

201:                                              ; preds = %200, %118
  br label %202

202:                                              ; preds = %201, %33
  br label %13

203:                                              ; preds = %27, %13
  %204 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %204
}

declare dso_local i32 @at91_udp_read(%struct.at91_udc*, i32) #1

declare dso_local i32 @at91_udp_write(%struct.at91_udc*, i32, i32) #1

declare dso_local i32 @VDBG(i8*) #1

declare dso_local i32 @stop_activity(%struct.at91_udc*) #1

declare dso_local i32 @AT91_UDP_CSR(i32) #1

declare dso_local i32 @AT91_UDP_EP(i32) #1

declare dso_local i32 @handle_ep0(%struct.at91_udc*) #1

declare dso_local i32 @handle_ep(%struct.at91_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
