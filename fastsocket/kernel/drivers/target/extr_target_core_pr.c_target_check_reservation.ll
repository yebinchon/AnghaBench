; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_target_check_reservation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_target_check_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.se_device* }
%struct.se_device = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@HBA_FLAGS_INTERNAL_USE = common dso_local global i32 0, align 4
@TRANSPORT_PLUGIN_PHBA_PDEV = common dso_local global i64 0, align 8
@DRF_SPC2_RESERVATIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_check_reservation(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %6 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %6, i32 0, i32 1
  %8 = load %struct.se_device*, %struct.se_device** %7, align 8
  store %struct.se_device* %8, %struct.se_device** %4, align 8
  %9 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

14:                                               ; preds = %1
  %15 = load %struct.se_device*, %struct.se_device** %4, align 8
  %16 = getelementptr inbounds %struct.se_device, %struct.se_device* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HBA_FLAGS_INTERNAL_USE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %54

24:                                               ; preds = %14
  %25 = load %struct.se_device*, %struct.se_device** %4, align 8
  %26 = getelementptr inbounds %struct.se_device, %struct.se_device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TRANSPORT_PLUGIN_PHBA_PDEV, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %54

33:                                               ; preds = %24
  %34 = load %struct.se_device*, %struct.se_device** %4, align 8
  %35 = getelementptr inbounds %struct.se_device, %struct.se_device* %34, i32 0, i32 1
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.se_device*, %struct.se_device** %4, align 8
  %38 = getelementptr inbounds %struct.se_device, %struct.se_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %45 = call i32 @target_scsi2_reservation_check(%struct.se_cmd* %44)
  store i32 %45, i32* %5, align 4
  br label %49

46:                                               ; preds = %33
  %47 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %48 = call i32 @target_scsi3_pr_reservation_check(%struct.se_cmd* %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.se_device*, %struct.se_device** %4, align 8
  %51 = getelementptr inbounds %struct.se_device, %struct.se_device* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %32, %23, %13
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @target_scsi2_reservation_check(%struct.se_cmd*) #1

declare dso_local i32 @target_scsi3_pr_reservation_check(%struct.se_cmd*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
