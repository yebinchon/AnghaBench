; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_test_xilinx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_test_xilinx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i64 }
%struct.snd_vx222 = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"testing xilinx...\0A\00", align 1
@CDSP = common dso_local global i32 0, align 4
@VX_CDSP_TEST0_MASK = common dso_local global i32 0, align 4
@ISR = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@VX_STATUS_VAL_TEST0_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"bad!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"bad! #2\0A\00", align 1
@VX_TYPE_BOARD = common dso_local global i64 0, align 8
@VX_CDSP_TEST1_MASK = common dso_local global i32 0, align 4
@VX_STATUS_VAL_TEST1_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"bad! #3\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"bad! #4\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ok, xilinx fine.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*)* @vx2_test_xilinx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx2_test_xilinx(%struct.vx_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca %struct.snd_vx222*, align 8
  %5 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  %6 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %7 = bitcast %struct.vx_core* %6 to %struct.snd_vx222*
  store %struct.snd_vx222* %7, %struct.snd_vx222** %4, align 8
  %8 = call i32 @snd_printdd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %10 = load i32, i32* @CDSP, align 4
  %11 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %12 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VX_CDSP_TEST0_MASK, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @vx_outl(%struct.snd_vx222* %9, i32 %10, i32 %15)
  %17 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %18 = load i32, i32* @ISR, align 4
  %19 = call i32 @vx_inl(%struct.snd_vx222* %17, i32 %18)
  %20 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %21 = load i32, i32* @STATUS, align 4
  %22 = call i32 @vx_inl(%struct.snd_vx222* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @VX_STATUS_VAL_TEST0_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @VX_STATUS_VAL_TEST0_MASK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = call i32 @snd_printdd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %113

32:                                               ; preds = %1
  %33 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %34 = load i32, i32* @CDSP, align 4
  %35 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %36 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VX_CDSP_TEST0_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @vx_outl(%struct.snd_vx222* %33, i32 %34, i32 %40)
  %42 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %43 = load i32, i32* @ISR, align 4
  %44 = call i32 @vx_inl(%struct.snd_vx222* %42, i32 %43)
  %45 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %46 = load i32, i32* @STATUS, align 4
  %47 = call i32 @vx_inl(%struct.snd_vx222* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @VX_STATUS_VAL_TEST0_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %32
  %53 = call i32 @snd_printdd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %113

56:                                               ; preds = %32
  %57 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %58 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VX_TYPE_BOARD, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %111

62:                                               ; preds = %56
  %63 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %64 = load i32, i32* @CDSP, align 4
  %65 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %66 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @VX_CDSP_TEST1_MASK, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @vx_outl(%struct.snd_vx222* %63, i32 %64, i32 %69)
  %71 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %72 = load i32, i32* @ISR, align 4
  %73 = call i32 @vx_inl(%struct.snd_vx222* %71, i32 %72)
  %74 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %75 = load i32, i32* @STATUS, align 4
  %76 = call i32 @vx_inl(%struct.snd_vx222* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @VX_STATUS_VAL_TEST1_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @VX_STATUS_VAL_TEST1_MASK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %62
  %83 = call i32 @snd_printdd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %113

86:                                               ; preds = %62
  %87 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %88 = load i32, i32* @CDSP, align 4
  %89 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %90 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @VX_CDSP_TEST1_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = call i32 @vx_outl(%struct.snd_vx222* %87, i32 %88, i32 %94)
  %96 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %97 = load i32, i32* @ISR, align 4
  %98 = call i32 @vx_inl(%struct.snd_vx222* %96, i32 %97)
  %99 = load %struct.snd_vx222*, %struct.snd_vx222** %4, align 8
  %100 = load i32, i32* @STATUS, align 4
  %101 = call i32 @vx_inl(%struct.snd_vx222* %99, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @VX_STATUS_VAL_TEST1_MASK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %86
  %107 = call i32 @snd_printdd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %113

110:                                              ; preds = %86
  br label %111

111:                                              ; preds = %110, %56
  %112 = call i32 @snd_printdd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %106, %82, %52, %28
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @snd_printdd(i8*) #1

declare dso_local i32 @vx_outl(%struct.snd_vx222*, i32, i32) #1

declare dso_local i32 @vx_inl(%struct.snd_vx222*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
