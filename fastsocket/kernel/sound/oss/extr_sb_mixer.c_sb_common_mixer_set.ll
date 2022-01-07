; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_mixer.c_sb_common_mixer_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_mixer.c_sb_common_mixer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*** }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LEFT_CHN = common dso_local global i64 0, align 8
@RIGHT_CHN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sb_common_mixer_set(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %106

23:                                               ; preds = %14
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__***, %struct.TYPE_7__**** %25, align 8
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i64, i64* @LEFT_CHN, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %106

41:                                               ; preds = %23
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call zeroext i8 @sb_getmixer(%struct.TYPE_8__* %42, i32 %43)
  store i8 %44, i8* %11, align 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* @LEFT_CHN, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @change_bits(%struct.TYPE_8__* %45, i8* %11, i32 %46, i64 %47, i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__***, %struct.TYPE_7__**** %51, align 8
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %53, i64 %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i64, i64* @RIGHT_CHN, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %41
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i8, i8* %11, align 1
  %68 = call i32 @sb_setmixer(%struct.TYPE_8__* %65, i32 %66, i8 zeroext %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__***, %struct.TYPE_7__**** %70, align 8
  %72 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %72, i64 %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i64, i64* @RIGHT_CHN, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %64
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = shl i32 %85, 8
  %87 = or i32 %84, %86
  store i32 %87, i32* %5, align 4
  br label %106

88:                                               ; preds = %64
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call zeroext i8 @sb_getmixer(%struct.TYPE_8__* %89, i32 %90)
  store i8 %91, i8* %11, align 1
  br label %92

92:                                               ; preds = %88, %41
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i64, i64* @RIGHT_CHN, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @change_bits(%struct.TYPE_8__* %93, i8* %11, i32 %94, i64 %95, i32 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i8, i8* %11, align 1
  %101 = call i32 @sb_setmixer(%struct.TYPE_8__* %98, i32 %99, i8 zeroext %100)
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = shl i32 %103, 8
  %105 = or i32 %102, %104
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %92, %83, %38, %20
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local zeroext i8 @sb_getmixer(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @change_bits(%struct.TYPE_8__*, i8*, i32, i64, i32) #1

declare dso_local i32 @sb_setmixer(%struct.TYPE_8__*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
