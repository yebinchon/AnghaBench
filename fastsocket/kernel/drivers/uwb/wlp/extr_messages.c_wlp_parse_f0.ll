; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_parse_f0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_parse_f0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i64, i8* }
%struct.wlp_frame_assoc = type { i32 }
%struct.wlp_nonce = type { i32 }

@WLP_WSS_NONCE_STRSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"WLP: unable to obtain Enrollee nonce attribute from F0 message.\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"WLP: unable to obtain Registrar nonce attribute from F0 message.\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"WLP: unable to obtain WLP Association error attribute from F0 message.\0A\00", align 1
@.str.3 = private unnamed_addr constant [113 x i8] c"WLP: Received F0 error frame from neighbor. Enrollee nonce: %s, Registrar nonce: %s, WLP Association error: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_parse_f0(%struct.wlp* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.wlp*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wlp_frame_assoc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wlp_nonce, align 4
  %12 = alloca %struct.wlp_nonce, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.wlp* %0, %struct.wlp** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %17 = load %struct.wlp*, %struct.wlp** %3, align 8
  %18 = getelementptr inbounds %struct.wlp, %struct.wlp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.wlp_frame_assoc*
  store %struct.wlp_frame_assoc* %25, %struct.wlp_frame_assoc** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* @WLP_WSS_NONCE_STRSIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %14, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  %36 = load i32, i32* @WLP_WSS_NONCE_STRSIZE, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %16, align 8
  store i64 4, i64* %9, align 8
  %39 = load %struct.wlp*, %struct.wlp** %3, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr i8, i8* %40, i64 %41
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub i64 %43, %44
  %46 = call i64 @wlp_get_enonce(%struct.wlp* %39, i8* %42, %struct.wlp_nonce* %11, i64 %45)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %2
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %95

52:                                               ; preds = %2
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %9, align 8
  %56 = load %struct.wlp*, %struct.wlp** %3, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr i8, i8* %57, i64 %58
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = sub i64 %60, %61
  %63 = call i64 @wlp_get_rnonce(%struct.wlp* %56, i8* %59, %struct.wlp_nonce* %12, i64 %62)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %95

69:                                               ; preds = %52
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %9, align 8
  %73 = load %struct.wlp*, %struct.wlp** %3, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr i8, i8* %74, i64 %75
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = sub i64 %77, %78
  %80 = call i64 @wlp_get_wlp_assc_err(%struct.wlp* %73, i8* %76, i32* %13, i64 %79)
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %69
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  br label %95

86:                                               ; preds = %69
  %87 = trunc i64 %33 to i32
  %88 = call i32 @wlp_wss_nonce_print(i8* %35, i32 %87, %struct.wlp_nonce* %11)
  %89 = trunc i64 %37 to i32
  %90 = call i32 @wlp_wss_nonce_print(i8* %38, i32 %89, %struct.wlp_nonce* %12)
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @wlp_assc_error_str(i32 %92)
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.3, i64 0, i64 0), i8* %35, i8* %38, i32 %93)
  store i64 0, i64* %10, align 8
  br label %95

95:                                               ; preds = %86, %83, %66, %49
  %96 = load i64, i64* %10, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %98)
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @wlp_get_enonce(%struct.wlp*, i8*, %struct.wlp_nonce*, i64) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i64 @wlp_get_rnonce(%struct.wlp*, i8*, %struct.wlp_nonce*, i64) #2

declare dso_local i64 @wlp_get_wlp_assc_err(%struct.wlp*, i8*, i32*, i64) #2

declare dso_local i32 @wlp_wss_nonce_print(i8*, i32, %struct.wlp_nonce*) #2

declare dso_local i32 @wlp_assc_error_str(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
