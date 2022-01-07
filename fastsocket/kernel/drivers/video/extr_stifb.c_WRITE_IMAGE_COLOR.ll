; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_stifb.c_WRITE_IMAGE_COLOR.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_stifb.c_WRITE_IMAGE_COLOR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stifb_info = type { i32 }

@REG_3 = common dso_local global i32 0, align 4
@REG_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stifb_info*, i32, i32)* @WRITE_IMAGE_COLOR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WRITE_IMAGE_COLOR(%struct.stifb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stifb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stifb_info* %0, %struct.stifb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %8 = call i32 @SETUP_HW(%struct.stifb_info* %7)
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 256, %9
  %11 = shl i32 %10, 2
  %12 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %13 = load i32, i32* @REG_3, align 4
  %14 = call i32 @WRITE_WORD(i32 %11, %struct.stifb_info* %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.stifb_info*, %struct.stifb_info** %4, align 8
  %17 = load i32, i32* @REG_4, align 4
  %18 = call i32 @WRITE_WORD(i32 %15, %struct.stifb_info* %16, i32 %17)
  ret void
}

declare dso_local i32 @SETUP_HW(%struct.stifb_info*) #1

declare dso_local i32 @WRITE_WORD(i32, %struct.stifb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
