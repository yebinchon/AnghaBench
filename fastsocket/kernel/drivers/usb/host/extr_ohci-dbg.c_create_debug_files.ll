; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-dbg.c_create_debug_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-dbg.c_create_debug_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32*, i32*, i32*, i8* }
%struct.usb_bus = type { i32 }
%struct.TYPE_2__ = type { %struct.usb_bus }

@ohci_debug_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"async\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@debug_async_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"periodic\00", align 1
@debug_periodic_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@debug_registers_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"created debug files\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ohci_hcd*)* @create_debug_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_debug_files(%struct.ohci_hcd* %0) #0 {
  %2 = alloca %struct.ohci_hcd*, align 8
  %3 = alloca %struct.usb_bus*, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %2, align 8
  %4 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %5 = call %struct.TYPE_2__* @ohci_to_hcd(%struct.ohci_hcd* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.usb_bus* %6, %struct.usb_bus** %3, align 8
  %7 = load %struct.usb_bus*, %struct.usb_bus** %3, align 8
  %8 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ohci_debug_root, align 4
  %11 = call i32* @debugfs_create_dir(i32 %9, i32 %10)
  %12 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %13 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %81

19:                                               ; preds = %1
  %20 = load i32, i32* @S_IRUGO, align 4
  %21 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %22 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %25 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20, i32* %23, %struct.ohci_hcd* %24, i32* @debug_async_fops)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %28 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %30 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  br label %76

34:                                               ; preds = %19
  %35 = load i32, i32* @S_IRUGO, align 4
  %36 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %37 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %40 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32* %38, %struct.ohci_hcd* %39, i32* @debug_periodic_fops)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %43 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %45 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %34
  br label %71

49:                                               ; preds = %34
  %50 = load i32, i32* @S_IRUGO, align 4
  %51 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %52 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %55 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32* %53, %struct.ohci_hcd* %54, i32* @debug_registers_fops)
  %56 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %57 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %59 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %49
  br label %66

63:                                               ; preds = %49
  %64 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %65 = call i32 @ohci_dbg(%struct.ohci_hcd* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %88

66:                                               ; preds = %62
  %67 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %68 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @debugfs_remove(i32* %69)
  br label %71

71:                                               ; preds = %66, %48
  %72 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %73 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @debugfs_remove(i32* %74)
  br label %76

76:                                               ; preds = %71, %33
  %77 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %78 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @debugfs_remove(i32* %79)
  br label %81

81:                                               ; preds = %76, %18
  %82 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %83 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  %84 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %85 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load %struct.ohci_hcd*, %struct.ohci_hcd** %2, align 8
  %87 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  br label %88

88:                                               ; preds = %81, %63
  ret void
}

declare dso_local %struct.TYPE_2__* @ohci_to_hcd(%struct.ohci_hcd*) #1

declare dso_local i32* @debugfs_create_dir(i32, i32) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32*, %struct.ohci_hcd*, i32*) #1

declare dso_local i32 @ohci_dbg(%struct.ohci_hcd*, i8*) #1

declare dso_local i32 @debugfs_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
