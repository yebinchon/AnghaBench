; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_init.c_snd_card_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_init.c_snd_card_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i64, i8*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@sound_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"card%i\00", align 1
@snd_card_mutex = common dso_local global i32 0, align 4
@snd_cards = common dso_local global %struct.snd_card** null, align 8
@card_id_attrs = common dso_local global i32 0, align 4
@card_number_attrs = common dso_local global i32 0, align 4
@SND_MIXER_OSS_NOTIFY_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_card_register(%struct.snd_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  %5 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %6 = icmp ne %struct.snd_card* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %108

14:                                               ; preds = %1
  %15 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %16 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @sound_class, align 4
  %21 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %22 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @MKDEV(i32 0, i32 0)
  %25 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %26 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %27 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32* @device_create(i32 %20, i32 %23, i32 %24, %struct.snd_card* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %31 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %33 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @IS_ERR(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %19
  %38 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %39 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %37, %19
  br label %41

41:                                               ; preds = %40, %14
  %42 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %43 = call i32 @snd_device_register_all(%struct.snd_card* %42)
  store i32 %43, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %108

47:                                               ; preds = %41
  %48 = call i32 @mutex_lock(i32* @snd_card_mutex)
  %49 = load %struct.snd_card**, %struct.snd_card*** @snd_cards, align 8
  %50 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %51 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.snd_card*, %struct.snd_card** %49, i64 %52
  %54 = load %struct.snd_card*, %struct.snd_card** %53, align 8
  %55 = icmp ne %struct.snd_card* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = call i32 @mutex_unlock(i32* @snd_card_mutex)
  store i32 0, i32* %2, align 4
  br label %108

58:                                               ; preds = %47
  %59 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %60 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %61 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %72

68:                                               ; preds = %58
  %69 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %70 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  br label %72

72:                                               ; preds = %68, %67
  %73 = phi i8* [ null, %67 ], [ %71, %68 ]
  %74 = call i32 @snd_card_set_id_no_lock(%struct.snd_card* %59, i8* %73)
  %75 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %76 = load %struct.snd_card**, %struct.snd_card*** @snd_cards, align 8
  %77 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %78 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.snd_card*, %struct.snd_card** %76, i64 %79
  store %struct.snd_card* %75, %struct.snd_card** %80, align 8
  %81 = call i32 @mutex_unlock(i32* @snd_card_mutex)
  %82 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %83 = call i32 @init_info_for_card(%struct.snd_card* %82)
  %84 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %85 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %107

88:                                               ; preds = %72
  %89 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %90 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @device_create_file(i32* %91, i32* @card_id_attrs)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %108

97:                                               ; preds = %88
  %98 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %99 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @device_create_file(i32* %100, i32* @card_number_attrs)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %108

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %72
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %104, %95, %56, %45, %11
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32* @device_create(i32, i32, i32, %struct.snd_card*, i8*, i64) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @snd_device_register_all(%struct.snd_card*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_card_set_id_no_lock(%struct.snd_card*, i8*) #1

declare dso_local i32 @init_info_for_card(%struct.snd_card*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
