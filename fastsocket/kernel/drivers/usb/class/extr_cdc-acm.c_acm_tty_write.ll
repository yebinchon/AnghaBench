; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.acm* }
%struct.acm = type { i32, i32, %struct.acm_wb* }
%struct.acm_wb = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Entering acm_tty_write to write %d bytes,\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Get %d bytes...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @acm_tty_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_tty_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.acm_wb*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load %struct.acm*, %struct.acm** %14, align 8
  store %struct.acm* %15, %struct.acm** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.acm*, %struct.acm** %8, align 8
  %19 = call i32 @ACM_READY(%struct.acm* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %86

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %86

28:                                               ; preds = %24
  %29 = load %struct.acm*, %struct.acm** %8, align 8
  %30 = getelementptr inbounds %struct.acm, %struct.acm* %29, i32 0, i32 1
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.acm*, %struct.acm** %8, align 8
  %34 = call i32 @acm_wb_alloc(%struct.acm* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.acm*, %struct.acm** %8, align 8
  %39 = getelementptr inbounds %struct.acm, %struct.acm* %38, i32 0, i32 1
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  store i32 0, i32* %4, align 4
  br label %86

42:                                               ; preds = %28
  %43 = load %struct.acm*, %struct.acm** %8, align 8
  %44 = getelementptr inbounds %struct.acm, %struct.acm* %43, i32 0, i32 2
  %45 = load %struct.acm_wb*, %struct.acm_wb** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %45, i64 %47
  store %struct.acm_wb* %48, %struct.acm_wb** %12, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.acm*, %struct.acm** %8, align 8
  %51 = getelementptr inbounds %struct.acm, %struct.acm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load %struct.acm*, %struct.acm** %8, align 8
  %56 = getelementptr inbounds %struct.acm, %struct.acm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  br label %60

58:                                               ; preds = %42
  %59 = load i32, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %57, %54 ], [ %59, %58 ]
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.acm_wb*, %struct.acm_wb** %12, align 8
  %65 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @memcpy(i32 %66, i8* %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.acm_wb*, %struct.acm_wb** %12, align 8
  %72 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.acm*, %struct.acm** %8, align 8
  %74 = getelementptr inbounds %struct.acm, %struct.acm* %73, i32 0, i32 1
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.acm*, %struct.acm** %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @acm_write_start(%struct.acm* %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %60
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %86

84:                                               ; preds = %60
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %82, %37, %27, %21
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @ACM_READY(%struct.acm*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @acm_wb_alloc(%struct.acm*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @acm_write_start(%struct.acm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
