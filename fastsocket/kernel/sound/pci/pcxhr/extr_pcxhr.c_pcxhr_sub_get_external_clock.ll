; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_sub_get_external_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_sub_get_external_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i8 }
%struct.pcxhr_rmh = type { i32, i8*, i32* }

@REG_STATUS_WORD_CLOCK = common dso_local global i8 0, align 1
@REG_STATUS_AES_SYNC = common dso_local global i8 0, align 1
@REG_STATUS_AES_1 = common dso_local global i8 0, align 1
@REG_STATUS_AES_2 = common dso_local global i8 0, align 1
@REG_STATUS_AES_3 = common dso_local global i8 0, align 1
@REG_STATUS_AES_4 = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@CMD_ACCESS_IO_READ = common dso_local global i32 0, align 4
@IO_NUM_REG_STATUS = common dso_local global i8 0, align 1
@REG_STATUS_CURRENT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [28 x i8] c"External clock is at %d Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, i32, i32*)* @pcxhr_sub_get_external_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_sub_get_external_clock(%struct.pcxhr_mgr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcxhr_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pcxhr_rmh, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %25 [
    i32 137, label %13
    i32 138, label %15
    i32 142, label %17
    i32 141, label %19
    i32 140, label %21
    i32 139, label %23
  ]

13:                                               ; preds = %3
  %14 = load i8, i8* @REG_STATUS_WORD_CLOCK, align 1
  store i8 %14, i8* %9, align 1
  br label %28

15:                                               ; preds = %3
  %16 = load i8, i8* @REG_STATUS_AES_SYNC, align 1
  store i8 %16, i8* %9, align 1
  br label %28

17:                                               ; preds = %3
  %18 = load i8, i8* @REG_STATUS_AES_1, align 1
  store i8 %18, i8* %9, align 1
  br label %28

19:                                               ; preds = %3
  %20 = load i8, i8* @REG_STATUS_AES_2, align 1
  store i8 %20, i8* %9, align 1
  br label %28

21:                                               ; preds = %3
  %22 = load i8, i8* @REG_STATUS_AES_3, align 1
  store i8 %22, i8* %9, align 1
  br label %28

23:                                               ; preds = %3
  %24 = load i8, i8* @REG_STATUS_AES_4, align 1
  store i8 %24, i8* %9, align 1
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %96

28:                                               ; preds = %23, %21, %19, %17, %15, %13
  %29 = load i32, i32* @CMD_ACCESS_IO_READ, align 4
  %30 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %8, i32 %29)
  %31 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %8, i32 0, i32 0
  store i32 2, i32* %31, align 8
  %32 = load i8, i8* @IO_NUM_REG_STATUS, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %8, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, %33
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  %41 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %42 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* %9, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %28
  %49 = load i8, i8* %9, align 1
  %50 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %8, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 %49, i8* %52, align 1
  %53 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %54 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %53, %struct.pcxhr_rmh* %8)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %96

59:                                               ; preds = %48
  %60 = call i32 @udelay(i32 100)
  %61 = load i8, i8* %9, align 1
  %62 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %63 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %62, i32 0, i32 0
  store i8 %61, i8* %63, align 1
  br label %64

64:                                               ; preds = %59, %28
  %65 = load i8, i8* @REG_STATUS_CURRENT, align 1
  %66 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %8, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 %65, i8* %68, align 1
  %69 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %70 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %69, %struct.pcxhr_rmh* %8)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %96

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %8, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 15
  switch i32 %80, label %90 [
    i32 133, label %81
    i32 132, label %82
    i32 131, label %83
    i32 130, label %84
    i32 129, label %85
    i32 128, label %86
    i32 136, label %87
    i32 135, label %88
    i32 134, label %89
  ]

81:                                               ; preds = %75
  store i32 32000, i32* %11, align 4
  br label %91

82:                                               ; preds = %75
  store i32 44100, i32* %11, align 4
  br label %91

83:                                               ; preds = %75
  store i32 48000, i32* %11, align 4
  br label %91

84:                                               ; preds = %75
  store i32 64000, i32* %11, align 4
  br label %91

85:                                               ; preds = %75
  store i32 88200, i32* %11, align 4
  br label %91

86:                                               ; preds = %75
  store i32 96000, i32* %11, align 4
  br label %91

87:                                               ; preds = %75
  store i32 128000, i32* %11, align 4
  br label %91

88:                                               ; preds = %75
  store i32 176400, i32* %11, align 4
  br label %91

89:                                               ; preds = %75
  store i32 192000, i32* %11, align 4
  br label %91

90:                                               ; preds = %75
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %90, %89, %88, %87, %86, %85, %84, %83, %82, %81
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @snd_printdd(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %91, %73, %57, %25
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_printdd(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
