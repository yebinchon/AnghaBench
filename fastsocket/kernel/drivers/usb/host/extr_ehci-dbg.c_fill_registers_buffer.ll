; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-dbg.c_fill_registers_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-dbg.c_fill_registers_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.debug_buffer = type { i8*, i32, i32 }
%struct.usb_hcd = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.ehci_hcd = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_10__*, i32, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@fill_registers_buffer.fmt = internal global [5 x i8] c"%*s\0A\00", align 1
@fill_registers_buffer.label = internal global [1 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [53 x i8] c"bus %s, device %s\0A%s\0ASUSPENDED (no register access)\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"bus %s, device %s\0A%s\0AEHCI %x.%02x, hcd state %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"structural params 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"capability params 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"uframe %04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"    debug control %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"reclaim qh %p\0A\00", align 1
@pci_bus_type = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_buffer*)* @fill_registers_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_registers_buffer(%struct.debug_buffer* %0) #0 {
  %2 = alloca %struct.debug_buffer*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [80 x i8], align 16
  store %struct.debug_buffer* %0, %struct.debug_buffer** %2, align 8
  %11 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.usb_hcd* @bus_to_hcd(i32 %13)
  store %struct.usb_hcd* %14, %struct.usb_hcd** %3, align 8
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %16 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %15)
  store %struct.ehci_hcd* %16, %struct.ehci_hcd** %4, align 8
  %17 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %18 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %21 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %24 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %23, i32 0, i32 1
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %28 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %1
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %42 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = call i32 @dev_name(%struct.TYPE_18__* %44)
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %47 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %45, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %287

50:                                               ; preds = %1
  %51 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %52 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %53 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %52, i32 0, i32 6
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = call i32 @ehci_readl(%struct.ehci_hcd* %51, i32* %55)
  %57 = call i32 @HC_VERSION(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %61 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %69 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = call i32 @dev_name(%struct.TYPE_18__* %71)
  %73 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %74 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = lshr i32 %76, 8
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 255
  %80 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %81 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %58, i32 %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %72, i32 %75, i32 %77, i32 %79, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %9, align 8
  %91 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %92 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %93 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %92, i32 0, i32 6
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = call i32 @ehci_readl(%struct.ehci_hcd* %91, i32* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %97, i32 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i8*, i8** %9, align 8
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %9, align 8
  %108 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %109 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %110 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %109, i32 0, i32 6
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = call i32 @ehci_readl(%struct.ehci_hcd* %108, i32* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %114, i32 %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = sub i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %9, align 8
  %125 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %126 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %127 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %128 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %127, i32 0, i32 5
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 4
  %131 = call i32 @ehci_readl(%struct.ehci_hcd* %126, i32* %130)
  %132 = call i32 @dbg_status_buf(i8* %125, i32 80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fill_registers_buffer.label, i64 0, i64 0), i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i8*, i8** %9, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %6, align 4
  %136 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %137 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %133, i32 %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @fill_registers_buffer.fmt, i64 0, i64 0), i32 %135, i8* %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = sub i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i8*, i8** %9, align 8
  %143 = zext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %9, align 8
  %145 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %146 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %147 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %148 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %147, i32 0, i32 5
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 3
  %151 = call i32 @ehci_readl(%struct.ehci_hcd* %146, i32* %150)
  %152 = call i32 @dbg_command_buf(i8* %145, i32 80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fill_registers_buffer.label, i64 0, i64 0), i32 %151)
  store i32 %152, i32* %6, align 4
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %6, align 4
  %156 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %157 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %153, i32 %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @fill_registers_buffer.fmt, i64 0, i64 0), i32 %155, i8* %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %7, align 4
  %160 = sub i32 %159, %158
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load i8*, i8** %9, align 8
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %9, align 8
  %165 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %166 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %167 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %168 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %167, i32 0, i32 5
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  %171 = call i32 @ehci_readl(%struct.ehci_hcd* %166, i32* %170)
  %172 = call i32 @dbg_intr_buf(i8* %165, i32 80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fill_registers_buffer.label, i64 0, i64 0), i32 %171)
  store i32 %172, i32* %6, align 4
  %173 = load i8*, i8** %9, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %6, align 4
  %176 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %177 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %173, i32 %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @fill_registers_buffer.fmt, i64 0, i64 0), i32 %175, i8* %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %7, align 4
  %180 = sub i32 %179, %178
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %6, align 4
  %182 = load i8*, i8** %9, align 8
  %183 = zext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %9, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %188 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %189 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %188, i32 0, i32 5
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = call i32 @ehci_readl(%struct.ehci_hcd* %187, i32* %191)
  %193 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %185, i32 %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %192)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %7, align 4
  %196 = sub i32 %195, %194
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load i8*, i8** %9, align 8
  %199 = zext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %9, align 8
  store i32 1, i32* %8, align 4
  br label %201

201:                                              ; preds = %264, %50
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %204 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @HCS_N_PORTS(i32 %205)
  %207 = icmp ule i32 %202, %206
  br i1 %207, label %208, label %267

208:                                              ; preds = %201
  %209 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %212 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %213 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %212, i32 0, i32 5
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sub i32 %217, 1
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = call i32 @ehci_readl(%struct.ehci_hcd* %211, i32* %220)
  %222 = call i32 @dbg_port_buf(i8* %209, i32 80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fill_registers_buffer.label, i64 0, i64 0), i32 %210, i32 %221)
  store i32 %222, i32* %6, align 4
  %223 = load i8*, i8** %9, align 8
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %6, align 4
  %226 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %227 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %223, i32 %224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @fill_registers_buffer.fmt, i64 0, i64 0), i32 %225, i8* %226)
  store i32 %227, i32* %6, align 4
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %7, align 4
  %230 = sub i32 %229, %228
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %6, align 4
  %232 = load i8*, i8** %9, align 8
  %233 = zext i32 %231 to i64
  %234 = getelementptr inbounds i8, i8* %232, i64 %233
  store i8* %234, i8** %9, align 8
  %235 = load i32, i32* %8, align 4
  %236 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %237 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @HCS_DEBUG_PORT(i32 %238)
  %240 = icmp eq i32 %235, %239
  br i1 %240, label %241, label %263

241:                                              ; preds = %208
  %242 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %243 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %242, i32 0, i32 3
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = icmp ne %struct.TYPE_10__* %244, null
  br i1 %245, label %246, label %263

246:                                              ; preds = %241
  %247 = load i8*, i8** %9, align 8
  %248 = load i32, i32* %7, align 4
  %249 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %250 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %251 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %250, i32 0, i32 3
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = call i32 @ehci_readl(%struct.ehci_hcd* %249, i32* %253)
  %255 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %247, i32 %248, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %254)
  store i32 %255, i32* %6, align 4
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* %7, align 4
  %258 = sub i32 %257, %256
  store i32 %258, i32* %7, align 4
  %259 = load i32, i32* %6, align 4
  %260 = load i8*, i8** %9, align 8
  %261 = zext i32 %259 to i64
  %262 = getelementptr inbounds i8, i8* %260, i64 %261
  store i8* %262, i8** %9, align 8
  br label %263

263:                                              ; preds = %246, %241, %208
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %8, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %8, align 4
  br label %201

267:                                              ; preds = %201
  %268 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %269 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %286

272:                                              ; preds = %267
  %273 = load i8*, i8** %9, align 8
  %274 = load i32, i32* %7, align 4
  %275 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %276 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %273, i32 %274, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %277)
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* %6, align 4
  %280 = load i32, i32* %7, align 4
  %281 = sub i32 %280, %279
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* %6, align 4
  %283 = load i8*, i8** %9, align 8
  %284 = zext i32 %282 to i64
  %285 = getelementptr inbounds i8, i8* %283, i64 %284
  store i8* %285, i8** %9, align 8
  br label %286

286:                                              ; preds = %272, %267
  br label %287

287:                                              ; preds = %286, %30
  %288 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %289 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %288, i32 0, i32 1
  %290 = load i64, i64* %5, align 8
  %291 = call i32 @spin_unlock_irqrestore(i32* %289, i64 %290)
  %292 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %293 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* %7, align 4
  %296 = sub i32 %294, %295
  ret i32 %296
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @dev_name(%struct.TYPE_18__*) #1

declare dso_local i32 @HC_VERSION(i32) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @dbg_status_buf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dbg_command_buf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dbg_intr_buf(i8*, i32, i8*, i32) #1

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @dbg_port_buf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @HCS_DEBUG_PORT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
