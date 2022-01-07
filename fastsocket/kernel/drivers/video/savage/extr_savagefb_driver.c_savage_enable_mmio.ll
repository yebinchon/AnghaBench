; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savage_enable_mmio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savage_enable_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savagefb_par = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"savage_enable_mmio\0A\00", align 1
@S3_SAVAGE4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.savagefb_par*)* @savage_enable_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savage_enable_mmio(%struct.savagefb_par* %0) #0 {
  %2 = alloca %struct.savagefb_par*, align 8
  %3 = alloca i8, align 1
  store %struct.savagefb_par* %0, %struct.savagefb_par** %2, align 8
  %4 = call i32 @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %6 = call zeroext i8 @vga_in8(i32 963, %struct.savagefb_par* %5)
  store i8 %6, i8* %3, align 1
  %7 = load i8, i8* %3, align 1
  %8 = zext i8 %7 to i32
  %9 = or i32 %8, 1
  %10 = trunc i32 %9 to i8
  %11 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %12 = call i32 @vga_out8(i32 963, i8 zeroext %10, %struct.savagefb_par* %11)
  %13 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %14 = call zeroext i8 @vga_in8(i32 972, %struct.savagefb_par* %13)
  store i8 %14, i8* %3, align 1
  %15 = load i8, i8* %3, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %16, 1
  %18 = trunc i32 %17 to i8
  %19 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %20 = call i32 @vga_out8(i32 962, i8 zeroext %18, %struct.savagefb_par* %19)
  %21 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %22 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @S3_SAVAGE4, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %28 = call i32 @vga_out8(i32 980, i8 zeroext 64, %struct.savagefb_par* %27)
  %29 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %30 = call zeroext i8 @vga_in8(i32 981, %struct.savagefb_par* %29)
  store i8 %30, i8* %3, align 1
  %31 = load i8, i8* %3, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, 1
  %34 = trunc i32 %33 to i8
  %35 = load %struct.savagefb_par*, %struct.savagefb_par** %2, align 8
  %36 = call i32 @vga_out8(i32 981, i8 zeroext %34, %struct.savagefb_par* %35)
  br label %37

37:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local zeroext i8 @vga_in8(i32, %struct.savagefb_par*) #1

declare dso_local i32 @vga_out8(i32, i8 zeroext, %struct.savagefb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
