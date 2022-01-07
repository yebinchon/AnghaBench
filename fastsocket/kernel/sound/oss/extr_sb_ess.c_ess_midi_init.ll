; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_midi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_ess.c_ess_midi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.address_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ess_midi_init(%struct.TYPE_5__* %0, %struct.address_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.address_info*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.address_info* %1, %struct.address_info** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = call i32 @ess_getmixer(%struct.TYPE_5__* %8, i32 64)
  %10 = and i32 %9, 3
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %6, align 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = load i8, i8* %6, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, 3
  %21 = trunc i32 %20 to i8
  %22 = call i32 @ess_setmixer(%struct.TYPE_5__* %17, i32 64, i8 zeroext %21)
  store i32 0, i32* %3, align 4
  br label %68

23:                                               ; preds = %2
  %24 = load %struct.address_info*, %struct.address_info** %5, align 8
  %25 = getelementptr inbounds %struct.address_info, %struct.address_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 240
  %28 = ashr i32 %27, 4
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %7, align 1
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sgt i32 %31, 3
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = load i8, i8* %6, align 1
  %36 = call i32 @ess_setmixer(%struct.TYPE_5__* %34, i32 64, i8 zeroext %35)
  store i32 0, i32* %3, align 4
  br label %68

37:                                               ; preds = %23
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 3
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %6, align 1
  store i8 1, i8* %7, align 1
  %45 = load %struct.address_info*, %struct.address_info** %5, align 8
  %46 = getelementptr inbounds %struct.address_info, %struct.address_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @abs(i32 %47) #3
  switch i32 %48, label %53 [
    i32 9, label %49
    i32 5, label %50
    i32 7, label %51
    i32 10, label %52
  ]

49:                                               ; preds = %37
  store i8 4, i8* %7, align 1
  br label %54

50:                                               ; preds = %37
  store i8 5, i8* %7, align 1
  br label %54

51:                                               ; preds = %37
  store i8 6, i8* %7, align 1
  br label %54

52:                                               ; preds = %37
  store i8 7, i8* %7, align 1
  br label %54

53:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %68

54:                                               ; preds = %52, %51, %50, %49
  %55 = load i8, i8* %7, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 5
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %6, align 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = load i8, i8* %6, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %64, 3
  %66 = trunc i32 %65 to i8
  %67 = call i32 @ess_setmixer(%struct.TYPE_5__* %62, i32 64, i8 zeroext %66)
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %54, %53, %33, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @ess_getmixer(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ess_setmixer(%struct.TYPE_5__*, i32, i8 zeroext) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
