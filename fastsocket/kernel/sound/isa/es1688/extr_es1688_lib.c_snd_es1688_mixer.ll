; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es1688 = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@snd_es1688_controls = common dso_local global i32* null, align 8
@ES1688_INIT_TABLE_SIZE = common dso_local global i32 0, align 4
@snd_es1688_init_table = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_es1688_mixer(%struct.snd_es1688* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_es1688*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.snd_es1688* %0, %struct.snd_es1688** %3, align 8
  %9 = load %struct.snd_es1688*, %struct.snd_es1688** %3, align 8
  %10 = icmp ne %struct.snd_es1688* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.snd_es1688*, %struct.snd_es1688** %3, align 8
  %13 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %12, i32 0, i32 0
  %14 = load %struct.snd_card*, %struct.snd_card** %13, align 8
  %15 = icmp ne %struct.snd_card* %14, null
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %94

25:                                               ; preds = %17
  %26 = load %struct.snd_es1688*, %struct.snd_es1688** %3, align 8
  %27 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %26, i32 0, i32 0
  %28 = load %struct.snd_card*, %struct.snd_card** %27, align 8
  store %struct.snd_card* %28, %struct.snd_card** %4, align 8
  %29 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %30 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.snd_es1688*, %struct.snd_es1688** %3, align 8
  %33 = call i32 @snd_es1688_chip_id(%struct.snd_es1688* %32)
  %34 = call i32 @strcpy(i32 %31, i32 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %53, %25
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** @snd_es1688_controls, align 8
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %42 = load i32*, i32** @snd_es1688_controls, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load %struct.snd_es1688*, %struct.snd_es1688** %3, align 8
  %47 = call i32 @snd_ctl_new1(i32* %45, %struct.snd_es1688* %46)
  %48 = call i32 @snd_ctl_add(%struct.snd_card* %41, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %94

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %35

56:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %90, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @ES1688_INIT_TABLE_SIZE, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  %62 = load i8**, i8*** @snd_es1688_init_table, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %7, align 1
  %69 = load i8**, i8*** @snd_es1688_init_table, align 8
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %8, align 1
  %76 = load i8, i8* %7, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp slt i32 %77, 160
  br i1 %78, label %79, label %84

79:                                               ; preds = %61
  %80 = load %struct.snd_es1688*, %struct.snd_es1688** %3, align 8
  %81 = load i8, i8* %7, align 1
  %82 = load i8, i8* %8, align 1
  %83 = call i32 @snd_es1688_mixer_write(%struct.snd_es1688* %80, i8 zeroext %81, i8 zeroext %82)
  br label %89

84:                                               ; preds = %61
  %85 = load %struct.snd_es1688*, %struct.snd_es1688** %3, align 8
  %86 = load i8, i8* %7, align 1
  %87 = load i8, i8* %8, align 1
  %88 = call i32 @snd_es1688_write(%struct.snd_es1688* %85, i8 zeroext %86, i8 zeroext %87)
  br label %89

89:                                               ; preds = %84, %79
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %5, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %57

93:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %50, %22
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_es1688_chip_id(%struct.snd_es1688*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_es1688*) #1

declare dso_local i32 @snd_es1688_mixer_write(%struct.snd_es1688*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @snd_es1688_write(%struct.snd_es1688*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
