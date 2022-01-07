; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_usb_gadget_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_usb_gadget_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci13xxx = type { i32*, i32*, i32, %struct.usb_gadget_driver*, %struct.TYPE_9__, %struct.ci13xxx_ep* }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_9__*)*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.ci13xxx_ep = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }

@_udc = common dso_local global %struct.ci13xxx* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@hw_ep_max = common dso_local global i64 0, align 8
@RX = common dso_local global i64 0, align 8
@TX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_unregister_driver(%struct.usb_gadget_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget_driver*, align 8
  %4 = alloca %struct.ci13xxx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ci13xxx_ep*, align 8
  store %struct.usb_gadget_driver* %0, %struct.usb_gadget_driver** %3, align 8
  %9 = load %struct.ci13xxx*, %struct.ci13xxx** @_udc, align 8
  store %struct.ci13xxx* %9, %struct.ci13xxx** %4, align 8
  %10 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %11 = call i32 @trace(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.usb_gadget_driver* %10)
  %12 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %13 = icmp eq %struct.usb_gadget_driver* %12, null
  br i1 %13, label %50, label %14

14:                                               ; preds = %1
  %15 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %16 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %14
  %20 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %21 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %21, align 8
  %23 = icmp eq i32 (%struct.TYPE_9__*)* %22, null
  br i1 %23, label %50, label %24

24:                                               ; preds = %19
  %25 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %26 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %24
  %30 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %31 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %29
  %35 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %36 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %41 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %46 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %47 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %46, i32 0, i32 3
  %48 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %47, align 8
  %49 = icmp ne %struct.usb_gadget_driver* %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %39, %34, %29, %24, %19, %14, %1
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %195

53:                                               ; preds = %44
  %54 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %55 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_lock_irqsave(i32 %56, i64 %57)
  %59 = call i32 @hw_device_state(i32 0)
  %60 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %61 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %92

65:                                               ; preds = %53
  %66 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %67 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %66, i32 0, i32 4
  %68 = call i32 @_gadget_stop_activity(%struct.TYPE_9__* %67)
  %69 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %70 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32 %71, i64 %72)
  %74 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %3, align 8
  %75 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %74, i32 0, i32 0
  %76 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %75, align 8
  %77 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %78 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %77, i32 0, i32 4
  %79 = call i32 %76(%struct.TYPE_9__* %78)
  %80 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %81 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_lock_irqsave(i32 %82, i64 %83)
  %85 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %86 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  store i32* null, i32** %87, align 8
  %88 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %89 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %65, %53
  store i64 0, i64* %5, align 8
  br label %93

93:                                               ; preds = %160, %92
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* @hw_ep_max, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %163

97:                                               ; preds = %93
  %98 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %99 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %98, i32 0, i32 5
  %100 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %99, align 8
  %101 = load i64, i64* %5, align 8
  %102 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %100, i64 %101
  store %struct.ci13xxx_ep* %102, %struct.ci13xxx_ep** %8, align 8
  %103 = load i64, i64* %5, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %107 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  br label %121

109:                                              ; preds = %97
  %110 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %8, align 8
  %111 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = call i32 @list_empty(i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %109
  %116 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %8, align 8
  %117 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = call i32 @list_del_init(i32* %118)
  br label %120

120:                                              ; preds = %115, %109
  br label %121

121:                                              ; preds = %120, %105
  %122 = load i64, i64* @RX, align 8
  store i64 %122, i64* %6, align 8
  br label %123

123:                                              ; preds = %156, %121
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* @TX, align 8
  %126 = icmp ule i64 %124, %125
  br i1 %126, label %127, label %159

127:                                              ; preds = %123
  %128 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %8, align 8
  %129 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i64, i64* %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %155

136:                                              ; preds = %127
  %137 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %138 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %8, align 8
  %141 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %140, i32 0, i32 0
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.ci13xxx_ep*, %struct.ci13xxx_ep** %8, align 8
  %148 = getelementptr inbounds %struct.ci13xxx_ep, %struct.ci13xxx_ep* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i64, i64* %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @dma_pool_free(i32* %139, i32* %146, i32 %153)
  br label %155

155:                                              ; preds = %136, %127
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %6, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %6, align 8
  br label %123

159:                                              ; preds = %123
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %5, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %5, align 8
  br label %93

163:                                              ; preds = %93
  %164 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %165 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %164, i32 0, i32 3
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %165, align 8
  %166 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %167 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @spin_unlock_irqrestore(i32 %168, i64 %169)
  %171 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %172 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %163
  %176 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %177 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @dma_pool_destroy(i32* %178)
  %180 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %181 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %180, i32 0, i32 1
  store i32* null, i32** %181, align 8
  br label %182

182:                                              ; preds = %175, %163
  %183 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %184 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %189 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @dma_pool_destroy(i32* %190)
  %192 = load %struct.ci13xxx*, %struct.ci13xxx** %4, align 8
  %193 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %192, i32 0, i32 0
  store i32* null, i32** %193, align 8
  br label %194

194:                                              ; preds = %187, %182
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %194, %50
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @trace(i8*, %struct.usb_gadget_driver*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @hw_device_state(i32) #1

declare dso_local i32 @_gadget_stop_activity(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @dma_pool_free(i32*, i32*, i32) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
