; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_auto_unconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_auto_unconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@COMEDI_NUM_BOARD_MINORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_auto_unconfig(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call i64 @dev_get_drvdata(%struct.device* %4)
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %24

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %14 = icmp uge i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @comedi_free_board_minor(i32 %18)
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = call i32 @dev_set_drvdata(%struct.device* %20, i32* null)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @kfree(i32* %22)
  br label %24

24:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @comedi_free_board_minor(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
