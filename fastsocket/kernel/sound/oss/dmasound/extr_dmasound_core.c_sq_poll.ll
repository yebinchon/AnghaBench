; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/dmasound/extr_dmasound_core.c_sq_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/dmasound/extr_dmasound_core.c_sq_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i32 }
%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }

@write_sq = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @sq_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sq_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @write_sq, i32 0, i32 0), align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = call i32 @sq_setup(%struct.TYPE_3__* @write_sq)
  store i32 %11, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %52

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FMODE_WRITE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %26 = call i32 @poll_wait(%struct.file* %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @write_sq, i32 0, i32 5), %struct.poll_table_struct* %25)
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FMODE_WRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @write_sq, i32 0, i32 1), align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @write_sq, i32 0, i32 2), align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @write_sq, i32 0, i32 3), align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @write_sq, i32 0, i32 4), align 8
  %41 = sub nsw i64 %39, %40
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38, %34
  %44 = load i32, i32* @POLLOUT, align 4
  %45 = load i32, i32* @POLLWRNORM, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %43, %38
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %15, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @sq_setup(%struct.TYPE_3__*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
