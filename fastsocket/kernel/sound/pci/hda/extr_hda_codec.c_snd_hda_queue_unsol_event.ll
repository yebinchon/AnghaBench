; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_queue_unsol_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_queue_unsol_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_bus = type { i32, %struct.hda_bus_unsolicited* }
%struct.hda_bus_unsolicited = type { i32, i32, i8** }

@HDA_UNSOL_QUEUE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_queue_unsol_event(%struct.hda_bus* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_bus*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hda_bus_unsolicited*, align 8
  %9 = alloca i32, align 4
  store %struct.hda_bus* %0, %struct.hda_bus** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.hda_bus*, %struct.hda_bus** %5, align 8
  %11 = icmp ne %struct.hda_bus* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.hda_bus*, %struct.hda_bus** %5, align 8
  %14 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %62

18:                                               ; preds = %12
  %19 = load %struct.hda_bus*, %struct.hda_bus** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @trace_hda_unsol_event(%struct.hda_bus* %19, i8* %20, i8* %21)
  %23 = load %struct.hda_bus*, %struct.hda_bus** %5, align 8
  %24 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %23, i32 0, i32 1
  %25 = load %struct.hda_bus_unsolicited*, %struct.hda_bus_unsolicited** %24, align 8
  store %struct.hda_bus_unsolicited* %25, %struct.hda_bus_unsolicited** %8, align 8
  %26 = load %struct.hda_bus_unsolicited*, %struct.hda_bus_unsolicited** %8, align 8
  %27 = icmp ne %struct.hda_bus_unsolicited* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %62

29:                                               ; preds = %18
  %30 = load %struct.hda_bus_unsolicited*, %struct.hda_bus_unsolicited** %8, align 8
  %31 = getelementptr inbounds %struct.hda_bus_unsolicited, %struct.hda_bus_unsolicited* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* @HDA_UNSOL_QUEUE_SIZE, align 4
  %35 = srem i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.hda_bus_unsolicited*, %struct.hda_bus_unsolicited** %8, align 8
  %38 = getelementptr inbounds %struct.hda_bus_unsolicited, %struct.hda_bus_unsolicited* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %39, 1
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.hda_bus_unsolicited*, %struct.hda_bus_unsolicited** %8, align 8
  %43 = getelementptr inbounds %struct.hda_bus_unsolicited, %struct.hda_bus_unsolicited* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %41, i8** %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.hda_bus_unsolicited*, %struct.hda_bus_unsolicited** %8, align 8
  %50 = getelementptr inbounds %struct.hda_bus_unsolicited, %struct.hda_bus_unsolicited* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  store i8* %48, i8** %55, align 8
  %56 = load %struct.hda_bus*, %struct.hda_bus** %5, align 8
  %57 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.hda_bus_unsolicited*, %struct.hda_bus_unsolicited** %8, align 8
  %60 = getelementptr inbounds %struct.hda_bus_unsolicited, %struct.hda_bus_unsolicited* %59, i32 0, i32 1
  %61 = call i32 @queue_work(i32 %58, i32* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %29, %28, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @trace_hda_unsol_event(%struct.hda_bus*, i8*, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
