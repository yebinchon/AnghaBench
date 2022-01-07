; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wlp-lc.c_wlp_enroll_neighbor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wlp-lc.c_wlp_enroll_neighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_neighbor_e = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.uwb_dev_addr }
%struct.uwb_dev_addr = type { i32* }
%struct.wlp_wss = type { i64, i64 }
%struct.wlp_uuid = type { i32 }

@WLP_WSS_UUID_STRSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"WLP: D1/D2 message exchange for enrollment failed. result = %d \0A\00", align 1
@WLP_WSS_STATE_PART_ENROLLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"WLP: Unable to enroll into WSS %s using neighbor %02x:%02x. \0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WLP_WSS_SECURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"FIXME: need to complete secure enrollment.\0A\00", align 1
@WLP_WSS_STATE_ENROLLED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [73 x i8] c"WLP: Success Enrollment into unsecure WSS %s using neighbor %02x:%02x. \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_enroll_neighbor(%struct.wlp* %0, %struct.wlp_neighbor_e* %1, %struct.wlp_wss* %2, %struct.wlp_uuid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wlp*, align 8
  %7 = alloca %struct.wlp_neighbor_e*, align 8
  %8 = alloca %struct.wlp_wss*, align 8
  %9 = alloca %struct.wlp_uuid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.uwb_dev_addr*, align 8
  %15 = alloca i32, align 4
  store %struct.wlp* %0, %struct.wlp** %6, align 8
  store %struct.wlp_neighbor_e* %1, %struct.wlp_neighbor_e** %7, align 8
  store %struct.wlp_wss* %2, %struct.wlp_wss** %8, align 8
  store %struct.wlp_uuid* %3, %struct.wlp_uuid** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.wlp*, %struct.wlp** %6, align 8
  %17 = getelementptr inbounds %struct.wlp, %struct.wlp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %11, align 8
  %21 = load i32, i32* @WLP_WSS_UUID_STRSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load %struct.wlp_neighbor_e*, %struct.wlp_neighbor_e** %7, align 8
  %26 = getelementptr inbounds %struct.wlp_neighbor_e, %struct.wlp_neighbor_e* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store %struct.uwb_dev_addr* %28, %struct.uwb_dev_addr** %14, align 8
  %29 = trunc i64 %22 to i32
  %30 = load %struct.wlp_uuid*, %struct.wlp_uuid** %9, align 8
  %31 = call i32 @wlp_wss_uuid_print(i8* %24, i32 %29, %struct.wlp_uuid* %30)
  %32 = load %struct.wlp*, %struct.wlp** %6, align 8
  %33 = load %struct.wlp_neighbor_e*, %struct.wlp_neighbor_e** %7, align 8
  %34 = load %struct.wlp_wss*, %struct.wlp_wss** %8, align 8
  %35 = load %struct.wlp_uuid*, %struct.wlp_uuid** %9, align 8
  %36 = call i32 @wlp_d1d2_exchange(%struct.wlp* %32, %struct.wlp_neighbor_e* %33, %struct.wlp_wss* %34, %struct.wlp_uuid* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %4
  %40 = load %struct.device*, %struct.device** %11, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %92

43:                                               ; preds = %4
  %44 = load %struct.wlp_wss*, %struct.wlp_wss** %8, align 8
  %45 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @WLP_WSS_STATE_PART_ENROLLED, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.device*, %struct.device** %11, align 8
  %51 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %14, align 8
  %52 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %14, align 8
  %57 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %55, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  br label %92

64:                                               ; preds = %43
  %65 = load %struct.wlp_wss*, %struct.wlp_wss** %8, align 8
  %66 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WLP_WSS_SECURE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.device*, %struct.device** %11, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %94

75:                                               ; preds = %64
  %76 = load i64, i64* @WLP_WSS_STATE_ENROLLED, align 8
  %77 = load %struct.wlp_wss*, %struct.wlp_wss** %8, align 8
  %78 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.device*, %struct.device** %11, align 8
  %80 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %14, align 8
  %81 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.uwb_dev_addr*, %struct.uwb_dev_addr** %14, align 8
  %86 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_dbg(%struct.device* %79, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i8* %24, i32 %84, i32 %89)
  br label %91

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %49, %39
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %98

94:                                               ; preds = %70
  %95 = load %struct.wlp_wss*, %struct.wlp_wss** %8, align 8
  %96 = call i32 @wlp_wss_reset(%struct.wlp_wss* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %98

98:                                               ; preds = %94, %92
  %99 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wlp_wss_uuid_print(i8*, i32, %struct.wlp_uuid*) #2

declare dso_local i32 @wlp_d1d2_exchange(%struct.wlp*, %struct.wlp_neighbor_e*, %struct.wlp_wss*, %struct.wlp_uuid*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32) #2

declare dso_local i32 @wlp_wss_reset(%struct.wlp_wss*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
