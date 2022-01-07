; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/dmasound/extr_dmasound_core.c_sq_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/dmasound/extr_dmasound_core.c_sq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32)* }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@dmasound = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@shared_resource_owner = common dso_local global i64 0, align 8
@SND_DEV_AUDIO = common dso_local global i32 0, align 4
@AFMT_MU_LAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sq_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sq_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 1, i32 0), align 8
  %8 = call i32 @try_module_get(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %62

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call i32 @write_sq_open(%struct.file* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %58

19:                                               ; preds = %13
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FMODE_READ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @ENXIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %58

29:                                               ; preds = %19
  %30 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 1, i32 3), align 8
  %31 = icmp ne i32 (i32)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 1, i32 3), align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 %33(i32 %36)
  br label %38

38:                                               ; preds = %32, %29
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call i32 @iminor(%struct.inode* %39)
  %41 = and i32 %40, 15
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 0), align 8
  %42 = load i64, i64* @shared_resource_owner, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 1, i32 2), align 8
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 4), align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 1, i32 2), align 8
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 3), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 1, i32 1), align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 2), align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 0), align 8
  %50 = load i32, i32* @SND_DEV_AUDIO, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = call i32 @sound_set_speed(i32 8000)
  %54 = call i32 @sound_set_stereo(i32 0)
  %55 = load i32, i32* @AFMT_MU_LAW, align 4
  %56 = call i32 @sound_set_format(i32 %55)
  br label %57

57:                                               ; preds = %52, %48
  store i32 0, i32* %3, align 4
  br label %62

58:                                               ; preds = %26, %18
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dmasound, i32 0, i32 1, i32 0), align 8
  %60 = call i32 @module_put(i32 %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %57, %10
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @write_sq_open(%struct.file*) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @sound_set_speed(i32) #1

declare dso_local i32 @sound_set_stereo(i32) #1

declare dso_local i32 @sound_set_format(i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
