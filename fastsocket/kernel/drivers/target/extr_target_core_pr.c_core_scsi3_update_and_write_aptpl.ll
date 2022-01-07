; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_update_and_write_aptpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_update_and_write_aptpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*, i32)* @core_scsi3_update_and_write_aptpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_scsi3_update_and_write_aptpl(%struct.se_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i32 0, i32 64)
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8* %18, i8** %9, align 8
  store i32 64, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %9, align 8
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = load %struct.se_device*, %struct.se_device** %5, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @core_scsi3_update_aptpl_buf(%struct.se_device* %23, i8* %24, i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.se_device*, %struct.se_device** %5, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @__core_scsi3_write_aptpl_to_file(%struct.se_device* %33, i8* %34, i32 0)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %30
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @core_scsi3_update_aptpl_buf(%struct.se_device*, i8*, i32, i32) #1

declare dso_local i32 @__core_scsi3_write_aptpl_to_file(%struct.se_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
