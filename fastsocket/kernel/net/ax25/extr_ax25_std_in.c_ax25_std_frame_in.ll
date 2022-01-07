; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_std_in.c_ax25_std_frame_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_std_in.c_ax25_std_frame_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ax25_std_frame_in(%struct.TYPE_9__* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @ax25_decode(%struct.TYPE_9__* %12, %struct.sk_buff* %13, i32* %9, i32* %10, i32* %11)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %50 [
    i32 131, label %18
    i32 130, label %25
    i32 129, label %32
    i32 128, label %41
  ]

18:                                               ; preds = %3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ax25_std_state1_machine(%struct.TYPE_9__* %19, %struct.sk_buff* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  br label %50

25:                                               ; preds = %3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ax25_std_state2_machine(%struct.TYPE_9__* %26, %struct.sk_buff* %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  br label %50

32:                                               ; preds = %3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ax25_std_state3_machine(%struct.TYPE_9__* %33, %struct.sk_buff* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  br label %50

41:                                               ; preds = %3
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ax25_std_state4_machine(%struct.TYPE_9__* %42, %struct.sk_buff* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %3, %41, %32, %25, %18
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = call i32 @ax25_kick(%struct.TYPE_9__* %51)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @ax25_decode(%struct.TYPE_9__*, %struct.sk_buff*, i32*, i32*, i32*) #1

declare dso_local i32 @ax25_std_state1_machine(%struct.TYPE_9__*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ax25_std_state2_machine(%struct.TYPE_9__*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ax25_std_state3_machine(%struct.TYPE_9__*, %struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ax25_std_state4_machine(%struct.TYPE_9__*, %struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ax25_kick(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
