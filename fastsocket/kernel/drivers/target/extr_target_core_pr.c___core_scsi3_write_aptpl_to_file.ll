; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c___core_scsi3_write_aptpl_to_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c___core_scsi3_write_aptpl_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.t10_wwn }
%struct.t10_wwn = type { i8* }
%struct.file = type { i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"WWN value for struct se_device does not fit into path buffer\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"/var/target/pr/aptpl_%s\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"filp_open(%s) for APTPL metadata failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Error writing APTPL metadata file: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*, i32)* @__core_scsi3_write_aptpl_to_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__core_scsi3_write_aptpl_to_file(%struct.se_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.t10_wwn*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [512 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.se_device*, %struct.se_device** %5, align 8
  %14 = getelementptr inbounds %struct.se_device, %struct.se_device* %13, i32 0, i32 0
  store %struct.t10_wwn* %14, %struct.t10_wwn** %8, align 8
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = load i32, i32* @O_CREAT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @O_TRUNC, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i32 0, i32 512)
  %22 = load %struct.t10_wwn*, %struct.t10_wwn** %8, align 8
  %23 = getelementptr inbounds %struct.t10_wwn, %struct.t10_wwn* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = call i32 @strlen(i8* %25)
  %27 = icmp sge i32 %26, 512
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %79

32:                                               ; preds = %3
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %34 = load %struct.t10_wwn*, %struct.t10_wwn** %8, align 8
  %35 = getelementptr inbounds %struct.t10_wwn, %struct.t10_wwn* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = call i32 @snprintf(i8* %33, i32 512, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.file* @filp_open(i8* %39, i32 %40, i32 384)
  store %struct.file* %41, %struct.file** %9, align 8
  %42 = load %struct.file*, %struct.file** %9, align 8
  %43 = call i64 @IS_ERR(%struct.file* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = load %struct.file*, %struct.file** %9, align 8
  %49 = call i32 @PTR_ERR(%struct.file* %48)
  store i32 %49, i32* %4, align 4
  br label %79

50:                                               ; preds = %32
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = call i32 @strlen(i8* %55)
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load %struct.file*, %struct.file** %9, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @kernel_write(%struct.file* %59, i8* %60, i32 %61, i32 0)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %58
  %69 = load %struct.file*, %struct.file** %9, align 8
  %70 = call i32 @fput(%struct.file* %69)
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  br label %77

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ %75, %73 ], [ 0, %76 ]
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %45, %28
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.file* @filp_open(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @kernel_write(%struct.file*, i8*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
