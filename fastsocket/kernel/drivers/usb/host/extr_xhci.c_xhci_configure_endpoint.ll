; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_configure_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_configure_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32, %struct.TYPE_10__*, i32, %struct.xhci_virt_device** }
%struct.TYPE_10__ = type { %union.xhci_trb*, %struct.TYPE_9__*, %struct.TYPE_7__* }
%union.xhci_trb = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.xhci_virt_device = type { i32, %struct.completion, i32, %struct.xhci_container_ctx* }
%struct.completion = type { i32 }
%struct.xhci_container_ctx = type { i32 }
%struct.usb_device = type { i64 }
%struct.xhci_command = type { i32, %struct.TYPE_7__*, i32, %struct.completion*, %struct.xhci_container_ctx* }

@XHCI_EP_LIMIT_QUIRK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Not enough host resources, active endpoint contexts = %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@XHCI_SW_BW_CHECKING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Not enough bandwidth\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"FIXME allocate a new ring segment\0A\00", align 1
@XHCI_CMD_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"%s while waiting for %s command\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Signal\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"configure endpoint\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"evaluate context\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.usb_device*, %struct.xhci_command*, i32, i32)* @xhci_configure_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_configure_endpoint(%struct.xhci_hcd* %0, %struct.usb_device* %1, %struct.xhci_command* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.xhci_command*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.xhci_container_ctx*, align 8
  %16 = alloca %struct.completion*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.xhci_virt_device*, align 8
  %19 = alloca %union.xhci_trb*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store %struct.usb_device* %1, %struct.usb_device** %8, align 8
  store %struct.xhci_command* %2, %struct.xhci_command** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %21 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %20, i32 0, i32 1
  %22 = load i64, i64* %14, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %25 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %24, i32 0, i32 4
  %26 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %25, align 8
  %27 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %26, i64 %29
  %31 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %30, align 8
  store %struct.xhci_virt_device* %31, %struct.xhci_virt_device** %18, align 8
  %32 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %33 = icmp ne %struct.xhci_command* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %36 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %35, i32 0, i32 4
  %37 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %36, align 8
  store %struct.xhci_container_ctx* %37, %struct.xhci_container_ctx** %15, align 8
  br label %42

38:                                               ; preds = %5
  %39 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %18, align 8
  %40 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %39, i32 0, i32 3
  %41 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %40, align 8
  store %struct.xhci_container_ctx* %41, %struct.xhci_container_ctx** %15, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %44 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @XHCI_EP_LIMIT_QUIRK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %51 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %15, align 8
  %52 = call i64 @xhci_reserve_host_resources(%struct.xhci_hcd* %50, %struct.xhci_container_ctx* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %56 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %55, i32 0, i32 1
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %60 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %61 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %59, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %282

66:                                               ; preds = %49, %42
  %67 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %68 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @XHCI_SW_BW_CHECKING, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %66
  %74 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %75 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %18, align 8
  %76 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %15, align 8
  %77 = call i64 @xhci_reserve_bandwidth(%struct.xhci_hcd* %74, %struct.xhci_virt_device* %75, %struct.xhci_container_ctx* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %81 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @XHCI_EP_LIMIT_QUIRK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %88 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %15, align 8
  %89 = call i32 @xhci_free_host_resources(%struct.xhci_hcd* %87, %struct.xhci_container_ctx* %88)
  br label %90

90:                                               ; preds = %86, %79
  %91 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %92 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %91, i32 0, i32 1
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %96 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %282

99:                                               ; preds = %73, %66
  %100 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %101 = icmp ne %struct.xhci_command* %100, null
  br i1 %101, label %102, label %141

102:                                              ; preds = %99
  %103 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %104 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %103, i32 0, i32 3
  %105 = load %struct.completion*, %struct.completion** %104, align 8
  store %struct.completion* %105, %struct.completion** %16, align 8
  %106 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %107 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %106, i32 0, i32 2
  store i32* %107, i32** %17, align 8
  %108 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %109 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %108, i32 0, i32 2
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %114 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %113, i32 0, i32 1
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %114, align 8
  %115 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %116 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @TRB_TYPE_LINK_LE32(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %102
  %124 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %125 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %124, i32 0, i32 2
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %134 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %133, i32 0, i32 1
  store %struct.TYPE_7__* %132, %struct.TYPE_7__** %134, align 8
  br label %135

135:                                              ; preds = %123, %102
  %136 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %137 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %136, i32 0, i32 0
  %138 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %18, align 8
  %139 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %138, i32 0, i32 2
  %140 = call i32 @list_add_tail(i32* %137, i32* %139)
  br label %146

141:                                              ; preds = %99
  %142 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %18, align 8
  %143 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %142, i32 0, i32 1
  store %struct.completion* %143, %struct.completion** %16, align 8
  %144 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %18, align 8
  %145 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %144, i32 0, i32 0
  store i32* %145, i32** %17, align 8
  br label %146

146:                                              ; preds = %141, %135
  %147 = load %struct.completion*, %struct.completion** %16, align 8
  %148 = call i32 @init_completion(%struct.completion* %147)
  %149 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %150 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %149, i32 0, i32 2
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load %union.xhci_trb*, %union.xhci_trb** %152, align 8
  store %union.xhci_trb* %153, %union.xhci_trb** %19, align 8
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %146
  %157 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %158 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %15, align 8
  %159 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %162 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @xhci_queue_configure_endpoint(%struct.xhci_hcd* %157, i32 %160, i64 %163, i32 %164)
  store i32 %165, i32* %12, align 4
  br label %176

166:                                              ; preds = %146
  %167 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %168 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %15, align 8
  %169 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %172 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @xhci_queue_evaluate_context(%struct.xhci_hcd* %167, i32 %170, i64 %173, i32 %174)
  store i32 %175, i32* %12, align 4
  br label %176

176:                                              ; preds = %166, %156
  %177 = load i32, i32* %12, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %206

179:                                              ; preds = %176
  %180 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %181 = icmp ne %struct.xhci_command* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %184 = getelementptr inbounds %struct.xhci_command, %struct.xhci_command* %183, i32 0, i32 0
  %185 = call i32 @list_del(i32* %184)
  br label %186

186:                                              ; preds = %182, %179
  %187 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %188 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @XHCI_EP_LIMIT_QUIRK, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %195 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %15, align 8
  %196 = call i32 @xhci_free_host_resources(%struct.xhci_hcd* %194, %struct.xhci_container_ctx* %195)
  br label %197

197:                                              ; preds = %193, %186
  %198 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %199 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %198, i32 0, i32 1
  %200 = load i64, i64* %14, align 8
  %201 = call i32 @spin_unlock_irqrestore(i32* %199, i64 %200)
  %202 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %203 = call i32 @xhci_dbg(%struct.xhci_hcd* %202, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %6, align 4
  br label %282

206:                                              ; preds = %176
  %207 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %208 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %207)
  %209 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %210 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %209, i32 0, i32 1
  %211 = load i64, i64* %14, align 8
  %212 = call i32 @spin_unlock_irqrestore(i32* %210, i64 %211)
  %213 = load %struct.completion*, %struct.completion** %16, align 8
  %214 = load i32, i32* @XHCI_CMD_DEFAULT_TIMEOUT, align 4
  %215 = call i32 @wait_for_completion_interruptible_timeout(%struct.completion* %213, i32 %214)
  store i32 %215, i32* %13, align 4
  %216 = load i32, i32* %13, align 4
  %217 = icmp sle i32 %216, 0
  br i1 %217, label %218, label %240

218:                                              ; preds = %206
  %219 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %220 = load i32, i32* %13, align 4
  %221 = icmp eq i32 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %224 = load i32, i32* %10, align 4
  %225 = icmp eq i32 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0)
  %228 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %219, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %223, i8* %227)
  %229 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %230 = load %struct.xhci_command*, %struct.xhci_command** %9, align 8
  %231 = load %union.xhci_trb*, %union.xhci_trb** %19, align 8
  %232 = call i32 @xhci_cancel_cmd(%struct.xhci_hcd* %229, %struct.xhci_command* %230, %union.xhci_trb* %231)
  store i32 %232, i32* %12, align 4
  %233 = load i32, i32* %12, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %218
  %236 = load i32, i32* %12, align 4
  store i32 %236, i32* %6, align 4
  br label %282

237:                                              ; preds = %218
  %238 = load i32, i32* @ETIME, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %6, align 4
  br label %282

240:                                              ; preds = %206
  %241 = load i32, i32* %10, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %240
  %244 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %245 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %246 = load i32*, i32** %17, align 8
  %247 = call i32 @xhci_configure_endpoint_result(%struct.xhci_hcd* %244, %struct.usb_device* %245, i32* %246)
  store i32 %247, i32* %12, align 4
  br label %253

248:                                              ; preds = %240
  %249 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %250 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %251 = load i32*, i32** %17, align 8
  %252 = call i32 @xhci_evaluate_context_result(%struct.xhci_hcd* %249, %struct.usb_device* %250, i32* %251)
  store i32 %252, i32* %12, align 4
  br label %253

253:                                              ; preds = %248, %243
  %254 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %255 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @XHCI_EP_LIMIT_QUIRK, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %280

260:                                              ; preds = %253
  %261 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %262 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %261, i32 0, i32 1
  %263 = load i64, i64* %14, align 8
  %264 = call i32 @spin_lock_irqsave(i32* %262, i64 %263)
  %265 = load i32, i32* %12, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %260
  %268 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %269 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %15, align 8
  %270 = call i32 @xhci_free_host_resources(%struct.xhci_hcd* %268, %struct.xhci_container_ctx* %269)
  br label %275

271:                                              ; preds = %260
  %272 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %273 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %15, align 8
  %274 = call i32 @xhci_finish_resource_reservation(%struct.xhci_hcd* %272, %struct.xhci_container_ctx* %273)
  br label %275

275:                                              ; preds = %271, %267
  %276 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %277 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %276, i32 0, i32 1
  %278 = load i64, i64* %14, align 8
  %279 = call i32 @spin_unlock_irqrestore(i32* %277, i64 %278)
  br label %280

280:                                              ; preds = %275, %253
  %281 = load i32, i32* %12, align 4
  store i32 %281, i32* %6, align 4
  br label %282

282:                                              ; preds = %280, %237, %235, %197, %90, %54
  %283 = load i32, i32* %6, align 4
  ret i32 %283
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @xhci_reserve_host_resources(%struct.xhci_hcd*, %struct.xhci_container_ctx*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i64 @xhci_reserve_bandwidth(%struct.xhci_hcd*, %struct.xhci_virt_device*, %struct.xhci_container_ctx*) #1

declare dso_local i32 @xhci_free_host_resources(%struct.xhci_hcd*, %struct.xhci_container_ctx*) #1

declare dso_local i64 @TRB_TYPE_LINK_LE32(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @xhci_queue_configure_endpoint(%struct.xhci_hcd*, i32, i64, i32) #1

declare dso_local i32 @xhci_queue_evaluate_context(%struct.xhci_hcd*, i32, i64, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(%struct.completion*, i32) #1

declare dso_local i32 @xhci_cancel_cmd(%struct.xhci_hcd*, %struct.xhci_command*, %union.xhci_trb*) #1

declare dso_local i32 @xhci_configure_endpoint_result(%struct.xhci_hcd*, %struct.usb_device*, i32*) #1

declare dso_local i32 @xhci_evaluate_context_result(%struct.xhci_hcd*, %struct.usb_device*, i32*) #1

declare dso_local i32 @xhci_finish_resource_reservation(%struct.xhci_hcd*, %struct.xhci_container_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
