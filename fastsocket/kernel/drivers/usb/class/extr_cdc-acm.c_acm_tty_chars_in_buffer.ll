; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_chars_in_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_chars_in_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.acm* }
%struct.acm = type { i32 }

@ACM_NW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @acm_tty_chars_in_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_tty_chars_in_buffer(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.acm*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load %struct.acm*, %struct.acm** %6, align 8
  store %struct.acm* %7, %struct.acm** %4, align 8
  %8 = load %struct.acm*, %struct.acm** %4, align 8
  %9 = call i32 @ACM_READY(%struct.acm* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @ACM_NW, align 4
  %14 = load %struct.acm*, %struct.acm** %4, align 8
  %15 = call i32 @acm_wb_is_avail(%struct.acm* %14)
  %16 = sub nsw i32 %13, %15
  %17 = load %struct.acm*, %struct.acm** %4, align 8
  %18 = getelementptr inbounds %struct.acm, %struct.acm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @ACM_READY(%struct.acm*) #1

declare dso_local i32 @acm_wb_is_avail(%struct.acm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
