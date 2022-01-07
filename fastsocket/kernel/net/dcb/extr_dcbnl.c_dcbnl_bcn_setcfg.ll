; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_bcn_setcfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_bcn_setcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i64, i32)* }
%struct.nlattr = type { i64 }

@DCB_BCN_ATTR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DCB_ATTR_BCN = common dso_local global i64 0, align 8
@dcbnl_pfc_up_nest = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_RP_0 = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_RP_7 = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_BCNA_0 = common dso_local global i32 0, align 4
@DCB_BCN_ATTR_RI = common dso_local global i32 0, align 4
@RTM_SETDCB = common dso_local global i32 0, align 4
@DCB_CMD_BCN_SCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, i32, i32, i32)* @dcbnl_bcn_setcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_bcn_setcfg(%struct.net_device* %0, %struct.nlattr** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @DCB_BCN_ATTR_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %15, align 4
  %26 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %27 = load i64, i64* @DCB_ATTR_BCN, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %5
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.net_device*, i32, i32)* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (%struct.net_device*, i64, i32)*, i32 (%struct.net_device*, i64, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.net_device*, i64, i32)* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38, %31, %5
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %138

47:                                               ; preds = %38
  %48 = load i32, i32* @DCB_BCN_ATTR_MAX, align 4
  %49 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %50 = load i64, i64* @DCB_ATTR_BCN, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = load i32, i32* @dcbnl_pfc_up_nest, align 4
  %54 = call i32 @nla_parse_nested(%struct.nlattr** %23, i32 %48, %struct.nlattr* %52, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %136

58:                                               ; preds = %47
  %59 = load i32, i32* @DCB_BCN_ATTR_RP_0, align 4
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %94, %58
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @DCB_BCN_ATTR_RP_7, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %60
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = icmp eq %struct.nlattr* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %94

71:                                               ; preds = %64
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i32 @nla_get_u8(%struct.nlattr* %75)
  store i32 %76, i32* %16, align 4
  %77 = load %struct.net_device*, %struct.net_device** %7, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32 (%struct.net_device*, i64, i32)*, i32 (%struct.net_device*, i64, i32)** %80, align 8
  %82 = load %struct.net_device*, %struct.net_device** %7, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @DCB_BCN_ATTR_RP_0, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %88, %90
  %92 = load i32, i32* %16, align 4
  %93 = call i32 %81(%struct.net_device* %82, i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %71, %70
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %60

97:                                               ; preds = %60
  %98 = load i32, i32* @DCB_BCN_ATTR_BCNA_0, align 4
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %125, %97
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @DCB_BCN_ATTR_RI, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %105
  %107 = load %struct.nlattr*, %struct.nlattr** %106, align 8
  %108 = icmp eq %struct.nlattr* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %125

110:                                              ; preds = %103
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %112
  %114 = load %struct.nlattr*, %struct.nlattr** %113, align 8
  %115 = call i32 @nla_get_u32(%struct.nlattr* %114)
  store i32 %115, i32* %17, align 4
  %116 = load %struct.net_device*, %struct.net_device** %7, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %119, align 8
  %121 = load %struct.net_device*, %struct.net_device** %7, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %17, align 4
  %124 = call i32 %120(%struct.net_device* %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %110, %109
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %99

128:                                              ; preds = %99
  %129 = load i32, i32* @RTM_SETDCB, align 4
  %130 = load i32, i32* @DCB_CMD_BCN_SCFG, align 4
  %131 = load i64, i64* @DCB_ATTR_BCN, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @dcbnl_reply(i32 0, i32 %129, i32 %130, i64 %131, i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %128, %57
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %138

138:                                              ; preds = %136, %45
  %139 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @dcbnl_reply(i32, i32, i32, i64, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
