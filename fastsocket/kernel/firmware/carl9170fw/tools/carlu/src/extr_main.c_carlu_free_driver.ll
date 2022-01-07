; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_carlu_free_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_carlu_free_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"destroy driver struct.\0A\00", align 1
@__AR9170_NUM_TXQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carlu_free_driver(%struct.carlu* %0) #0 {
  %2 = alloca %struct.carlu*, align 8
  %3 = alloca i32, align 4
  store %struct.carlu* %0, %struct.carlu** %2, align 8
  %4 = call i32 @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.carlu*, %struct.carlu** %2, align 8
  %6 = getelementptr inbounds %struct.carlu, %struct.carlu* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @SDL_DestroyMutex(i32 %7)
  %9 = load %struct.carlu*, %struct.carlu** %2, align 8
  %10 = getelementptr inbounds %struct.carlu, %struct.carlu* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @SDL_DestroyMutex(i32 %11)
  %13 = load %struct.carlu*, %struct.carlu** %2, align 8
  %14 = getelementptr inbounds %struct.carlu, %struct.carlu* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @SDL_DestroyCond(i32 %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %29, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @__AR9170_NUM_TXQ, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.carlu*, %struct.carlu** %2, align 8
  %23 = getelementptr inbounds %struct.carlu, %struct.carlu* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @frame_queue_kill(i32* %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %17

32:                                               ; preds = %17
  %33 = load %struct.carlu*, %struct.carlu** %2, align 8
  %34 = call i32 @free(%struct.carlu* %33)
  ret void
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @SDL_DestroyMutex(i32) #1

declare dso_local i32 @SDL_DestroyCond(i32) #1

declare dso_local i32 @frame_queue_kill(i32*) #1

declare dso_local i32 @free(%struct.carlu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
