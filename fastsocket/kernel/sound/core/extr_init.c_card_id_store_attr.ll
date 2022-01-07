; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_init.c_card_id_store_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_init.c_card_id_store_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@snd_card_mutex = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@snd_ecards_limit = common dso_local global i64 0, align 8
@snd_cards = common dso_local global %struct.snd_card** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @card_id_store_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @card_id_store_attr(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.snd_card*, align 8
  %11 = alloca [4 x i8], align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.snd_card* @dev_get_drvdata(%struct.device* %15)
  store %struct.snd_card* %16, %struct.snd_card** %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ugt i64 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %22

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i64 [ 3, %19 ], [ %21, %20 ]
  store i64 %23, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %24

24:                                               ; preds = %47, %22
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @isalnum(i32 %34) #3
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 95
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 45
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %5, align 8
  br label %111

46:                                               ; preds = %40, %37, %28
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %13, align 8
  br label %24

50:                                               ; preds = %24
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @memcpy(i8* %51, i8* %52, i64 %53)
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 %55
  store i8 0, i8* %56, align 1
  %57 = call i32 @mutex_lock(i32* @snd_card_mutex)
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %59 = call i32 @snd_info_check_reserved_words(i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %95, %61
  %63 = call i32 @mutex_unlock(i32* @snd_card_mutex)
  %64 = load i64, i64* @EEXIST, align 8
  %65 = sub i64 0, %64
  store i64 %65, i64* %5, align 8
  br label %111

66:                                               ; preds = %50
  store i64 0, i64* %13, align 8
  br label %67

67:                                               ; preds = %97, %66
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* @snd_ecards_limit, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load %struct.snd_card**, %struct.snd_card*** @snd_cards, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds %struct.snd_card*, %struct.snd_card** %72, i64 %73
  %75 = load %struct.snd_card*, %struct.snd_card** %74, align 8
  %76 = icmp ne %struct.snd_card* %75, null
  br i1 %76, label %77, label %96

77:                                               ; preds = %71
  %78 = load %struct.snd_card**, %struct.snd_card*** @snd_cards, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds %struct.snd_card*, %struct.snd_card** %78, i64 %79
  %81 = load %struct.snd_card*, %struct.snd_card** %80, align 8
  %82 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %85 = call i32 @strcmp(i32 %83, i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %77
  %88 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  %89 = load %struct.snd_card**, %struct.snd_card*** @snd_cards, align 8
  %90 = load i64, i64* %13, align 8
  %91 = getelementptr inbounds %struct.snd_card*, %struct.snd_card** %89, i64 %90
  %92 = load %struct.snd_card*, %struct.snd_card** %91, align 8
  %93 = icmp eq %struct.snd_card* %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %108

95:                                               ; preds = %87
  br label %62

96:                                               ; preds = %77, %71
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %13, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %13, align 8
  br label %67

100:                                              ; preds = %67
  %101 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  %102 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %105 = call i32 @strcpy(i32 %103, i8* %104)
  %106 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  %107 = call i32 @snd_info_card_id_change(%struct.snd_card* %106)
  br label %108

108:                                              ; preds = %100, %94
  %109 = call i32 @mutex_unlock(i32* @snd_card_mutex)
  %110 = load i64, i64* %9, align 8
  store i64 %110, i64* %5, align 8
  br label %111

111:                                              ; preds = %108, %62, %43
  %112 = load i64, i64* %5, align 8
  ret i64 %112
}

declare dso_local %struct.snd_card* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_info_check_reserved_words(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_info_card_id_change(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
