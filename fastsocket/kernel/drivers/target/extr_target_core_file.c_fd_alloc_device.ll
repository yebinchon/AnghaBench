; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_file.c_fd_alloc_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_file.c_fd_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.se_hba = type { %struct.fd_host* }
%struct.fd_host = type { i32 }
%struct.fd_dev = type { %struct.se_device, %struct.fd_host* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to allocate memory for struct fd_dev\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"FILEIO: Allocated fd_dev for %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.se_device* (%struct.se_hba*, i8*)* @fd_alloc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.se_device* @fd_alloc_device(%struct.se_hba* %0, i8* %1) #0 {
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.se_hba*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fd_dev*, align 8
  %7 = alloca %struct.fd_host*, align 8
  store %struct.se_hba* %0, %struct.se_hba** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %9 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %8, i32 0, i32 0
  %10 = load %struct.fd_host*, %struct.fd_host** %9, align 8
  store %struct.fd_host* %10, %struct.fd_host** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.fd_dev* @kzalloc(i32 16, i32 %11)
  store %struct.fd_dev* %12, %struct.fd_dev** %6, align 8
  %13 = load %struct.fd_dev*, %struct.fd_dev** %6, align 8
  %14 = icmp ne %struct.fd_dev* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store %struct.se_device* null, %struct.se_device** %3, align 8
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.fd_host*, %struct.fd_host** %7, align 8
  %19 = load %struct.fd_dev*, %struct.fd_dev** %6, align 8
  %20 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %19, i32 0, i32 1
  store %struct.fd_host* %18, %struct.fd_host** %20, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load %struct.fd_dev*, %struct.fd_dev** %6, align 8
  %24 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %23, i32 0, i32 0
  store %struct.se_device* %24, %struct.se_device** %3, align 8
  br label %25

25:                                               ; preds = %17, %15
  %26 = load %struct.se_device*, %struct.se_device** %3, align 8
  ret %struct.se_device* %26
}

declare dso_local %struct.fd_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
