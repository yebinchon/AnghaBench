; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_setnumtcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_setnumtcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32)* }
%struct.nlattr = type { i32 }

@DCB_NUMTCS_ATTR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DCB_ATTR_NUMTCS = common dso_local global i64 0, align 8
@dcbnl_numtcs_nest = common dso_local global i32 0, align 4
@DCB_NUMTCS_ATTR_ALL = common dso_local global i32 0, align 4
@RTM_SETDCB = common dso_local global i32 0, align 4
@DCB_CMD_SNUMTCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, i32, i32, i32)* @dcbnl_setnumtcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_setnumtcs(%struct.net_device* %0, %struct.nlattr** %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %18 = load i32, i32* @DCB_NUMTCS_ATTR_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %14, align 4
  %25 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %26 = load i64, i64* @DCB_ATTR_NUMTCS, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %5
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.net_device*, i32, i32)* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %30, %5
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %104

39:                                               ; preds = %30
  %40 = load i32, i32* @DCB_NUMTCS_ATTR_MAX, align 4
  %41 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %42 = load i64, i64* @DCB_ATTR_NUMTCS, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = load i32, i32* @dcbnl_numtcs_nest, align 4
  %46 = call i32 @nla_parse_nested(%struct.nlattr** %22, i32 %40, %struct.nlattr* %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %14, align 4
  br label %102

52:                                               ; preds = %39
  %53 = load i32, i32* @DCB_NUMTCS_ATTR_ALL, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %85, %52
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @DCB_NUMTCS_ATTR_MAX, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %55
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = icmp eq %struct.nlattr* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %85

66:                                               ; preds = %59
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i32 @nla_get_u8(%struct.nlattr* %70)
  store i32 %71, i32* %15, align 4
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %75, align 8
  %77 = load %struct.net_device*, %struct.net_device** %7, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 %76(%struct.net_device* %77, i32 %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  br label %89

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84, %65
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %55

88:                                               ; preds = %55
  br label %89

89:                                               ; preds = %88, %83
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* @RTM_SETDCB, align 4
  %96 = load i32, i32* @DCB_CMD_SNUMTCS, align 4
  %97 = load i64, i64* @DCB_ATTR_NUMTCS, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @dcbnl_reply(i32 %94, i32 %95, i32 %96, i64 %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %89, %49
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %104

104:                                              ; preds = %102, %37
  %105 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %6, align 4
  ret i32 %106
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
