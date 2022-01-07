; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sound.c_snd_lookup_minor_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_sound.c_snd_lookup_minor_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_minor = type { i32, i8* }

@snd_minors = common dso_local global %struct.snd_minor** null, align 8
@sound_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @snd_lookup_minor_data(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_minor*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.snd_minor**, %struct.snd_minor*** @snd_minors, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.snd_minor** %9)
  %11 = icmp uge i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %36

13:                                               ; preds = %2
  %14 = call i32 @mutex_lock(i32* @sound_mutex)
  %15 = load %struct.snd_minor**, %struct.snd_minor*** @snd_minors, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.snd_minor*, %struct.snd_minor** %15, i64 %17
  %19 = load %struct.snd_minor*, %struct.snd_minor** %18, align 8
  store %struct.snd_minor* %19, %struct.snd_minor** %6, align 8
  %20 = load %struct.snd_minor*, %struct.snd_minor** %6, align 8
  %21 = icmp ne %struct.snd_minor* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load %struct.snd_minor*, %struct.snd_minor** %6, align 8
  %24 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.snd_minor*, %struct.snd_minor** %6, align 8
  %30 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  br label %33

32:                                               ; preds = %22, %13
  store i8* null, i8** %7, align 8
  br label %33

33:                                               ; preds = %32, %28
  %34 = call i32 @mutex_unlock(i32* @sound_mutex)
  %35 = load i8*, i8** %7, align 8
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %33, %12
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i32 @ARRAY_SIZE(%struct.snd_minor**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
