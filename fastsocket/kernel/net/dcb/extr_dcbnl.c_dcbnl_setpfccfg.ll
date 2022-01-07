; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_setpfccfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_setpfccfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i64, i32)* }
%struct.nlattr = type { i64 }

@DCB_PFC_UP_ATTR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DCB_ATTR_PFC_CFG = common dso_local global i64 0, align 8
@dcbnl_pfc_up_nest = common dso_local global i32 0, align 4
@DCB_PFC_UP_ATTR_0 = common dso_local global i32 0, align 4
@DCB_PFC_UP_ATTR_7 = common dso_local global i32 0, align 4
@RTM_SETDCB = common dso_local global i32 0, align 4
@DCB_CMD_PFC_SCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, i32, i32, i32)* @dcbnl_setpfccfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_setpfccfg(%struct.net_device* %0, %struct.nlattr** %1, i32 %2, i32 %3, i32 %4) #0 {
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
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @DCB_PFC_UP_ATTR_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %15, align 4
  %25 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %26 = load i64, i64* @DCB_ATTR_PFC_CFG, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %5
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.net_device*, i64, i32)*, i32 (%struct.net_device*, i64, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.net_device*, i64, i32)* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %30, %5
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %99

39:                                               ; preds = %30
  %40 = load i32, i32* @DCB_PFC_UP_ATTR_MAX, align 4
  %41 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %42 = load i64, i64* @DCB_ATTR_PFC_CFG, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = load i32, i32* @dcbnl_pfc_up_nest, align 4
  %46 = call i32 @nla_parse_nested(%struct.nlattr** %22, i32 %40, %struct.nlattr* %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %97

50:                                               ; preds = %39
  %51 = load i32, i32* @DCB_PFC_UP_ATTR_0, align 4
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %86, %50
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @DCB_PFC_UP_ATTR_7, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %52
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = icmp eq %struct.nlattr* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %86

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = call i32 @nla_get_u8(%struct.nlattr* %67)
  store i32 %68, i32* %16, align 4
  %69 = load %struct.net_device*, %struct.net_device** %7, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (%struct.net_device*, i64, i32)*, i32 (%struct.net_device*, i64, i32)** %72, align 8
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @DCB_PFC_UP_ATTR_0, align 4
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 %80, %82
  %84 = load i32, i32* %16, align 4
  %85 = call i32 %73(%struct.net_device* %74, i64 %83, i32 %84)
  br label %86

86:                                               ; preds = %63, %62
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %52

89:                                               ; preds = %52
  %90 = load i32, i32* @RTM_SETDCB, align 4
  %91 = load i32, i32* @DCB_CMD_PFC_SCFG, align 4
  %92 = load i64, i64* @DCB_ATTR_PFC_CFG, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @dcbnl_reply(i32 0, i32 %90, i32 %91, i64 %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %89, %49
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %99

99:                                               ; preds = %97, %37
  %100 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

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
