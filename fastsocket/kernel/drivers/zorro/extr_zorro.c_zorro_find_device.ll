; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/zorro/extr_zorro.c_zorro_find_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/zorro/extr_zorro.c_zorro_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zorro_dev = type { i64 }

@MACH_IS_AMIGA = common dso_local global i32 0, align 4
@ZORRO = common dso_local global i32 0, align 4
@zorro_autocon = common dso_local global %struct.zorro_dev* null, align 8
@zorro_num_autocon = common dso_local global i32 0, align 4
@ZORRO_WILDCARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zorro_dev* @zorro_find_device(i64 %0, %struct.zorro_dev* %1) #0 {
  %3 = alloca %struct.zorro_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zorro_dev*, align 8
  %6 = alloca %struct.zorro_dev*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.zorro_dev* %1, %struct.zorro_dev** %5, align 8
  %7 = load i32, i32* @MACH_IS_AMIGA, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @ZORRO, align 4
  %11 = call i32 @AMIGAHW_PRESENT(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %2
  store %struct.zorro_dev* null, %struct.zorro_dev** %3, align 8
  br label %49

14:                                               ; preds = %9
  %15 = load %struct.zorro_dev*, %struct.zorro_dev** %5, align 8
  %16 = icmp ne %struct.zorro_dev* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.zorro_dev*, %struct.zorro_dev** %5, align 8
  %19 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %18, i64 1
  br label %23

20:                                               ; preds = %14
  %21 = load %struct.zorro_dev*, %struct.zorro_dev** @zorro_autocon, align 8
  %22 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %21, i64 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi %struct.zorro_dev* [ %19, %17 ], [ %22, %20 ]
  store %struct.zorro_dev* %24, %struct.zorro_dev** %6, align 8
  br label %25

25:                                               ; preds = %45, %23
  %26 = load %struct.zorro_dev*, %struct.zorro_dev** %6, align 8
  %27 = load %struct.zorro_dev*, %struct.zorro_dev** @zorro_autocon, align 8
  %28 = load i32, i32* @zorro_num_autocon, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %27, i64 %29
  %31 = icmp ult %struct.zorro_dev* %26, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @ZORRO_WILDCARD, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.zorro_dev*, %struct.zorro_dev** %6, align 8
  %39 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36, %32
  %43 = load %struct.zorro_dev*, %struct.zorro_dev** %6, align 8
  store %struct.zorro_dev* %43, %struct.zorro_dev** %3, align 8
  br label %49

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.zorro_dev*, %struct.zorro_dev** %6, align 8
  %47 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %46, i32 1
  store %struct.zorro_dev* %47, %struct.zorro_dev** %6, align 8
  br label %25

48:                                               ; preds = %25
  store %struct.zorro_dev* null, %struct.zorro_dev** %3, align 8
  br label %49

49:                                               ; preds = %48, %42, %13
  %50 = load %struct.zorro_dev*, %struct.zorro_dev** %3, align 8
  ret %struct.zorro_dev* %50
}

declare dso_local i32 @AMIGAHW_PRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
