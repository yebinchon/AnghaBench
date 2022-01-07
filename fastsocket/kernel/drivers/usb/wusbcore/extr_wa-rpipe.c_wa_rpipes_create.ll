; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-rpipe.c_wa_rpipes_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-rpipe.c_wa_rpipes_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wa_rpipes_create(%struct.wahc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wahc*, align 8
  store %struct.wahc* %0, %struct.wahc** %3, align 8
  %4 = load %struct.wahc*, %struct.wahc** %3, align 8
  %5 = getelementptr inbounds %struct.wahc, %struct.wahc* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.wahc*, %struct.wahc** %3, align 8
  %10 = getelementptr inbounds %struct.wahc, %struct.wahc* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.wahc*, %struct.wahc** %3, align 8
  %12 = getelementptr inbounds %struct.wahc, %struct.wahc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @BITS_TO_LONGS(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kzalloc(i32 %17, i32 %18)
  %20 = load %struct.wahc*, %struct.wahc** %3, align 8
  %21 = getelementptr inbounds %struct.wahc, %struct.wahc* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.wahc*, %struct.wahc** %3, align 8
  %23 = getelementptr inbounds %struct.wahc, %struct.wahc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
