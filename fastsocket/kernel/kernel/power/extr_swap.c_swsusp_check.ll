; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_swap.c_swsusp_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_swap.c_swsusp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@swsusp_resume_device = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@resume_bdev = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@swsusp_header = common dso_local global %struct.TYPE_5__* null, align 8
@swsusp_resume_block = common dso_local global i32 0, align 4
@SWSUSP_SIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PM: Signature found, resuming\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"PM: Error %d checking image file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swsusp_check() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @swsusp_resume_device, align 4
  %3 = load i32, i32* @FMODE_READ, align 4
  %4 = call i32 @open_by_devnum(i32 %2, i32 %3)
  store i32 %4, i32* @resume_bdev, align 4
  %5 = load i32, i32* @resume_bdev, align 4
  %6 = call i32 @IS_ERR(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @resume_bdev, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = call i32 @set_blocksize(i32 %9, i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swsusp_header, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = call i32 @memset(%struct.TYPE_5__* %12, i32 0, i32 %13)
  %15 = load i32, i32* @swsusp_resume_block, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swsusp_header, align 8
  %17 = call i32 @bio_read_page(i32 %15, %struct.TYPE_5__* %16, i32* null)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  br label %43

21:                                               ; preds = %8
  %22 = load i32, i32* @SWSUSP_SIG, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swsusp_header, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcmp(i32 %22, i32 %25, i32 10)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swsusp_header, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swsusp_header, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %31, i32 %34, i32 10)
  %36 = load i32, i32* @swsusp_resume_block, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @swsusp_header, align 8
  %38 = call i32 @bio_write_page(i32 %36, %struct.TYPE_5__* %37, i32* null)
  store i32 %38, i32* %1, align 4
  br label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %39, %28
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i32, i32* %1, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @resume_bdev, align 4
  %48 = load i32, i32* @FMODE_READ, align 4
  %49 = call i32 @blkdev_put(i32 %47, i32 %48)
  br label %52

50:                                               ; preds = %43
  %51 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  br label %56

53:                                               ; preds = %0
  %54 = load i32, i32* @resume_bdev, align 4
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i32, i32* %1, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %1, align 4
  %61 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @open_by_devnum(i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @set_blocksize(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @bio_read_page(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bio_write_page(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @blkdev_put(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
