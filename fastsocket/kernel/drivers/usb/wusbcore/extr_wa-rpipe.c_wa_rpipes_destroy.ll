; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-rpipe.c_wa_rpipes_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-rpipe.c_wa_rpipes_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"BUG: pipes not released on exit: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wa_rpipes_destroy(%struct.wahc* %0) #0 {
  %2 = alloca %struct.wahc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca [256 x i8], align 16
  store %struct.wahc* %0, %struct.wahc** %2, align 8
  %5 = load %struct.wahc*, %struct.wahc** %2, align 8
  %6 = getelementptr inbounds %struct.wahc, %struct.wahc* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.wahc*, %struct.wahc** %2, align 8
  %10 = getelementptr inbounds %struct.wahc, %struct.wahc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.wahc*, %struct.wahc** %2, align 8
  %13 = getelementptr inbounds %struct.wahc, %struct.wahc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bitmap_empty(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %1
  %18 = call i32 @WARN_ON(i32 1)
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %20 = load %struct.wahc*, %struct.wahc** %2, align 8
  %21 = getelementptr inbounds %struct.wahc, %struct.wahc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.wahc*, %struct.wahc** %2, align 8
  %24 = getelementptr inbounds %struct.wahc, %struct.wahc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bitmap_scnprintf(i8* %19, i32 256, i32 %22, i32 %25)
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %17, %1
  %31 = load %struct.wahc*, %struct.wahc** %2, align 8
  %32 = getelementptr inbounds %struct.wahc, %struct.wahc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @kfree(i32 %33)
  ret void
}

declare dso_local i32 @bitmap_empty(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bitmap_scnprintf(i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
