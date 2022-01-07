; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_sysfs_showattr_LINK.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_sysfs_showattr_LINK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cxacru_sysfs_showattr_LINK.str = internal global [4 x i8*] [i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [14 x i8] c"not connected\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lost\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @cxacru_sysfs_showattr_LINK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxacru_sysfs_showattr_LINK(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @cxacru_sysfs_showattr_LINK.str, i64 0, i64 0))
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds [4 x i8*], [4 x i8*]* @cxacru_sysfs_showattr_LINK.str, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ true, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i64, i64* %4, align 8
  %23 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %22)
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %14
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* @cxacru_sysfs_showattr_LINK.str, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %19
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
