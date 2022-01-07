; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_out.c_audpp_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_out.c_audpp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.audio* }
%struct.audio = type { i32, i32, i32, i32 }

@ADRC_ENABLE = common dso_local global i32 0, align 4
@EQ_ENABLE = common dso_local global i32 0, align 4
@IIR_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @audpp_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @audpp_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.audio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.audio*, %struct.audio** %12, align 8
  store %struct.audio* %13, %struct.audio** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.audio*, %struct.audio** %7, align 8
  %15 = getelementptr inbounds %struct.audio, %struct.audio* %14, i32 0, i32 3
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %79 [
    i32 131, label %18
    i32 130, label %52
    i32 129, label %61
    i32 128, label %70
  ]

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @copy_from_user(i32* %10, i8* %20, i32 4)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %83

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @ADRC_ENABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  store i32 %30, i32* %9, align 4
  %31 = load %struct.audio*, %struct.audio** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @audio_enable_adrc(%struct.audio* %31, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @EQ_ENABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  store i32 %39, i32* %9, align 4
  %40 = load %struct.audio*, %struct.audio** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @audio_enable_eq(%struct.audio* %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @IIR_ENABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  store i32 %48, i32* %9, align 4
  %49 = load %struct.audio*, %struct.audio** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @audio_enable_rx_iir(%struct.audio* %49, i32 %50)
  br label %82

52:                                               ; preds = %3
  %53 = load %struct.audio*, %struct.audio** %7, align 8
  %54 = getelementptr inbounds %struct.audio, %struct.audio* %53, i32 0, i32 0
  %55 = load i64, i64* %6, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @copy_from_user(i32* %54, i8* %56, i32 4)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %83

60:                                               ; preds = %52
  br label %82

61:                                               ; preds = %3
  %62 = load %struct.audio*, %struct.audio** %7, align 8
  %63 = getelementptr inbounds %struct.audio, %struct.audio* %62, i32 0, i32 1
  %64 = load i64, i64* %6, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @copy_from_user(i32* %63, i8* %65, i32 4)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %83

69:                                               ; preds = %61
  br label %82

70:                                               ; preds = %3
  %71 = load %struct.audio*, %struct.audio** %7, align 8
  %72 = getelementptr inbounds %struct.audio, %struct.audio* %71, i32 0, i32 2
  %73 = load i64, i64* %6, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @copy_from_user(i32* %72, i8* %74, i32 4)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %83

78:                                               ; preds = %70
  br label %82

79:                                               ; preds = %3
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %79, %78, %69, %60, %24
  br label %86

83:                                               ; preds = %77, %68, %59, %23
  %84 = load i32, i32* @EFAULT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %82
  %87 = load %struct.audio*, %struct.audio** %7, align 8
  %88 = getelementptr inbounds %struct.audio, %struct.audio* %87, i32 0, i32 3
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  ret i64 %91
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @copy_from_user(i32*, i8*, i32) #1

declare dso_local i32 @audio_enable_adrc(%struct.audio*, i32) #1

declare dso_local i32 @audio_enable_eq(%struct.audio*, i32) #1

declare dso_local i32 @audio_enable_rx_iir(%struct.audio*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
