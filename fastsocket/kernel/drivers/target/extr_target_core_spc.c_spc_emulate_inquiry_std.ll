; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_inquiry_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_inquiry_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.se_device*, %struct.se_lun* }
%struct.se_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i64 (%struct.se_device*)* }
%struct.se_lun = type { i32 }

@TYPE_TAPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"LIO-ORG\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spc_emulate_inquiry_std(%struct.se_cmd* %0, i8* %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_lun*, align 8
  %6 = alloca %struct.se_device*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %7, i32 0, i32 1
  %9 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  store %struct.se_lun* %9, %struct.se_lun** %5, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 0
  %12 = load %struct.se_device*, %struct.se_device** %11, align 8
  store %struct.se_device* %12, %struct.se_device** %6, align 8
  %13 = load %struct.se_device*, %struct.se_device** %6, align 8
  %14 = getelementptr inbounds %struct.se_device, %struct.se_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64 (%struct.se_device*)*, i64 (%struct.se_device*)** %16, align 8
  %18 = load %struct.se_device*, %struct.se_device** %6, align 8
  %19 = call i64 %17(%struct.se_device* %18)
  %20 = load i64, i64* @TYPE_TAPE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 -128, i8* %24, align 1
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8 5, i8* %27, align 1
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  store i8 2, i8* %29, align 1
  %30 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %31 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @spc_fill_alua_data(i32 %32, i8* %33)
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 7
  store i8 2, i8* %36, align 1
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 8
  %39 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %38, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 16
  %42 = load %struct.se_device*, %struct.se_device** %6, align 8
  %43 = getelementptr inbounds %struct.se_device, %struct.se_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %41, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 32
  %49 = load %struct.se_device*, %struct.se_device** %6, align 8
  %50 = getelementptr inbounds %struct.se_device, %struct.se_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  store i8 31, i8* %55, align 1
  ret i32 0
}

declare dso_local i32 @spc_fill_alua_data(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
