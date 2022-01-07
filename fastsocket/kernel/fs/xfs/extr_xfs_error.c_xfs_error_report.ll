; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_error.c_xfs_error_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_error.c_xfs_error_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }

@xfs_error_level = common dso_local global i32 0, align 4
@XFS_PTAG_ERROR_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Internal error %s at line %d of file %s.  Caller 0x%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_error_report(i8* %0, i32 %1, %struct.xfs_mount* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_mount*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.xfs_mount* %2, %struct.xfs_mount** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @xfs_error_level, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %6
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %18 = load i32, i32* @XFS_PTAG_ERROR_REPORT, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 @xfs_alert_tag(%struct.xfs_mount* %17, i32 %18, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20, i8* %21, i32* %22)
  %24 = call i32 (...) @xfs_stack_trace()
  br label %25

25:                                               ; preds = %16, %6
  ret void
}

declare dso_local i32 @xfs_alert_tag(%struct.xfs_mount*, i32, i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @xfs_stack_trace(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
