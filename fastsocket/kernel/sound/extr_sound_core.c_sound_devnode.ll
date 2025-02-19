; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/extr_sound_core.c_sound_devnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/extr_sound_core.c_sound_devnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@SOUND_MAJOR = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"snd/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i32*)* @sound_devnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sound_devnode(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @MAJOR(i32 %8)
  %10 = load i64, i64* @SOUND_MAJOR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_name(%struct.device* %15)
  %17 = call i8* @kasprintf(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i8*, i8** %3, align 8
  ret i8* %19
}

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
