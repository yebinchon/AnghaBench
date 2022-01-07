; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_sysfs.c_uwb_pca_base_priority_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_sysfs.c_uwb_pca_base_priority_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp_options = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%hhu\0A\00", align 1
@WLP_DRP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_pca_base_priority_store(%struct.wlp_options* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wlp_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wlp_options* %0, %struct.wlp_options** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @sscanf(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sge i32 %21, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %45

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.wlp_options*, %struct.wlp_options** %4, align 8
  %27 = getelementptr inbounds %struct.wlp_options, %struct.wlp_options* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.wlp_options*, %struct.wlp_options** %4, align 8
  %32 = getelementptr inbounds %struct.wlp_options, %struct.wlp_options* %31, i32 0, i32 1
  %33 = call i32 @wlp_tx_hdr_delivery_id_type(i32* %32)
  %34 = load i32, i32* @WLP_DRP, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.wlp_options*, %struct.wlp_options** %4, align 8
  %39 = getelementptr inbounds %struct.wlp_options, %struct.wlp_options* %38, i32 0, i32 1
  %40 = load %struct.wlp_options*, %struct.wlp_options** %4, align 8
  %41 = getelementptr inbounds %struct.wlp_options, %struct.wlp_options* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wlp_tx_hdr_set_delivery_id_type(i32* %39, i32 %42)
  br label %44

44:                                               ; preds = %37, %30, %24
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %23, %15
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  br label %53

51:                                               ; preds = %45
  %52 = load i64, i64* %6, align 8
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i64 [ %50, %48 ], [ %52, %51 ]
  %55 = trunc i64 %54 to i32
  ret i32 %55
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @wlp_tx_hdr_delivery_id_type(i32*) #1

declare dso_local i32 @wlp_tx_hdr_set_delivery_id_type(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
