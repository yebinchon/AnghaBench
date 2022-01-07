; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_get_wss_info_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_get_wss_info_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_attr_hdr = type { i32 }
%struct.wlp_wss_tmp_info = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"WLP: unable to obtain WSS name from WSS info in D2 message.\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"WLP: unable to obtain accepting enrollment from WSS info in D2 message.\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"WLP: invalid value for accepting enrollment in D2 message.\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"WLP: unable to obtain secure status from WSS info in D2 message.\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"WLP: invalid value for secure status in D2 message.\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"WLP: unable to obtain broadcast address from WSS info in D2 message.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wlp*, %struct.wlp_attr_hdr*, %struct.wlp_wss_tmp_info*, i64)* @wlp_get_wss_info_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wlp_get_wss_info_attrs(%struct.wlp* %0, %struct.wlp_attr_hdr* %1, %struct.wlp_wss_tmp_info* %2, i64 %3) #0 {
  %5 = alloca %struct.wlp*, align 8
  %6 = alloca %struct.wlp_attr_hdr*, align 8
  %7 = alloca %struct.wlp_wss_tmp_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.wlp* %0, %struct.wlp** %5, align 8
  store %struct.wlp_attr_hdr* %1, %struct.wlp_attr_hdr** %6, align 8
  store %struct.wlp_wss_tmp_info* %2, %struct.wlp_wss_tmp_info** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.wlp*, %struct.wlp** %5, align 8
  %14 = getelementptr inbounds %struct.wlp, %struct.wlp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %6, align 8
  %19 = bitcast %struct.wlp_attr_hdr* %18 to i8*
  store i8* %19, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %12, align 8
  %22 = load %struct.wlp*, %struct.wlp** %5, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.wlp_wss_tmp_info*, %struct.wlp_wss_tmp_info** %7, align 8
  %25 = getelementptr inbounds %struct.wlp_wss_tmp_info, %struct.wlp_wss_tmp_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @wlp_get_wss_name(%struct.wlp* %22, i8* %23, i32 %26, i64 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp ult i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load %struct.device*, %struct.device** %9, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %126

34:                                               ; preds = %4
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %11, align 8
  %38 = load %struct.wlp*, %struct.wlp** %5, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr i8, i8* %39, i64 %40
  %42 = load %struct.wlp_wss_tmp_info*, %struct.wlp_wss_tmp_info** %7, align 8
  %43 = getelementptr inbounds %struct.wlp_wss_tmp_info, %struct.wlp_wss_tmp_info* %42, i32 0, i32 0
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %44, %45
  %47 = call i64 @wlp_get_accept_enrl(%struct.wlp* %38, i8* %41, i32* %43, i64 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ult i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %34
  %51 = load %struct.device*, %struct.device** %9, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  br label %126

53:                                               ; preds = %34
  %54 = load %struct.wlp_wss_tmp_info*, %struct.wlp_wss_tmp_info** %7, align 8
  %55 = getelementptr inbounds %struct.wlp_wss_tmp_info, %struct.wlp_wss_tmp_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.wlp_wss_tmp_info*, %struct.wlp_wss_tmp_info** %7, align 8
  %60 = getelementptr inbounds %struct.wlp_wss_tmp_info, %struct.wlp_wss_tmp_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.device*, %struct.device** %9, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i64, i64* @EINVAL, align 8
  %67 = sub i64 0, %66
  store i64 %67, i64* %12, align 8
  br label %126

68:                                               ; preds = %58, %53
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %11, align 8
  %72 = load %struct.wlp*, %struct.wlp** %5, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr i8, i8* %73, i64 %74
  %76 = load %struct.wlp_wss_tmp_info*, %struct.wlp_wss_tmp_info** %7, align 8
  %77 = getelementptr inbounds %struct.wlp_wss_tmp_info, %struct.wlp_wss_tmp_info* %76, i32 0, i32 1
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %11, align 8
  %80 = sub i64 %78, %79
  %81 = call i64 @wlp_get_wss_sec_status(%struct.wlp* %72, i8* %75, i32* %77, i64 %80)
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = icmp ult i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %68
  %85 = load %struct.device*, %struct.device** %9, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  br label %126

87:                                               ; preds = %68
  %88 = load %struct.wlp_wss_tmp_info*, %struct.wlp_wss_tmp_info** %7, align 8
  %89 = getelementptr inbounds %struct.wlp_wss_tmp_info, %struct.wlp_wss_tmp_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load %struct.wlp_wss_tmp_info*, %struct.wlp_wss_tmp_info** %7, align 8
  %94 = getelementptr inbounds %struct.wlp_wss_tmp_info, %struct.wlp_wss_tmp_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.device*, %struct.device** %9, align 8
  %99 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i64, i64* @EINVAL, align 8
  %101 = sub i64 0, %100
  store i64 %101, i64* %12, align 8
  br label %126

102:                                              ; preds = %92, %87
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %11, align 8
  %106 = load %struct.wlp*, %struct.wlp** %5, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr i8, i8* %107, i64 %108
  %110 = load %struct.wlp_wss_tmp_info*, %struct.wlp_wss_tmp_info** %7, align 8
  %111 = getelementptr inbounds %struct.wlp_wss_tmp_info, %struct.wlp_wss_tmp_info* %110, i32 0, i32 2
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %11, align 8
  %114 = sub i64 %112, %113
  %115 = call i64 @wlp_get_wss_bcast(%struct.wlp* %106, i8* %109, i32* %111, i64 %114)
  store i64 %115, i64* %12, align 8
  %116 = load i64, i64* %12, align 8
  %117 = icmp ult i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %102
  %119 = load %struct.device*, %struct.device** %9, align 8
  %120 = call i32 @dev_err(%struct.device* %119, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  br label %126

121:                                              ; preds = %102
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* %11, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %11, align 8
  %125 = load i64, i64* %11, align 8
  store i64 %125, i64* %12, align 8
  br label %126

126:                                              ; preds = %121, %118, %97, %84, %63, %50, %31
  %127 = load i64, i64* %12, align 8
  ret i64 %127
}

declare dso_local i64 @wlp_get_wss_name(%struct.wlp*, i8*, i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @wlp_get_accept_enrl(%struct.wlp*, i8*, i32*, i64) #1

declare dso_local i64 @wlp_get_wss_sec_status(%struct.wlp*, i8*, i32*, i64) #1

declare dso_local i64 @wlp_get_wss_bcast(%struct.wlp*, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
