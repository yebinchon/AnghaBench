; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_get_iobox_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_get_iobox_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i8* }

@HDSP_statusRegister = common dso_local global i32 0, align 4
@HDSP_DllError = common dso_local global i32 0, align 4
@HDSP_control2Reg = common dso_local global i32 0, align 4
@HDSP_PROGRAM = common dso_local global i32 0, align 4
@HDSP_fifoData = common dso_local global i32 0, align 4
@HDSP_SHORT_WAIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HDSP_S_LOAD = common dso_local global i32 0, align 4
@Multiface = common dso_local global i8* null, align 8
@HDSP_VERSION_BIT = common dso_local global i32 0, align 4
@Digiface = common dso_local global i8* null, align 8
@HDSP_status2Register = common dso_local global i32 0, align 4
@HDSP_version1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @hdsp_get_iobox_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_get_iobox_version(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %4 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %5 = load i32, i32* @HDSP_statusRegister, align 4
  %6 = call i32 @hdsp_read(%struct.hdsp* %4, i32 %5)
  %7 = load i32, i32* @HDSP_DllError, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %1
  %11 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %12 = load i32, i32* @HDSP_control2Reg, align 4
  %13 = load i32, i32* @HDSP_PROGRAM, align 4
  %14 = call i32 @hdsp_write(%struct.hdsp* %11, i32 %12, i32 %13)
  %15 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %16 = load i32, i32* @HDSP_fifoData, align 4
  %17 = call i32 @hdsp_write(%struct.hdsp* %15, i32 %16, i32 0)
  %18 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %19 = load i32, i32* @HDSP_SHORT_WAIT, align 4
  %20 = call i64 @hdsp_fifo_wait(%struct.hdsp* %18, i32 0, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %74

25:                                               ; preds = %10
  %26 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %27 = load i32, i32* @HDSP_control2Reg, align 4
  %28 = load i32, i32* @HDSP_S_LOAD, align 4
  %29 = call i32 @hdsp_write(%struct.hdsp* %26, i32 %27, i32 %28)
  %30 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %31 = load i32, i32* @HDSP_fifoData, align 4
  %32 = call i32 @hdsp_write(%struct.hdsp* %30, i32 %31, i32 0)
  %33 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %34 = load i32, i32* @HDSP_SHORT_WAIT, align 4
  %35 = call i64 @hdsp_fifo_wait(%struct.hdsp* %33, i32 0, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %25
  %38 = load i8*, i8** @Multiface, align 8
  %39 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %40 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %42 = load i32, i32* @HDSP_control2Reg, align 4
  %43 = load i32, i32* @HDSP_VERSION_BIT, align 4
  %44 = call i32 @hdsp_write(%struct.hdsp* %41, i32 %42, i32 %43)
  %45 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %46 = load i32, i32* @HDSP_control2Reg, align 4
  %47 = load i32, i32* @HDSP_S_LOAD, align 4
  %48 = call i32 @hdsp_write(%struct.hdsp* %45, i32 %46, i32 %47)
  %49 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %50 = load i32, i32* @HDSP_SHORT_WAIT, align 4
  %51 = call i64 @hdsp_fifo_wait(%struct.hdsp* %49, i32 0, i32 %50)
  br label %56

52:                                               ; preds = %25
  %53 = load i8*, i8** @Digiface, align 8
  %54 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %55 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %37
  br label %73

57:                                               ; preds = %1
  %58 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %59 = load i32, i32* @HDSP_status2Register, align 4
  %60 = call i32 @hdsp_read(%struct.hdsp* %58, i32 %59)
  %61 = load i32, i32* @HDSP_version1, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i8*, i8** @Multiface, align 8
  %66 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %67 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %72

68:                                               ; preds = %57
  %69 = load i8*, i8** @Digiface, align 8
  %70 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %71 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %56
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %22
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @hdsp_read(%struct.hdsp*, i32) #1

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

declare dso_local i64 @hdsp_fifo_wait(%struct.hdsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
