; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_hba.c_core_delete_hba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_hba.c_core_delete_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_hba = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, {}* }

@hba_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"CORE_HBA[%d] - Detached HBA from Generic Target Core\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_delete_hba(%struct.se_hba* %0) #0 {
  %2 = alloca %struct.se_hba*, align 8
  store %struct.se_hba* %0, %struct.se_hba** %2, align 8
  %3 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %4 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @WARN_ON(i32 %5)
  %7 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %8 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = bitcast {}** %10 to i32 (%struct.se_hba*)**
  %12 = load i32 (%struct.se_hba*)*, i32 (%struct.se_hba*)** %11, align 8
  %13 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %14 = call i32 %12(%struct.se_hba* %13)
  %15 = call i32 @spin_lock(i32* @hba_lock)
  %16 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %17 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %16, i32 0, i32 2
  %18 = call i32 @list_del(i32* %17)
  %19 = call i32 @spin_unlock(i32* @hba_lock)
  %20 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %21 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %25 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %32 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @module_put(i64 %35)
  br label %37

37:                                               ; preds = %30, %1
  %38 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %39 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %38, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %39, align 8
  %40 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %41 = call i32 @kfree(%struct.se_hba* %40)
  ret i32 0
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @module_put(i64) #1

declare dso_local i32 @kfree(%struct.se_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
