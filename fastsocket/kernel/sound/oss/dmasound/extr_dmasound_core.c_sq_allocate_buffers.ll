; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/dmasound/extr_dmasound_core.c_sq_allocate_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/dmasound/extr_dmasound_core.c_sq_allocate_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i32)*, i32 (i32, i32)* }
%struct.sound_queue = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dmasound = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sound_queue*, i32, i32)* @sq_allocate_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sq_allocate_buffers(%struct.sound_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sound_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sound_queue* %0, %struct.sound_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %10 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %90

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %17 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %20 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmalloc(i32 %24, i32 %25)
  %27 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %28 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %30 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %14
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %90

36:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %86, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %37
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 0, i32 1), align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32 %42(i32 %43, i32 %44)
  %46 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %47 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  %52 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %53 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %41
  br label %61

61:                                               ; preds = %65, %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 0, i32 0), align 8
  %67 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %68 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 %66(i32 %73, i32 %74)
  br label %61

76:                                               ; preds = %61
  %77 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %78 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @kfree(i32* %79)
  %81 = load %struct.sound_queue*, %struct.sound_queue** %5, align 8
  %82 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %81, i32 0, i32 2
  store i32* null, i32** %82, align 8
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %90

85:                                               ; preds = %41
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %37

89:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %76, %33, %13
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
