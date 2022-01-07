; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_fwinfo.c_check_feature_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/src/extr_fwinfo.c_check_feature_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carl9170fw_desc_head = type { i32 }
%struct.feature_list = type { i32, i8*, i32 (%struct.carl9170fw_desc_head.0*, %struct.carlfw*)* }
%struct.carl9170fw_desc_head.0 = type opaque
%struct.carlfw = type opaque
%struct.carlfw.1 = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"\09\09%2d = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carl9170fw_desc_head*, i32, %struct.feature_list*, i32, %struct.carlfw.1*)* @check_feature_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_feature_list(%struct.carl9170fw_desc_head* %0, i32 %1, %struct.feature_list* %2, i32 %3, %struct.carlfw.1* %4) #0 {
  %6 = alloca %struct.carl9170fw_desc_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.feature_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.carlfw.1*, align 8
  %11 = alloca i32, align 4
  store %struct.carl9170fw_desc_head* %0, %struct.carl9170fw_desc_head** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.feature_list* %2, %struct.feature_list** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.carlfw.1* %4, %struct.carlfw.1** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %62, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.feature_list*, %struct.feature_list** %8, align 8
  %19 = load i32, i32* %11, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.feature_list, %struct.feature_list* %18, i64 %20
  %22 = getelementptr inbounds %struct.feature_list, %struct.feature_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @carl9170fw_supports(i32 %17, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %62

27:                                               ; preds = %16
  %28 = load i32, i32* @stdout, align 4
  %29 = load %struct.feature_list*, %struct.feature_list** %8, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.feature_list, %struct.feature_list* %29, i64 %31
  %33 = getelementptr inbounds %struct.feature_list, %struct.feature_list* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.feature_list*, %struct.feature_list** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.feature_list, %struct.feature_list* %35, i64 %37
  %39 = getelementptr inbounds %struct.feature_list, %struct.feature_list* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %40)
  %42 = load %struct.feature_list*, %struct.feature_list** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.feature_list, %struct.feature_list* %42, i64 %44
  %46 = getelementptr inbounds %struct.feature_list, %struct.feature_list* %45, i32 0, i32 2
  %47 = load i32 (%struct.carl9170fw_desc_head.0*, %struct.carlfw*)*, i32 (%struct.carl9170fw_desc_head.0*, %struct.carlfw*)** %46, align 8
  %48 = icmp ne i32 (%struct.carl9170fw_desc_head.0*, %struct.carlfw*)* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %27
  %50 = load %struct.feature_list*, %struct.feature_list** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.feature_list, %struct.feature_list* %50, i64 %52
  %54 = getelementptr inbounds %struct.feature_list, %struct.feature_list* %53, i32 0, i32 2
  %55 = load i32 (%struct.carl9170fw_desc_head.0*, %struct.carlfw*)*, i32 (%struct.carl9170fw_desc_head.0*, %struct.carlfw*)** %54, align 8
  %56 = load %struct.carl9170fw_desc_head*, %struct.carl9170fw_desc_head** %6, align 8
  %57 = bitcast %struct.carl9170fw_desc_head* %56 to %struct.carl9170fw_desc_head.0*
  %58 = load %struct.carlfw.1*, %struct.carlfw.1** %10, align 8
  %59 = bitcast %struct.carlfw.1* %58 to %struct.carlfw*
  %60 = call i32 %55(%struct.carl9170fw_desc_head.0* %57, %struct.carlfw* %59)
  br label %61

61:                                               ; preds = %49, %27
  br label %62

62:                                               ; preds = %61, %26
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %12

65:                                               ; preds = %12
  ret void
}

declare dso_local i32 @carl9170fw_supports(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
