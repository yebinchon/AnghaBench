; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_generic_free_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_generic_free_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SCF_SE_LUN_CMD = common dso_local global i32 0, align 4
@SCF_SCSI_TMR_CDB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_generic_free_cmd(%struct.se_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SCF_SE_LUN_CMD, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SCF_SCSI_TMR_CDB, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %23 = call i32 @transport_wait_for_tasks(%struct.se_cmd* %22)
  br label %24

24:                                               ; preds = %21, %14, %11
  %25 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %26 = call i32 @transport_release_cmd(%struct.se_cmd* %25)
  br label %51

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %32 = call i32 @transport_wait_for_tasks(%struct.se_cmd* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %35 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %40 = call i32 @core_dec_lacl_count(i32 %38, %struct.se_cmd* %39)
  %41 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %47 = call i32 @transport_lun_remove_cmd(%struct.se_cmd* %46)
  br label %48

48:                                               ; preds = %45, %33
  %49 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %50 = call i32 @transport_put_cmd(%struct.se_cmd* %49)
  br label %51

51:                                               ; preds = %48, %24
  ret void
}

declare dso_local i32 @transport_wait_for_tasks(%struct.se_cmd*) #1

declare dso_local i32 @transport_release_cmd(%struct.se_cmd*) #1

declare dso_local i32 @core_dec_lacl_count(i32, %struct.se_cmd*) #1

declare dso_local i32 @transport_lun_remove_cmd(%struct.se_cmd*) #1

declare dso_local i32 @transport_put_cmd(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
