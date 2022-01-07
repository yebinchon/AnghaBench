; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_vget_attribute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_vget_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_attr_hdr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"WLP: Not enough space in buffer to parse header.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"WLP: Unexpected attribute type. Got %u, expected %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"WLP: Attribute larger than maximum allowed. Received %zu, max is %d.\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"WLP: Not enough space in buffer to parse variable data.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp*, i64, %struct.wlp_attr_hdr*, i8*, i32, i32)* @wlp_vget_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_vget_attribute(%struct.wlp* %0, i64 %1, %struct.wlp_attr_hdr* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wlp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wlp_attr_hdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  %15 = alloca i64, align 8
  store %struct.wlp* %0, %struct.wlp** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.wlp_attr_hdr* %2, %struct.wlp_attr_hdr** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.wlp*, %struct.wlp** %8, align 8
  %17 = getelementptr inbounds %struct.wlp, %struct.wlp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %14, align 8
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %89

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 8
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.device*, %struct.device** %14, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %89

35:                                               ; preds = %26
  %36 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %10, align 8
  %37 = getelementptr inbounds %struct.wlp_attr_hdr, %struct.wlp_attr_hdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le16_to_cpu(i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %14, align 8
  %44 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %10, align 8
  %45 = getelementptr inbounds %struct.wlp_attr_hdr, %struct.wlp_attr_hdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le16_to_cpu(i32 %46)
  %48 = load i64, i64* %9, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %89

52:                                               ; preds = %35
  %53 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %10, align 8
  %54 = getelementptr inbounds %struct.wlp_attr_hdr, %struct.wlp_attr_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le16_to_cpu(i32 %55)
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ugt i64 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load %struct.device*, %struct.device** %14, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %63, i32 %64)
  %66 = load i32, i32* @EFBIG, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %89

68:                                               ; preds = %52
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %15, align 8
  %72 = add i64 8, %71
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.device*, %struct.device** %14, align 8
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %89

79:                                               ; preds = %68
  %80 = load i8*, i8** %11, align 8
  %81 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %10, align 8
  %82 = bitcast %struct.wlp_attr_hdr* %81 to i8*
  %83 = getelementptr i8, i8* %82, i64 8
  %84 = load i64, i64* %15, align 8
  %85 = call i32 @memcpy(i8* %80, i8* %83, i64 %84)
  %86 = load i64, i64* %15, align 8
  %87 = add i64 8, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %79, %74, %61, %42, %30, %23
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
