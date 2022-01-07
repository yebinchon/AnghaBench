; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_usb_reg_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_usb_reg_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@dma_mem = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@AR9170_USB_REG_EP4_BYTE_COUNT_LOW = common dso_local global i32 0, align 4
@AR9170_USB_REG_EP4_BYTE_COUNT_HIGH = common dso_local global i32 0, align 4
@AR9170_USB_REG_EP4_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usb_reg_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_reg_out() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dma_mem, i32 0, i32 0, i32 0), i32** %1, align 8
  %4 = call i32 (...) @usb_reset_out()
  %5 = load i32, i32* @AR9170_USB_REG_EP4_BYTE_COUNT_LOW, align 4
  %6 = call i32 @getb(i32 %5)
  %7 = load i32, i32* @AR9170_USB_REG_EP4_BYTE_COUNT_HIGH, align 4
  %8 = call i32 @getb(i32 %7)
  %9 = shl i32 %8, 8
  %10 = or i32 %6, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 3
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4
  %16 = ashr i32 %15, 2
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %21

18:                                               ; preds = %0
  %19 = load i32, i32* %2, align 4
  %20 = ashr i32 %19, 2
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %14
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %31, %21
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* @AR9170_USB_REG_EP4_DATA, align 4
  %28 = call i32 @get(i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %1, align 8
  store i32 %28, i32* %29, align 4
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %22

34:                                               ; preds = %22
  %35 = call i32 (...) @get_int_buf()
  %36 = call i32 @handle_cmd(i32 %35)
  %37 = call i32 (...) @usb_trigger_in()
  ret void
}

declare dso_local i32 @usb_reset_out(...) #1

declare dso_local i32 @getb(i32) #1

declare dso_local i32 @get(i32) #1

declare dso_local i32 @handle_cmd(i32) #1

declare dso_local i32 @get_int_buf(...) #1

declare dso_local i32 @usb_trigger_in(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
