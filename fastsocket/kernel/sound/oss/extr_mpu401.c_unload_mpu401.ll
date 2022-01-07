; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_unload_mpu401.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_unload_mpu401.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_info = type { i32*, i64, i64, i32 }

@mpu401_synth_operations = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unload_mpu401(%struct.address_info* %0) #0 {
  %2 = alloca %struct.address_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.address_info* %0, %struct.address_info** %2, align 8
  %5 = load %struct.address_info*, %struct.address_info** %2, align 8
  %6 = getelementptr inbounds %struct.address_info, %struct.address_info* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = load %struct.address_info*, %struct.address_info** %2, align 8
  %14 = getelementptr inbounds %struct.address_info, %struct.address_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @release_region(i32 %15, i32 2)
  %17 = load %struct.address_info*, %struct.address_info** %2, align 8
  %18 = getelementptr inbounds %struct.address_info, %struct.address_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %12
  %22 = load %struct.address_info*, %struct.address_info** %2, align 8
  %23 = getelementptr inbounds %struct.address_info, %struct.address_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.address_info*, %struct.address_info** %2, align 8
  %28 = getelementptr inbounds %struct.address_info, %struct.address_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.address_info*, %struct.address_info** %2, align 8
  %31 = call i32 @free_irq(i64 %29, %struct.address_info* %30)
  br label %32

32:                                               ; preds = %26, %21, %12
  %33 = load i8**, i8*** @mpu401_synth_operations, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @sound_unload_mididev(i32 %38)
  %40 = load %struct.address_info*, %struct.address_info** %2, align 8
  %41 = getelementptr inbounds %struct.address_info, %struct.address_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sound_unload_timerdev(i32 %44)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @kfree(i8* %46)
  br label %48

48:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.address_info*) #1

declare dso_local i32 @sound_unload_mididev(i32) #1

declare dso_local i32 @sound_unload_timerdev(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
