; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ehci_hcd = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@CMD_LRESET = common dso_local global i32 0, align 4
@CMD_IAAD = common dso_local global i32 0, align 4
@CMD_PSE = common dso_local global i32 0, align 4
@CMD_ASE = common dso_local global i32 0, align 4
@CMD_RESET = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"init\00", align 1
@ehci_cf_port_reset_rwsem = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@FLAG_CF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"USB %x.%x started, EHCI %x.%02x%s\0A\00", align 1
@ignore_oc = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c", overcurrent ignored\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ehci_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_run(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %8)
  store %struct.ehci_hcd* %9, %struct.ehci_hcd** %4, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %13 = call i32 @ehci_reset(%struct.ehci_hcd* %12)
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %17 = call i32 @ehci_mem_cleanup(%struct.ehci_hcd* %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %150

19:                                               ; preds = %1
  %20 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %21 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %22 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %25 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %24, i32 0, i32 3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 5
  %28 = call i32 @ehci_writel(%struct.ehci_hcd* %20, i32 %23, i32* %27)
  %29 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %30 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %31 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %30, i32 0, i32 6
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %37 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %36, i32 0, i32 3
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 4
  %40 = call i32 @ehci_writel(%struct.ehci_hcd* %29, i32 %35, i32* %39)
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %42 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %43 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %42, i32 0, i32 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = call i32 @ehci_readl(%struct.ehci_hcd* %41, i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @HCC_64BIT_ADDR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %19
  %51 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %52 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %53 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %52, i32 0, i32 3
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = call i32 @ehci_writel(%struct.ehci_hcd* %51, i32 0, i32* %55)
  br label %57

57:                                               ; preds = %50, %19
  %58 = load i32, i32* @CMD_LRESET, align 4
  %59 = load i32, i32* @CMD_IAAD, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @CMD_PSE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CMD_ASE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @CMD_RESET, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %69 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @CMD_RUN, align 4
  %73 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %74 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %78 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %79 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %82 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %81, i32 0, i32 3
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = call i32 @ehci_writel(%struct.ehci_hcd* %77, i32 %80, i32* %84)
  %86 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %87 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %88 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dbg_cmd(%struct.ehci_hcd* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = call i32 @down_write(i32* @ehci_cf_port_reset_rwsem)
  %92 = load i32, i32* @HC_STATE_RUNNING, align 4
  %93 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %94 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %96 = load i32, i32* @FLAG_CF, align 4
  %97 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %98 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %97, i32 0, i32 3
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = call i32 @ehci_writel(%struct.ehci_hcd* %95, i32 %96, i32* %100)
  %102 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %103 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %104 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %103, i32 0, i32 3
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = call i32 @ehci_readl(%struct.ehci_hcd* %102, i32* %106)
  %108 = call i32 @msleep(i32 5)
  %109 = call i32 @up_write(i32* @ehci_cf_port_reset_rwsem)
  %110 = call i32 (...) @ktime_get_real()
  %111 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %112 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  %113 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %114 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %115 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %114, i32 0, i32 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = call i32 @ehci_readl(%struct.ehci_hcd* %113, i32* %117)
  %119 = call i32 @HC_VERSION(i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %121 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %122 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, 240
  %125 = ashr i32 %124, 4
  %126 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %127 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, 15
  %130 = load i32, i32* %6, align 4
  %131 = ashr i32 %130, 8
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, 255
  %134 = load i64, i64* @ignore_oc, align 8
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %138 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_info(%struct.ehci_hcd* %120, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %129, i32 %131, i32 %133, i8* %137)
  %139 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %140 = load i32, i32* @INTR_MASK, align 4
  %141 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %142 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %141, i32 0, i32 3
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = call i32 @ehci_writel(%struct.ehci_hcd* %139, i32 %140, i32* %144)
  %146 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %147 = call i32 @create_debug_files(%struct.ehci_hcd* %146)
  %148 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %149 = call i32 @create_companion_file(%struct.ehci_hcd* %148)
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %57, %15
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @ehci_reset(%struct.ehci_hcd*) #1

declare dso_local i32 @ehci_mem_cleanup(%struct.ehci_hcd*) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i64 @HCC_64BIT_ADDR(i32) #1

declare dso_local i32 @dbg_cmd(%struct.ehci_hcd*, i8*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @HC_VERSION(i32) #1

declare dso_local i32 @ehci_info(%struct.ehci_hcd*, i8*, ...) #1

declare dso_local i32 @create_debug_files(%struct.ehci_hcd*) #1

declare dso_local i32 @create_companion_file(%struct.ehci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
