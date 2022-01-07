; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_sysex_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_sysex_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32)* }

@max_synthdev = common dso_local global i32 0, align 4
@synth_open_mask = common dso_local global i32 0, align 4
@synth_devs = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @seq_sysex_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_sysex_message(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 2
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @max_synthdev, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %77

17:                                               ; preds = %1
  %18 = load i32, i32* @synth_open_mask, align 4
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %77

24:                                               ; preds = %17
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %77

32:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 6
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 255
  br label %44

44:                                               ; preds = %36, %33
  %45 = phi i1 [ false, %33 ], [ %43, %36 ]
  br i1 %45, label %46, label %52

46:                                               ; preds = %44
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %33

52:                                               ; preds = %44
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %54 = load i32, i32* %3, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %58, align 8
  %60 = icmp ne i32 (i32, i8*, i32)* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %77

62:                                               ; preds = %52
  %63 = load i32, i32* %5, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %67 = load i32, i32* %3, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 %72(i32 %73, i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %16, %23, %31, %61, %65, %62
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
