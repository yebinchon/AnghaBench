; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_sub_set_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_sub_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, i32, i32, i32 }
%struct.pcxhr_rmh = type { i32*, i32 }

@CMD_ACCESS_IO_WRITE = common dso_local global i32 0, align 4
@IO_NUM_REG_MUTE_OUT = common dso_local global i32 0, align 4
@IO_NUM_SPEED_RATIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"clock register : set %x\0A\00", align 1
@PCXHR_FREQ_REG_MASK = common dso_local global i32 0, align 4
@CMD_ACCESS_IO_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"pcxhr_sub_set_clock to %dHz (realfreq=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, i32, i32*)* @pcxhr_sub_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_sub_set_clock(%struct.pcxhr_mgr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcxhr_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pcxhr_rmh, align 8
  %12 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @pcxhr_get_clock_reg(%struct.pcxhr_mgr* %13, i32 %14, i32* %8, i32* %9)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %4, align 4
  br label %139

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %21, 55000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = icmp ult i32 %25, 100000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  br label %29

28:                                               ; preds = %24
  store i32 2, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %32 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %81

36:                                               ; preds = %30
  %37 = load i32, i32* @CMD_ACCESS_IO_WRITE, align 4
  %38 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %11, i32 %37)
  %39 = load i32, i32* @IO_NUM_REG_MUTE_OUT, align 4
  %40 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 4
  %45 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %46 = call i64 @DSP_EXT_CMD_SET(%struct.pcxhr_mgr* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 1, i32* %51, align 4
  %52 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 1
  store i32 2, i32* %52, align 8
  br label %53

53:                                               ; preds = %48, %36
  %54 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %55 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %54, %struct.pcxhr_rmh* %11)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %139

60:                                               ; preds = %53
  %61 = load i32, i32* @CMD_ACCESS_IO_WRITE, align 4
  %62 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %11, i32 %61)
  %63 = load i32, i32* @IO_NUM_SPEED_RATIO, align 4
  %64 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %10, align 4
  %70 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %69, i32* %72, align 4
  %73 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 1
  store i32 2, i32* %73, align 8
  %74 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %75 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %74, %struct.pcxhr_rmh* %11)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %4, align 4
  br label %139

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80, %30
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %85 = load i32, i32* @PCXHR_FREQ_REG_MASK, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @pcxhr_write_io_num_reg_cont(%struct.pcxhr_mgr* %84, i32 %85, i32 %86, i32* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %4, align 4
  br label %139

93:                                               ; preds = %81
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %96 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %98 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %101 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %103 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %135

107:                                              ; preds = %93
  %108 = load i32, i32* @CMD_ACCESS_IO_READ, align 4
  %109 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %11, i32 %108)
  %110 = load i32, i32* @IO_NUM_REG_MUTE_OUT, align 4
  %111 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 4
  %116 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %117 = call i64 @DSP_EXT_CMD_SET(%struct.pcxhr_mgr* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %107
  %120 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  store i32 1, i32* %122, align 4
  %123 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %11, i32 0, i32 1
  store i32 2, i32* %123, align 8
  br label %124

124:                                              ; preds = %119, %107
  %125 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %126 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %125, %struct.pcxhr_rmh* %11)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %4, align 4
  br label %139

131:                                              ; preds = %124
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %134 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %93
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %136, i32 %137)
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %135, %129, %91, %78, %58, %18
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @pcxhr_get_clock_reg(%struct.pcxhr_mgr*, i32, i32*, i32*) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i64 @DSP_EXT_CMD_SET(%struct.pcxhr_mgr*) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @snd_printdd(i8*, i32, ...) #1

declare dso_local i32 @pcxhr_write_io_num_reg_cont(%struct.pcxhr_mgr*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
