; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_newport_con.c_newport_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_newport_con.c_newport_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@npregs = common dso_local global i32 0, align 4
@VC2_IREG_CONTROL = common dso_local global i32 0, align 4
@VC2_CTRL_EDISP = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32)* @newport_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newport_blank(%struct.vc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load i32, i32* @npregs, align 4
  %12 = load i32, i32* @VC2_IREG_CONTROL, align 4
  %13 = call zeroext i16 @newport_vc2_get(i32 %11, i32 %12)
  store i16 %13, i16* %7, align 2
  %14 = load i32, i32* @npregs, align 4
  %15 = load i32, i32* @VC2_IREG_CONTROL, align 4
  %16 = load i16, i16* %7, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* @VC2_CTRL_EDISP, align 2
  %19 = zext i16 %18 to i32
  %20 = or i32 %17, %19
  %21 = trunc i32 %20 to i16
  %22 = call i32 @newport_vc2_set(i32 %14, i32 %15, i16 zeroext %21)
  br label %37

23:                                               ; preds = %3
  %24 = load i32, i32* @npregs, align 4
  %25 = load i32, i32* @VC2_IREG_CONTROL, align 4
  %26 = call zeroext i16 @newport_vc2_get(i32 %24, i32 %25)
  store i16 %26, i16* %7, align 2
  %27 = load i32, i32* @npregs, align 4
  %28 = load i32, i32* @VC2_IREG_CONTROL, align 4
  %29 = load i16, i16* %7, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* @VC2_CTRL_EDISP, align 2
  %32 = zext i16 %31 to i32
  %33 = xor i32 %32, -1
  %34 = and i32 %30, %33
  %35 = trunc i32 %34 to i16
  %36 = call i32 @newport_vc2_set(i32 %27, i32 %28, i16 zeroext %35)
  br label %37

37:                                               ; preds = %23, %10
  ret i32 1
}

declare dso_local zeroext i16 @newport_vc2_get(i32, i32) #1

declare dso_local i32 @newport_vc2_set(i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
