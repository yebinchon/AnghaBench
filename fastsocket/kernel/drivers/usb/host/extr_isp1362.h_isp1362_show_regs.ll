; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1362.h_isp1362_show_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1362.h_isp1362_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1362_hcd = type { i32 }

@HCREVISION = common dso_local global i32 0, align 4
@HCCONTROL = common dso_local global i32 0, align 4
@HCCMDSTAT = common dso_local global i32 0, align 4
@HCINTSTAT = common dso_local global i32 0, align 4
@HCINTENB = common dso_local global i32 0, align 4
@HCFMINTVL = common dso_local global i32 0, align 4
@HCFMREM = common dso_local global i32 0, align 4
@HCFMNUM = common dso_local global i32 0, align 4
@HCLSTHRESH = common dso_local global i32 0, align 4
@HCRHDESCA = common dso_local global i32 0, align 4
@HCRHDESCB = common dso_local global i32 0, align 4
@HCRHSTATUS = common dso_local global i32 0, align 4
@HCRHPORT1 = common dso_local global i32 0, align 4
@HCRHPORT2 = common dso_local global i32 0, align 4
@HCHWCFG = common dso_local global i32 0, align 4
@HCDMACFG = common dso_local global i32 0, align 4
@HCXFERCTR = common dso_local global i32 0, align 4
@HCuPINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%-12s[%02x]:     %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"HCuPINTENB\00", align 1
@ISP1362_REG_HCuPINTENB = common dso_local global i32 0, align 4
@HCuPINTENB = common dso_local global i32 0, align 4
@HCCHIPID = common dso_local global i32 0, align 4
@HCSCRATCH = common dso_local global i32 0, align 4
@HCBUFSTAT = common dso_local global i32 0, align 4
@HCDIRADDR = common dso_local global i32 0, align 4
@HCISTLBUFSZ = common dso_local global i32 0, align 4
@HCISTLRATE = common dso_local global i32 0, align 4
@HCINTLBUFSZ = common dso_local global i32 0, align 4
@HCINTLBLKSZ = common dso_local global i32 0, align 4
@HCINTLDONE = common dso_local global i32 0, align 4
@HCINTLSKIP = common dso_local global i32 0, align 4
@HCINTLLAST = common dso_local global i32 0, align 4
@HCINTLCURR = common dso_local global i32 0, align 4
@HCATLBUFSZ = common dso_local global i32 0, align 4
@HCATLBLKSZ = common dso_local global i32 0, align 4
@HCATLSKIP = common dso_local global i32 0, align 4
@HCATLLAST = common dso_local global i32 0, align 4
@HCATLCURR = common dso_local global i32 0, align 4
@HCATLDTC = common dso_local global i32 0, align 4
@HCATLDTCTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1362_hcd*)* @isp1362_show_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1362_show_regs(%struct.isp1362_hcd* %0) #0 {
  %2 = alloca %struct.isp1362_hcd*, align 8
  store %struct.isp1362_hcd* %0, %struct.isp1362_hcd** %2, align 8
  %3 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %4 = load i32, i32* @HCREVISION, align 4
  %5 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %3, i32 %4)
  %6 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %7 = load i32, i32* @HCCONTROL, align 4
  %8 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %6, i32 %7)
  %9 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %10 = load i32, i32* @HCCMDSTAT, align 4
  %11 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %9, i32 %10)
  %12 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %13 = load i32, i32* @HCINTSTAT, align 4
  %14 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %12, i32 %13)
  %15 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %16 = load i32, i32* @HCINTENB, align 4
  %17 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %15, i32 %16)
  %18 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %19 = load i32, i32* @HCFMINTVL, align 4
  %20 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %18, i32 %19)
  %21 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %22 = load i32, i32* @HCFMREM, align 4
  %23 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %21, i32 %22)
  %24 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %25 = load i32, i32* @HCFMNUM, align 4
  %26 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %24, i32 %25)
  %27 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %28 = load i32, i32* @HCLSTHRESH, align 4
  %29 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %27, i32 %28)
  %30 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %31 = load i32, i32* @HCRHDESCA, align 4
  %32 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %30, i32 %31)
  %33 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %34 = load i32, i32* @HCRHDESCB, align 4
  %35 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %33, i32 %34)
  %36 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %37 = load i32, i32* @HCRHSTATUS, align 4
  %38 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %36, i32 %37)
  %39 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %40 = load i32, i32* @HCRHPORT1, align 4
  %41 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %39, i32 %40)
  %42 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %43 = load i32, i32* @HCRHPORT2, align 4
  %44 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %42, i32 %43)
  %45 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %46 = load i32, i32* @HCHWCFG, align 4
  %47 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %45, i32 %46)
  %48 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %49 = load i32, i32* @HCDMACFG, align 4
  %50 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %48, i32 %49)
  %51 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %52 = load i32, i32* @HCXFERCTR, align 4
  %53 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %51, i32 %52)
  %54 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %55 = load i32, i32* @HCuPINT, align 4
  %56 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %54, i32 %55)
  %57 = call i64 (...) @in_interrupt()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %1
  %60 = load i32, i32* @ISP1362_REG_HCuPINTENB, align 4
  %61 = call i32 @ISP1362_REG_NO(i32 %60)
  %62 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %63 = getelementptr inbounds %struct.isp1362_hcd, %struct.isp1362_hcd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @DBG(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  br label %70

66:                                               ; preds = %1
  %67 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %68 = load i32, i32* @HCuPINTENB, align 4
  %69 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %72 = load i32, i32* @HCCHIPID, align 4
  %73 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %71, i32 %72)
  %74 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %75 = load i32, i32* @HCSCRATCH, align 4
  %76 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %74, i32 %75)
  %77 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %78 = load i32, i32* @HCBUFSTAT, align 4
  %79 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %77, i32 %78)
  %80 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %81 = load i32, i32* @HCDIRADDR, align 4
  %82 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %80, i32 %81)
  %83 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %84 = load i32, i32* @HCISTLBUFSZ, align 4
  %85 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %83, i32 %84)
  %86 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %87 = load i32, i32* @HCISTLRATE, align 4
  %88 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %86, i32 %87)
  %89 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %90 = load i32, i32* @HCINTLBUFSZ, align 4
  %91 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %89, i32 %90)
  %92 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %93 = load i32, i32* @HCINTLBLKSZ, align 4
  %94 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %92, i32 %93)
  %95 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %96 = load i32, i32* @HCINTLDONE, align 4
  %97 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %95, i32 %96)
  %98 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %99 = load i32, i32* @HCINTLSKIP, align 4
  %100 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %98, i32 %99)
  %101 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %102 = load i32, i32* @HCINTLLAST, align 4
  %103 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %101, i32 %102)
  %104 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %105 = load i32, i32* @HCINTLCURR, align 4
  %106 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %104, i32 %105)
  %107 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %108 = load i32, i32* @HCATLBUFSZ, align 4
  %109 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %107, i32 %108)
  %110 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %111 = load i32, i32* @HCATLBLKSZ, align 4
  %112 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %110, i32 %111)
  %113 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %114 = load i32, i32* @HCATLSKIP, align 4
  %115 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %113, i32 %114)
  %116 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %117 = load i32, i32* @HCATLLAST, align 4
  %118 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %116, i32 %117)
  %119 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %120 = load i32, i32* @HCATLCURR, align 4
  %121 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %119, i32 %120)
  %122 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %123 = load i32, i32* @HCATLDTC, align 4
  %124 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %122, i32 %123)
  %125 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %126 = load i32, i32* @HCATLDTCTO, align 4
  %127 = call i32 @isp1362_show_reg(%struct.isp1362_hcd* %125, i32 %126)
  ret void
}

declare dso_local i32 @isp1362_show_reg(%struct.isp1362_hcd*, i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @DBG(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @ISP1362_REG_NO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
