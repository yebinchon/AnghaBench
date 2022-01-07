; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_cmd_size_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_target_cmd_size_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i64, i32, i32, i32*, %struct.TYPE_4__*, i64, %struct.se_device* }
%struct.TYPE_4__ = type { i32 (...)* }
%struct.se_device = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [105 x i8] c"TARGET_CORE[%s]: Expected Transfer Length: %u does not match SCSI CDB Length: %u for SAM Opcode: 0x%02x\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Rejecting underflow/overflow WRITE data\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [93 x i8] c"Failing OVERFLOW/UNDERFLOW for LBA op CDB on non 512-byte sector setup subsystem plugin: %s\0A\00", align 1
@SCF_OVERFLOW_BIT = common dso_local global i32 0, align 4
@SCF_UNDERFLOW_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_cmd_size_check(%struct.se_cmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_device*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %7, i32 0, i32 7
  %9 = load %struct.se_device*, %struct.se_device** %8, align 8
  store %struct.se_device* %9, %struct.se_device** %6, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %100

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %99

24:                                               ; preds = %18
  %25 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = call i32 (...) %29()
  %31 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pr_warn(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %34, i32 %39)
  %41 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DMA_TO_DEVICE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %24
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %48, i32* %3, align 4
  br label %101

49:                                               ; preds = %24
  %50 = load %struct.se_device*, %struct.se_device** %6, align 8
  %51 = getelementptr inbounds %struct.se_device, %struct.se_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 512
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.se_device*, %struct.se_device** %6, align 8
  %57 = getelementptr inbounds %struct.se_device, %struct.se_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %62, i32* %3, align 4
  br label %101

63:                                               ; preds = %49
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ugt i32 %64, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load i32, i32* @SCF_OVERFLOW_BIT, align 4
  %71 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %72 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %77 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub i32 %75, %78
  %80 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %81 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %98

82:                                               ; preds = %63
  %83 = load i32, i32* @SCF_UNDERFLOW_BIT, align 4
  %84 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %85 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %89 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sub i32 %90, %91
  %93 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %94 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %97 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %82, %69
  br label %99

99:                                               ; preds = %98, %18
  br label %100

100:                                              ; preds = %99, %14
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %55, %46
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
