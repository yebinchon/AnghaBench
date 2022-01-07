; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_fsg_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_fsg_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.fsg_dev = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"disconnect or port reset\0A\00", align 1
@FSG_STATE_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_gadget*)* @fsg_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsg_disconnect(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.fsg_dev*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %4 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %5 = call %struct.fsg_dev* @get_gadget_data(%struct.usb_gadget* %4)
  store %struct.fsg_dev* %5, %struct.fsg_dev** %3, align 8
  %6 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %7 = call i32 @DBG(%struct.fsg_dev* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %9 = load i32, i32* @FSG_STATE_DISCONNECT, align 4
  %10 = call i32 @raise_exception(%struct.fsg_dev* %8, i32 %9)
  ret void
}

declare dso_local %struct.fsg_dev* @get_gadget_data(%struct.usb_gadget*) #1

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*) #1

declare dso_local i32 @raise_exception(%struct.fsg_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
