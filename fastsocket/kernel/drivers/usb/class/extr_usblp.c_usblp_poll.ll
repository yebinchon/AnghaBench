; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usblp.c_usblp_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.usblp* }
%struct.usblp = type { i32, i64, i64, i64, i64, i32, i32 }
%struct.poll_table_struct = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @usblp_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usblp_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.usblp*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.usblp*, %struct.usblp** %9, align 8
  store %struct.usblp* %10, %struct.usblp** %7, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = load %struct.usblp*, %struct.usblp** %7, align 8
  %13 = getelementptr inbounds %struct.usblp, %struct.usblp* %12, i32 0, i32 6
  %14 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %15 = call i32 @poll_wait(%struct.file* %11, i32* %13, %struct.poll_table_struct* %14)
  %16 = load %struct.file*, %struct.file** %3, align 8
  %17 = load %struct.usblp*, %struct.usblp** %7, align 8
  %18 = getelementptr inbounds %struct.usblp, %struct.usblp* %17, i32 0, i32 5
  %19 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %20 = call i32 @poll_wait(%struct.file* %16, i32* %18, %struct.poll_table_struct* %19)
  %21 = load %struct.usblp*, %struct.usblp** %7, align 8
  %22 = getelementptr inbounds %struct.usblp, %struct.usblp* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.usblp*, %struct.usblp** %7, align 8
  %26 = getelementptr inbounds %struct.usblp, %struct.usblp* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.usblp*, %struct.usblp** %7, align 8
  %31 = getelementptr inbounds %struct.usblp, %struct.usblp* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @POLLIN, align 4
  %36 = load i32, i32* @POLLRDNORM, align 4
  %37 = or i32 %35, %36
  br label %39

38:                                               ; preds = %29, %2
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %37, %34 ], [ 0, %38 ]
  %41 = load %struct.usblp*, %struct.usblp** %7, align 8
  %42 = getelementptr inbounds %struct.usblp, %struct.usblp* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.usblp*, %struct.usblp** %7, align 8
  %47 = getelementptr inbounds %struct.usblp, %struct.usblp* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45, %39
  %51 = load i32, i32* @POLLOUT, align 4
  %52 = load i32, i32* @POLLWRNORM, align 4
  %53 = or i32 %51, %52
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %53, %50 ], [ 0, %54 ]
  %57 = or i32 %40, %56
  store i32 %57, i32* %5, align 4
  %58 = load %struct.usblp*, %struct.usblp** %7, align 8
  %59 = getelementptr inbounds %struct.usblp, %struct.usblp* %58, i32 0, i32 0
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
