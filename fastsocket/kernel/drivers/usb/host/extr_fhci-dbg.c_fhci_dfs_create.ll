; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-dbg.c_fhci_dfs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-dbg.c_fhci_dfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_hcd = type { i8*, i8*, i32 }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }

@usb_debug_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@fhci_dfs_regs_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"irq_stat\00", align 1
@fhci_dfs_irq_stat_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fhci_dfs_create(%struct.fhci_hcd* %0) #0 {
  %2 = alloca %struct.fhci_hcd*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.fhci_hcd* %0, %struct.fhci_hcd** %2, align 8
  %4 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %5 = call %struct.TYPE_4__* @fhci_to_hcd(%struct.fhci_hcd* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call i32 @dev_name(%struct.device* %9)
  %11 = load i32, i32* @usb_debug_root, align 4
  %12 = call i32 @debugfs_create_dir(i32 %10, i32 %11)
  %13 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %16 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = call i32 @WARN_ON(i32 1)
  br label %56

21:                                               ; preds = %1
  %22 = load i32, i32* @S_IFREG, align 4
  %23 = load i32, i32* @S_IRUGO, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %26 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %29 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, %struct.fhci_hcd* %28, i32* @fhci_dfs_regs_fops)
  %30 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %31 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @S_IFREG, align 4
  %33 = load i32, i32* @S_IRUGO, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %36 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %39 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, %struct.fhci_hcd* %38, i32* @fhci_dfs_irq_stat_fops)
  %40 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %41 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %43 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %21
  %47 = load %struct.fhci_hcd*, %struct.fhci_hcd** %2, align 8
  %48 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %21
  %53 = phi i1 [ true, %21 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @WARN_ON(i32 %54)
  br label %56

56:                                               ; preds = %52, %19
  ret void
}

declare dso_local %struct.TYPE_4__* @fhci_to_hcd(%struct.fhci_hcd*) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, %struct.fhci_hcd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
