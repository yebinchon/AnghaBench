; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_get_unique_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_jack.c_get_unique_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.hda_jack_tbl* }
%struct.hda_jack_tbl = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c" Jack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8*, i32)* @get_unique_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_unique_index(%struct.hda_codec* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_jack_tbl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %61, %3
  %13 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %15, align 8
  store %struct.hda_jack_tbl* %16, %struct.hda_jack_tbl** %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %65, %12
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %17
  %25 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %7, align 8
  %26 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %64

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %7, align 8
  %32 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @strncmp(i8* %30, i64 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %29
  %41 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %7, align 8
  %42 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %40
  %53 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %7, align 8
  %54 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %12

64:                                               ; preds = %52, %40, %29, %24
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %7, align 8
  %69 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %68, i32 1
  store %struct.hda_jack_tbl* %69, %struct.hda_jack_tbl** %7, align 8
  br label %17

70:                                               ; preds = %17
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i64, i32) #1

declare dso_local i32 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
