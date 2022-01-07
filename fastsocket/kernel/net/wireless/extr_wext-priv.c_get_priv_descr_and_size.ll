; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-priv.c_get_priv_descr_and_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-priv.c_get_priv_descr_and_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.iw_priv_args* }
%struct.iw_priv_args = type { i32, i8*, i32, i32 }

@IW_PRIV_SIZE_FIXED = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.iw_priv_args**)* @get_priv_descr_and_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_priv_descr_and_size(%struct.net_device* %0, i32 %1, %struct.iw_priv_args** %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iw_priv_args**, align 8
  %7 = alloca %struct.iw_priv_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.iw_priv_args** %2, %struct.iw_priv_args*** %6, align 8
  store %struct.iw_priv_args* null, %struct.iw_priv_args** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %42, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.iw_priv_args*, %struct.iw_priv_args** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.iw_priv_args, %struct.iw_priv_args* %25, i64 %27
  %29 = getelementptr inbounds %struct.iw_priv_args, %struct.iw_priv_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %20, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %19
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.iw_priv_args*, %struct.iw_priv_args** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.iw_priv_args, %struct.iw_priv_args* %37, i64 %39
  store %struct.iw_priv_args* %40, %struct.iw_priv_args** %7, align 8
  br label %45

41:                                               ; preds = %19
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %11

45:                                               ; preds = %32, %11
  store i32 0, i32* %9, align 4
  %46 = load %struct.iw_priv_args*, %struct.iw_priv_args** %7, align 8
  %47 = icmp ne %struct.iw_priv_args* %46, null
  br i1 %47, label %48, label %98

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @IW_IS_SET(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  %53 = load %struct.iw_priv_args*, %struct.iw_priv_args** %7, align 8
  %54 = getelementptr inbounds %struct.iw_priv_args, %struct.iw_priv_args* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 4, i32* %10, align 4
  br label %61

61:                                               ; preds = %60, %52
  %62 = load %struct.iw_priv_args*, %struct.iw_priv_args** %7, align 8
  %63 = getelementptr inbounds %struct.iw_priv_args, %struct.iw_priv_args* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @get_priv_size(i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.iw_priv_args*, %struct.iw_priv_args** %7, align 8
  %67 = getelementptr inbounds %struct.iw_priv_args, %struct.iw_priv_args* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IW_PRIV_SIZE_FIXED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %61
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* @IFNAMSIZ, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %72, %61
  br label %97

80:                                               ; preds = %48
  %81 = load %struct.iw_priv_args*, %struct.iw_priv_args** %7, align 8
  %82 = getelementptr inbounds %struct.iw_priv_args, %struct.iw_priv_args* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @get_priv_size(i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.iw_priv_args*, %struct.iw_priv_args** %7, align 8
  %86 = getelementptr inbounds %struct.iw_priv_args, %struct.iw_priv_args* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IW_PRIV_SIZE_FIXED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @IFNAMSIZ, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %95, %91, %80
  br label %97

97:                                               ; preds = %96, %79
  br label %98

98:                                               ; preds = %97, %45
  %99 = load %struct.iw_priv_args*, %struct.iw_priv_args** %7, align 8
  %100 = load %struct.iw_priv_args**, %struct.iw_priv_args*** %6, align 8
  store %struct.iw_priv_args* %99, %struct.iw_priv_args** %100, align 8
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

declare dso_local i64 @IW_IS_SET(i32) #1

declare dso_local i32 @get_priv_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
