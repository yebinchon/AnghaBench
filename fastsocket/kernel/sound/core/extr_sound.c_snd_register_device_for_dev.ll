; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sound.c_snd_register_device_for_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sound.c_snd_register_device_for_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_minor = type { i32, i32, i32, i32, i8*, %struct.file_operations* }
%struct.file_operations = type { i32 }
%struct.snd_card = type { i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sound_mutex = common dso_local global i32 0, align 4
@snd_minors = common dso_local global %struct.snd_minor** null, align 8
@EBUSY = common dso_local global i32 0, align 4
@sound_class = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_register_device_for_dev(i32 %0, %struct.snd_card* %1, i32 %2, %struct.file_operations* %3, i8* %4, i8* %5, %struct.device* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_card*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.file_operations*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.snd_minor*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.snd_card* %1, %struct.snd_card** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.file_operations* %3, %struct.file_operations** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.device* %6, %struct.device** %15, align 8
  %18 = load i8*, i8** %14, align 8
  %19 = icmp ne i8* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @snd_BUG_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %120

27:                                               ; preds = %7
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.snd_minor* @kmalloc(i32 32, i32 %28)
  store %struct.snd_minor* %29, %struct.snd_minor** %17, align 8
  %30 = load %struct.snd_minor*, %struct.snd_minor** %17, align 8
  %31 = icmp eq %struct.snd_minor* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %120

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.snd_minor*, %struct.snd_minor** %17, align 8
  %38 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  %40 = icmp ne %struct.snd_card* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  %43 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %46

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ -1, %45 ]
  %48 = load %struct.snd_minor*, %struct.snd_minor** %17, align 8
  %49 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.snd_minor*, %struct.snd_minor** %17, align 8
  %52 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %54 = load %struct.snd_minor*, %struct.snd_minor** %17, align 8
  %55 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %54, i32 0, i32 5
  store %struct.file_operations* %53, %struct.file_operations** %55, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load %struct.snd_minor*, %struct.snd_minor** %17, align 8
  %58 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = call i32 @mutex_lock(i32* @sound_mutex)
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @snd_kernel_minor(i32 %60, %struct.snd_card* %61, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %46
  %67 = load %struct.snd_minor**, %struct.snd_minor*** @snd_minors, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.snd_minor*, %struct.snd_minor** %67, i64 %69
  %71 = load %struct.snd_minor*, %struct.snd_minor** %70, align 8
  %72 = icmp ne %struct.snd_minor* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %73, %66, %46
  %77 = load i32, i32* %16, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = call i32 @mutex_unlock(i32* @sound_mutex)
  %81 = load %struct.snd_minor*, %struct.snd_minor** %17, align 8
  %82 = call i32 @kfree(%struct.snd_minor* %81)
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %8, align 4
  br label %120

84:                                               ; preds = %76
  %85 = load %struct.snd_minor*, %struct.snd_minor** %17, align 8
  %86 = load %struct.snd_minor**, %struct.snd_minor*** @snd_minors, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.snd_minor*, %struct.snd_minor** %86, i64 %88
  store %struct.snd_minor* %85, %struct.snd_minor** %89, align 8
  %90 = load i32, i32* @sound_class, align 4
  %91 = load %struct.device*, %struct.device** %15, align 8
  %92 = load i32, i32* @major, align 4
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @MKDEV(i32 %92, i32 %93)
  %95 = load i8*, i8** %13, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = call i32 @device_create(i32 %90, %struct.device* %91, i32 %94, i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %96)
  %98 = load %struct.snd_minor*, %struct.snd_minor** %17, align 8
  %99 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.snd_minor*, %struct.snd_minor** %17, align 8
  %101 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %84
  %106 = load %struct.snd_minor**, %struct.snd_minor*** @snd_minors, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.snd_minor*, %struct.snd_minor** %106, i64 %108
  store %struct.snd_minor* null, %struct.snd_minor** %109, align 8
  %110 = call i32 @mutex_unlock(i32* @sound_mutex)
  %111 = load %struct.snd_minor*, %struct.snd_minor** %17, align 8
  %112 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @PTR_ERR(i32 %113)
  store i32 %114, i32* %16, align 4
  %115 = load %struct.snd_minor*, %struct.snd_minor** %17, align 8
  %116 = call i32 @kfree(%struct.snd_minor* %115)
  %117 = load i32, i32* %16, align 4
  store i32 %117, i32* %8, align 4
  br label %120

118:                                              ; preds = %84
  %119 = call i32 @mutex_unlock(i32* @sound_mutex)
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %118, %105, %79, %32, %24
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_minor* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_kernel_minor(i32, %struct.snd_card*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.snd_minor*) #1

declare dso_local i32 @device_create(i32, %struct.device*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
