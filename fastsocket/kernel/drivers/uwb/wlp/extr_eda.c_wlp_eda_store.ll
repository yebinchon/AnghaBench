; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_eda.c_wlp_eda_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_eda.c_wlp_eda_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { i32, %struct.wlp_eda }
%struct.wlp_eda = type { i32 }
%struct.uwb_dev_addr = type { i32* }

@.str = private unnamed_addr constant [67 x i8] c"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx %02hhx:%02hhx %02hhx %u\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_eda_store(%struct.wlp* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wlp_eda*, align 8
  %9 = alloca [6 x i32], align 16
  %10 = alloca %struct.uwb_dev_addr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.wlp*, %struct.wlp** %4, align 8
  %14 = getelementptr inbounds %struct.wlp, %struct.wlp* %13, i32 0, i32 1
  store %struct.wlp_eda* %14, %struct.wlp_eda** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %22 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %10, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %10, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %24, i32* %27, i32* %11, i32* %12)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %61 [
    i32 6, label %30
    i32 10, label %33
  ]

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %64

33:                                               ; preds = %3
  %34 = load i32, i32* %12, align 4
  %35 = icmp uge i32 %34, 1
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  store i32 %37, i32* %12, align 4
  %38 = load %struct.wlp_eda*, %struct.wlp_eda** %8, align 8
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %40 = call i32 @wlp_eda_create_node(%struct.wlp_eda* %38, i32* %39, %struct.uwb_dev_addr* %10)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @EEXIST, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %65

49:                                               ; preds = %43, %33
  %50 = load %struct.wlp_eda*, %struct.wlp_eda** %8, align 8
  %51 = load %struct.wlp*, %struct.wlp** %4, align 8
  %52 = getelementptr inbounds %struct.wlp, %struct.wlp* %51, i32 0, i32 0
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @wlp_eda_update_node(%struct.wlp_eda* %50, %struct.uwb_dev_addr* %10, i32* %52, i32* %53, i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %65

60:                                               ; preds = %49
  br label %64

61:                                               ; preds = %3
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %60, %30
  br label %65

65:                                               ; preds = %64, %59, %48
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  br label %73

71:                                               ; preds = %65
  %72 = load i64, i64* %6, align 8
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i64 [ %70, %68 ], [ %72, %71 ]
  %75 = trunc i64 %74 to i32
  ret i32 %75
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @wlp_eda_create_node(%struct.wlp_eda*, i32*, %struct.uwb_dev_addr*) #1

declare dso_local i32 @wlp_eda_update_node(%struct.wlp_eda*, %struct.uwb_dev_addr*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
