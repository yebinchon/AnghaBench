; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_BurstWrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_BurstWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i64, %struct.wb35_reg }
%struct.wb35_reg = type { i32, %struct.wb35_reg_queue*, %struct.wb35_reg_queue* }
%struct.wb35_reg_queue = type { i32, i32, %struct.wb35_reg_queue*, %struct.urb*, %struct.usb_ctrlrequest*, i32* }
%struct.urb = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i8*, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @Wb35Reg_BurstWrite(%struct.hw_data* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.hw_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wb35_reg*, align 8
  %13 = alloca %struct.urb*, align 8
  %14 = alloca %struct.wb35_reg_queue*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.usb_ctrlrequest*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.hw_data*, %struct.hw_data** %7, align 8
  %20 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %19, i32 0, i32 1
  store %struct.wb35_reg* %20, %struct.wb35_reg** %12, align 8
  store %struct.urb* null, %struct.urb** %13, align 8
  store %struct.wb35_reg_queue* null, %struct.wb35_reg_queue** %14, align 8
  %21 = load i32, i32* %10, align 4
  %22 = mul nsw i32 %21, 4
  store i32 %22, i32* %18, align 4
  %23 = load %struct.hw_data*, %struct.hw_data** %7, align 8
  %24 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i8 0, i8* %6, align 1
  br label %159

28:                                               ; preds = %5
  %29 = load i32, i32* %18, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 40, %30
  %32 = add i64 %31, 32
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.wb35_reg_queue* @kzalloc(i32 %34, i32 %35)
  store %struct.wb35_reg_queue* %36, %struct.wb35_reg_queue** %14, align 8
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %37)
  store %struct.urb* %38, %struct.urb** %13, align 8
  %39 = load %struct.urb*, %struct.urb** %13, align 8
  %40 = icmp ne %struct.urb* %39, null
  br i1 %40, label %41, label %146

41:                                               ; preds = %28
  %42 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %43 = icmp ne %struct.wb35_reg_queue* %42, null
  br i1 %43, label %44, label %146

44:                                               ; preds = %41
  %45 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %46 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %45, i32 0, i32 0
  store i32 2, i32* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %49 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %51 = bitcast %struct.wb35_reg_queue* %50 to i32*
  %52 = getelementptr inbounds i32, i32* %51, i64 40
  %53 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %54 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %53, i32 0, i32 5
  store i32* %52, i32** %54, align 8
  %55 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %56 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @memcpy(i32* %57, i32* %58, i32 %59)
  store i32 0, i32* %17, align 4
  br label %61

61:                                               ; preds = %80, %44
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %67 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cpu_to_le32(i32 %72)
  %74 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %75 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  br label %61

83:                                               ; preds = %61
  %84 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %85 = bitcast %struct.wb35_reg_queue* %84 to i32*
  %86 = getelementptr inbounds i32, i32* %85, i64 40
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = bitcast i32* %89 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %90, %struct.usb_ctrlrequest** %16, align 8
  %91 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %92 = load i32, i32* @USB_DIR_OUT, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %16, align 8
  %97 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %16, align 8
  %99 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %98, i32 0, i32 1
  store i32 4, i32* %99, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i8* @cpu_to_le16(i32 %100)
  %102 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %16, align 8
  %103 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i8* @cpu_to_le16(i32 %104)
  %106 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %16, align 8
  %107 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %18, align 4
  %109 = call i8* @cpu_to_le16(i32 %108)
  %110 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %16, align 8
  %111 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %113 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %112, i32 0, i32 2
  store %struct.wb35_reg_queue* null, %struct.wb35_reg_queue** %113, align 8
  %114 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %16, align 8
  %115 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %116 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %115, i32 0, i32 4
  store %struct.usb_ctrlrequest* %114, %struct.usb_ctrlrequest** %116, align 8
  %117 = load %struct.urb*, %struct.urb** %13, align 8
  %118 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %119 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %118, i32 0, i32 3
  store %struct.urb* %117, %struct.urb** %119, align 8
  %120 = load %struct.wb35_reg*, %struct.wb35_reg** %12, align 8
  %121 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %120, i32 0, i32 0
  %122 = call i32 @spin_lock_irq(i32* %121)
  %123 = load %struct.wb35_reg*, %struct.wb35_reg** %12, align 8
  %124 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %123, i32 0, i32 2
  %125 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %124, align 8
  %126 = icmp eq %struct.wb35_reg_queue* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %83
  %128 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %129 = load %struct.wb35_reg*, %struct.wb35_reg** %12, align 8
  %130 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %129, i32 0, i32 2
  store %struct.wb35_reg_queue* %128, %struct.wb35_reg_queue** %130, align 8
  br label %137

131:                                              ; preds = %83
  %132 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %133 = load %struct.wb35_reg*, %struct.wb35_reg** %12, align 8
  %134 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %133, i32 0, i32 1
  %135 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %134, align 8
  %136 = getelementptr inbounds %struct.wb35_reg_queue, %struct.wb35_reg_queue* %135, i32 0, i32 2
  store %struct.wb35_reg_queue* %132, %struct.wb35_reg_queue** %136, align 8
  br label %137

137:                                              ; preds = %131, %127
  %138 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %139 = load %struct.wb35_reg*, %struct.wb35_reg** %12, align 8
  %140 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %139, i32 0, i32 1
  store %struct.wb35_reg_queue* %138, %struct.wb35_reg_queue** %140, align 8
  %141 = load %struct.wb35_reg*, %struct.wb35_reg** %12, align 8
  %142 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %141, i32 0, i32 0
  %143 = call i32 @spin_unlock_irq(i32* %142)
  %144 = load %struct.hw_data*, %struct.hw_data** %7, align 8
  %145 = call i32 @Wb35Reg_EP0VM_start(%struct.hw_data* %144)
  store i8 1, i8* %6, align 1
  br label %159

146:                                              ; preds = %41, %28
  %147 = load %struct.urb*, %struct.urb** %13, align 8
  %148 = icmp ne %struct.urb* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load %struct.urb*, %struct.urb** %13, align 8
  %151 = call i32 @usb_free_urb(%struct.urb* %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %154 = icmp ne %struct.wb35_reg_queue* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.wb35_reg_queue*, %struct.wb35_reg_queue** %14, align 8
  %157 = call i32 @kfree(%struct.wb35_reg_queue* %156)
  br label %158

158:                                              ; preds = %155, %152
  store i8 0, i8* %6, align 1
  br label %159

159:                                              ; preds = %158, %137, %27
  %160 = load i8, i8* %6, align 1
  ret i8 %160
}

declare dso_local %struct.wb35_reg_queue* @kzalloc(i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @Wb35Reg_EP0VM_start(%struct.hw_data*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.wb35_reg_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
