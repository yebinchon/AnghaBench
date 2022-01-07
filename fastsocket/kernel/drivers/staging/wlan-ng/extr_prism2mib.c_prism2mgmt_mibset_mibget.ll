; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mgmt_mibset_mibget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_prism2mib.c_prism2mgmt_mibset_mibget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32 (%struct.TYPE_17__*, i32, %struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i8*)* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i8*, i64 }
%struct.TYPE_12__ = type { i64, i8* }
%struct.TYPE_16__ = type { i64, i8*, i64 }

@P80211ENUM_msgitem_status_data_ok = common dso_local global i8* null, align 8
@P80211ENUM_resultcode_success = common dso_local global i64 0, align 8
@F_STA = common dso_local global i32 0, align 4
@mibtab = common dso_local global %struct.TYPE_17__* null, align 8
@P80211ENUM_resultcode_not_supported = common dso_local global i64 0, align 8
@DIDmsg_dot11req_mibget = common dso_local global i64 0, align 8
@F_READ = common dso_local global i32 0, align 4
@P80211ENUM_resultcode_cant_get_writeonly_mib = common dso_local global i64 0, align 8
@F_WRITE = common dso_local global i32 0, align 4
@P80211ENUM_resultcode_cant_set_readonly_mib = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"get/set failure, result=%d\0A\00", align 1
@P80211ENUM_resultcode_implementation_failure = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2mgmt_mibset_mibget(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %10, align 8
  %17 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load i64, i64* @P80211ENUM_resultcode_success, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load i32, i32* @F_STA, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %11, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mibtab, align 8
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %8, align 8
  br label %32

32:                                               ; preds = %54, %2
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %57

53:                                               ; preds = %45, %37
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 1
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %8, align 8
  br label %32

57:                                               ; preds = %52, %32
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i64, i64* @P80211ENUM_resultcode_not_supported, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  br label %146

67:                                               ; preds = %57
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DIDmsg_dot11req_mibget, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %67
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @F_READ, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = load i64, i64* @P80211ENUM_resultcode_cant_get_writeonly_mib, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  br label %146

88:                                               ; preds = %76
  br label %102

89:                                               ; preds = %67
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @F_WRITE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load i64, i64* @P80211ENUM_resultcode_cant_set_readonly_mib, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  br label %146

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %88
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = load i32 (%struct.TYPE_17__*, i32, %struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i8*)*, i32 (%struct.TYPE_17__*, i32, %struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i8*)** %104, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 %105(%struct.TYPE_17__* %106, i32 %107, %struct.TYPE_14__* %108, i32* %109, %struct.TYPE_15__* %110, i8* %114)
  store i32 %115, i32* %6, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @P80211ENUM_resultcode_success, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %145

122:                                              ; preds = %102
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load i64, i64* @P80211ENUM_resultcode_implementation_failure, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  br label %144

132:                                              ; preds = %122
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  store i8* %136, i8** %139, align 8
  %140 = load i8*, i8** @P80211ENUM_msgitem_status_data_ok, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %135, %132
  br label %144

144:                                              ; preds = %143, %125
  br label %145

145:                                              ; preds = %144, %102
  br label %146

146:                                              ; preds = %145, %96, %83, %62
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
