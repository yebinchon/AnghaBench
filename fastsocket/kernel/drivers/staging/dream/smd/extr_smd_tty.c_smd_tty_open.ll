; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_tty.c_smd_tty_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_tty.c_smd_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smd_tty_info = type { i64, %struct.tty_struct*, i32, i32 }
%struct.tty_struct = type { i32, %struct.smd_tty_info* }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"SMD_DS\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SMD_GPSNMEA\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@smd_tty = common dso_local global %struct.smd_tty_info* null, align 8
@smd_tty_lock = common dso_local global i32 0, align 4
@WAKE_LOCK_SUSPEND = common dso_local global i32 0, align 4
@smd_tty_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @smd_tty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smd_tty_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smd_tty_info*, align 8
  %9 = alloca i8*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %24

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 27
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23, %15
  %25 = load %struct.smd_tty_info*, %struct.smd_tty_info** @smd_tty, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.smd_tty_info, %struct.smd_tty_info* %25, i64 %27
  store %struct.smd_tty_info* %28, %struct.smd_tty_info** %8, align 8
  %29 = call i32 @mutex_lock(i32* @smd_tty_lock)
  %30 = load %struct.smd_tty_info*, %struct.smd_tty_info** %8, align 8
  %31 = getelementptr inbounds %struct.smd_tty_info, %struct.smd_tty_info* %30, i32 0, i32 3
  %32 = load i32, i32* @WAKE_LOCK_SUSPEND, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @wake_lock_init(i32* %31, i32 %32, i8* %33)
  %35 = load %struct.smd_tty_info*, %struct.smd_tty_info** %8, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %37 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %36, i32 0, i32 1
  store %struct.smd_tty_info* %35, %struct.smd_tty_info** %37, align 8
  %38 = load %struct.smd_tty_info*, %struct.smd_tty_info** %8, align 8
  %39 = getelementptr inbounds %struct.smd_tty_info, %struct.smd_tty_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %24
  %44 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %45 = load %struct.smd_tty_info*, %struct.smd_tty_info** %8, align 8
  %46 = getelementptr inbounds %struct.smd_tty_info, %struct.smd_tty_info* %45, i32 0, i32 1
  store %struct.tty_struct* %44, %struct.tty_struct** %46, align 8
  %47 = load %struct.smd_tty_info*, %struct.smd_tty_info** %8, align 8
  %48 = getelementptr inbounds %struct.smd_tty_info, %struct.smd_tty_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.smd_tty_info*, %struct.smd_tty_info** %8, align 8
  %53 = getelementptr inbounds %struct.smd_tty_info, %struct.smd_tty_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @smd_kick(i64 %54)
  br label %63

56:                                               ; preds = %43
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.smd_tty_info*, %struct.smd_tty_info** %8, align 8
  %59 = getelementptr inbounds %struct.smd_tty_info, %struct.smd_tty_info* %58, i32 0, i32 0
  %60 = load %struct.smd_tty_info*, %struct.smd_tty_info** %8, align 8
  %61 = load i32, i32* @smd_tty_notify, align 4
  %62 = call i32 @smd_open(i8* %57, i64* %59, %struct.smd_tty_info* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %56, %51
  br label %64

64:                                               ; preds = %63, %24
  %65 = call i32 @mutex_unlock(i32* @smd_tty_lock)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_lock_init(i32*, i32, i8*) #1

declare dso_local i32 @smd_kick(i64) #1

declare dso_local i32 @smd_open(i8*, i64*, %struct.smd_tty_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
