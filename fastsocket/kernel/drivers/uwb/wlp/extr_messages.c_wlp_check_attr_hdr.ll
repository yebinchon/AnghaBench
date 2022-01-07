; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_check_attr_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_check_attr_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_attr_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"WLP: unexpected header type. Expected %u, got %u.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"WLP: unexpected length in header. Expected %u, got %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp*, %struct.wlp_attr_hdr*, i32, i32)* @wlp_check_attr_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_check_attr_hdr(%struct.wlp* %0, %struct.wlp_attr_hdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wlp*, align 8
  %7 = alloca %struct.wlp_attr_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  store %struct.wlp* %0, %struct.wlp** %6, align 8
  store %struct.wlp_attr_hdr* %1, %struct.wlp_attr_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.wlp*, %struct.wlp** %6, align 8
  %12 = getelementptr inbounds %struct.wlp, %struct.wlp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %10, align 8
  %16 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %7, align 8
  %17 = getelementptr inbounds %struct.wlp_attr_hdr, %struct.wlp_attr_hdr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load %struct.device*, %struct.device** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.wlp_attr_hdr, %struct.wlp_attr_hdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %50

32:                                               ; preds = %4
  %33 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %7, align 8
  %34 = getelementptr inbounds %struct.wlp_attr_hdr, %struct.wlp_attr_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load %struct.device*, %struct.device** %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.wlp_attr_hdr, %struct.wlp_attr_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %39, %22
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
