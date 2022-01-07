; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb.h_VerticalRetraceWait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb.h_VerticalRetraceWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savagefb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.savagefb_par*)* @VerticalRetraceWait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VerticalRetraceWait(%struct.savagefb_par* %0) #0 {
  %2 = alloca %struct.savagefb_par*, align 8
  store %struct.savagefb_par* %0, %struct.savagefb_par** %2, align 8
  %3 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %4 = call i32 @vga_out8(i32 980, i32 23, %struct.savagefb_par* %3)
  %5 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %6 = call i32 @vga_in8(i32 981, %struct.savagefb_par* %5)
  %7 = and i32 %6, 128
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %15, %9
  %11 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %12 = call i32 @vga_in8(i32 986, %struct.savagefb_par* %11)
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %10

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %22, %16
  %18 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %19 = call i32 @vga_in8(i32 986, %struct.savagefb_par* %18)
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %17

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @vga_out8(i32, i32, %struct.savagefb_par*) #1

declare dso_local i32 @vga_in8(i32, %struct.savagefb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
