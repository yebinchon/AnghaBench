; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_mmiotrace.c_mmio_print_pcidev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_mmiotrace.c_mmio_print_pcidev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.pci_dev = type { %struct.TYPE_4__*, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_driver = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"PCIDEV %02x%02x %04x%04x %x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %llx\00", align 1
@PCI_REGION_FLAG_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.pci_dev*)* @mmio_print_pcidev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio_print_pcidev(%struct.trace_seq* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_driver*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call %struct.pci_driver* @pci_dev_driver(%struct.pci_dev* %10)
  store %struct.pci_driver* %11, %struct.pci_driver** %9, align 8
  %12 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 5
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %67, %2
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 7
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = call i32 @pci_resource_to_user(%struct.pci_dev* %39, i32 %40, %struct.TYPE_4__* %46, i32* %7, i32* %8)
  %48 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PCI_REGION_FLAG_MASK, align 4
  %59 = and i32 %57, %58
  %60 = or i32 %49, %59
  %61 = sext i32 %60 to i64
  %62 = call i64 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %38
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %35

70:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %116, %70
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 7
  br i1 %73, label %74, label %119

74:                                               ; preds = %71
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = call i32 @pci_resource_to_user(%struct.pci_dev* %75, i32 %76, %struct.TYPE_4__* %82, i32* %7, i32* %8)
  %84 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %92, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %74
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 1
  br label %109

108:                                              ; preds = %74
  br label %109

109:                                              ; preds = %108, %102
  %110 = phi i64 [ %107, %102 ], [ 0, %108 ]
  %111 = call i64 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %110)
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %71

119:                                              ; preds = %71
  %120 = load %struct.pci_driver*, %struct.pci_driver** %9, align 8
  %121 = icmp ne %struct.pci_driver* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %124 = load %struct.pci_driver*, %struct.pci_driver** %9, align 8
  %125 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %5, align 4
  br label %139

132:                                              ; preds = %119
  %133 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %134 = call i64 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %132, %122
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.pci_driver* @pci_dev_driver(%struct.pci_dev*) #1

declare dso_local i64 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @pci_resource_to_user(%struct.pci_dev*, i32, %struct.TYPE_4__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
