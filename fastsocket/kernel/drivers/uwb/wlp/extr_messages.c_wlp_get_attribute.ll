; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_get_attribute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_get_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_attr_hdr = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"WLP: Not enough space in buffer to parse attribute field. Need %d, received %zu\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"WLP: Header verification failed. \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wlp*, i32, %struct.wlp_attr_hdr*, i8*, i64, i64)* @wlp_get_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wlp_get_attribute(%struct.wlp* %0, i32 %1, %struct.wlp_attr_hdr* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.wlp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wlp_attr_hdr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca i64, align 8
  store %struct.wlp* %0, %struct.wlp** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.wlp_attr_hdr* %2, %struct.wlp_attr_hdr** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.wlp*, %struct.wlp** %8, align 8
  %17 = getelementptr inbounds %struct.wlp, %struct.wlp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %14, align 8
  %21 = load i64, i64* %12, align 8
  %22 = add i64 4, %21
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %13, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %7, align 8
  br label %60

28:                                               ; preds = %6
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.device*, %struct.device** %14, align 8
  %34 = load i64, i64* %15, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %13, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %36)
  %38 = load i64, i64* @EIO, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %7, align 8
  br label %60

40:                                               ; preds = %28
  %41 = load %struct.wlp*, %struct.wlp** %8, align 8
  %42 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i64, i64* %12, align 8
  %45 = call i64 @wlp_check_attr_hdr(%struct.wlp* %41, %struct.wlp_attr_hdr* %42, i32 %43, i64 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %14, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i64, i64* @EINVAL, align 8
  %51 = sub nsw i64 0, %50
  store i64 %51, i64* %7, align 8
  br label %60

52:                                               ; preds = %40
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %10, align 8
  %55 = bitcast %struct.wlp_attr_hdr* %54 to i8*
  %56 = getelementptr i8, i8* %55, i64 4
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @memcpy(i8* %53, i8* %56, i64 %57)
  %59 = load i64, i64* %15, align 8
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %52, %47, %32, %25
  %61 = load i64, i64* %7, align 8
  ret i64 %61
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @wlp_check_attr_hdr(%struct.wlp*, %struct.wlp_attr_hdr*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
