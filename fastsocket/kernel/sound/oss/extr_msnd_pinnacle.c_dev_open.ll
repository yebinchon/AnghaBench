; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_dev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_msnd_pinnacle.c_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i32 }
%struct.file = type { i32, i32 }

@dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@F_AUDIO_WRITE_INUSE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@F_AUDIO_READ_INUSE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@F_DISABLE_WRITE_NDELAY = common dso_local global i32 0, align 4
@O_NDELAY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 0), align 8
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %84

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FMODE_WRITE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @F_AUDIO_WRITE_INUSE, align 4
  %22 = call i64 @test_bit(i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 4))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FMODE_READ, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i32, i32* @F_AUDIO_READ_INUSE, align 4
  %33 = call i64 @test_bit(i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 4))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %20
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %95

38:                                               ; preds = %31, %24
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = call i32 @dsp_open(%struct.file* %39)
  store i32 %40, i32* %7, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %83

42:                                               ; preds = %38
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 5), align 8
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FMODE_WRITE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %42
  %50 = call i32 (...) @set_default_play_audio_parameters()
  %51 = load i32, i32* @F_DISABLE_WRITE_NDELAY, align 4
  %52 = call i64 @test_bit(i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 4))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load %struct.file*, %struct.file** %5, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @O_NDELAY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 1), align 4
  br label %64

63:                                               ; preds = %49
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 1), align 4
  br label %64

64:                                               ; preds = %63, %54
  br label %65

65:                                               ; preds = %64, %42
  %66 = load %struct.file*, %struct.file** %5, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FMODE_READ, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = call i32 (...) @set_default_rec_audio_parameters()
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @O_NDELAY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 1, i32 0
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 2), align 8
  br label %82

82:                                               ; preds = %72, %65
  br label %83

83:                                               ; preds = %82, %38
  br label %93

84:                                               ; preds = %2
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev, i32 0, i32 3), align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %88
  br label %93

93:                                               ; preds = %92, %83
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %35
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dsp_open(%struct.file*) #1

declare dso_local i32 @set_default_play_audio_parameters(...) #1

declare dso_local i32 @set_default_rec_audio_parameters(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
