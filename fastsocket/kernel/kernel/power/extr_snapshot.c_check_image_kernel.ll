; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_check_image_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_check_image_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swsusp_info = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@LINUX_VERSION_CODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"kernel version\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"system type\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"kernel release\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.swsusp_info*)* @check_image_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_image_kernel(%struct.swsusp_info* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.swsusp_info*, align 8
  store %struct.swsusp_info* %0, %struct.swsusp_info** %3, align 8
  %4 = load %struct.swsusp_info*, %struct.swsusp_info** %3, align 8
  %5 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LINUX_VERSION_CODE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %55

10:                                               ; preds = %1
  %11 = load %struct.swsusp_info*, %struct.swsusp_info** %3, align 8
  %12 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_4__* (...) @init_utsname()
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strcmp(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %55

21:                                               ; preds = %10
  %22 = load %struct.swsusp_info*, %struct.swsusp_info** %3, align 8
  %23 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_4__* (...) @init_utsname()
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strcmp(i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %55

32:                                               ; preds = %21
  %33 = load %struct.swsusp_info*, %struct.swsusp_info** %3, align 8
  %34 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_4__* (...) @init_utsname()
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @strcmp(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %55

43:                                               ; preds = %32
  %44 = load %struct.swsusp_info*, %struct.swsusp_info** %3, align 8
  %45 = getelementptr inbounds %struct.swsusp_info, %struct.swsusp_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_4__* (...) @init_utsname()
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strcmp(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %55

54:                                               ; preds = %43
  store i8* null, i8** %2, align 8
  br label %55

55:                                               ; preds = %54, %53, %42, %31, %20, %9
  %56 = load i8*, i8** %2, align 8
  ret i8* %56
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_4__* @init_utsname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
