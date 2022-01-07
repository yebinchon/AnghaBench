; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_lun_wait_for_tasks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_lun_wait_for_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.se_cmd*)* }
%struct.se_lun = type { i32 }

@CMD_T_STOP = common dso_local global i32 0, align 4
@CMD_T_LUN_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ConfigFS ITT[0x%08x] - CMD_T_STOP, skipping\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@CMD_T_LUN_FE_STOP = common dso_local global i32 0, align 4
@CMD_T_BUSY = common dso_local global i32 0, align 4
@CMD_T_SENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ConfigFS: cmd: %p stop tasks ret: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ConfigFS: ITT[0x%08x] - stopping cmd....\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"ConfigFS: ITT[0x%08x] - stopped cmd....\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, %struct.se_lun*)* @transport_lun_wait_for_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transport_lun_wait_for_tasks(%struct.se_cmd* %0, %struct.se_lun* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca %struct.se_lun*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store %struct.se_lun* %1, %struct.se_lun** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 3
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CMD_T_STOP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %2
  %19 = load i32, i32* @CMD_T_LUN_STOP, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %28, align 8
  %30 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %31 = call i32 %29(%struct.se_cmd* %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.se_cmd*
  %34 = call i32 (i8*, %struct.se_cmd*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.se_cmd* %33)
  %35 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 3
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %40 = call i32 @transport_cmd_check_stop(%struct.se_cmd* %39, i32 0)
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %113

43:                                               ; preds = %2
  %44 = load i32, i32* @CMD_T_LUN_FE_STOP, align 4
  %45 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 3
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %54 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %53, i32 0, i32 3
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CMD_T_BUSY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %43
  %64 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %65 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CMD_T_SENT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %72 = call i32 @target_stop_cmd(%struct.se_cmd* %71, i64* %6)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %74, %70
  br label %78

78:                                               ; preds = %77, %63, %43
  %79 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %80 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %79, i32 0, i32 3
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (i8*, %struct.se_cmd*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.se_cmd* %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %112, label %88

88:                                               ; preds = %78
  %89 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %90 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %92, align 8
  %94 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %95 = call i32 %93(%struct.se_cmd* %94)
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to %struct.se_cmd*
  %98 = call i32 (i8*, %struct.se_cmd*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), %struct.se_cmd* %97)
  %99 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %100 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %99, i32 0, i32 2
  %101 = call i32 @wait_for_completion(i32* %100)
  %102 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %103 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %105, align 8
  %107 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %108 = call i32 %106(%struct.se_cmd* %107)
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to %struct.se_cmd*
  %111 = call i32 (i8*, %struct.se_cmd*, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), %struct.se_cmd* %110)
  br label %112

112:                                              ; preds = %88, %78
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %18
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, %struct.se_cmd*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @transport_cmd_check_stop(%struct.se_cmd*, i32) #1

declare dso_local i32 @target_stop_cmd(%struct.se_cmd*, i64*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
