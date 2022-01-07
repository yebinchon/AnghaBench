; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4114.c_reg_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4114.c_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4114 = type { i8*, i8*, i32, i32 (i32, i8, i8)* }

@AK4114_REG_INT1_MASK = common dso_local global i8 0, align 1
@AK4114_REG_TXCSB0 = common dso_local global i8 0, align 1
@AK4114_REG_TXCSB4 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ak4114*, i8, i8)* @reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_write(%struct.ak4114* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.ak4114*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.ak4114* %0, %struct.ak4114** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load %struct.ak4114*, %struct.ak4114** %4, align 8
  %8 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %7, i32 0, i32 3
  %9 = load i32 (i32, i8, i8)*, i32 (i32, i8, i8)** %8, align 8
  %10 = load %struct.ak4114*, %struct.ak4114** %4, align 8
  %11 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i8, i8* %5, align 1
  %14 = load i8, i8* %6, align 1
  %15 = call i32 %9(i32 %12, i8 zeroext %13, i8 zeroext %14)
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @AK4114_REG_INT1_MASK, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sle i32 %17, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i8, i8* %6, align 1
  %23 = load %struct.ak4114*, %struct.ak4114** %4, align 8
  %24 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 %22, i8* %28, align 1
  br label %54

29:                                               ; preds = %3
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @AK4114_REG_TXCSB0, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp sge i32 %31, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @AK4114_REG_TXCSB4, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp sle i32 %37, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load i8, i8* %6, align 1
  %43 = load %struct.ak4114*, %struct.ak4114** %4, align 8
  %44 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %5, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @AK4114_REG_TXCSB0, align 1
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 %47, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %45, i64 %51
  store i8 %42, i8* %52, align 1
  br label %53

53:                                               ; preds = %41, %35, %29
  br label %54

54:                                               ; preds = %53, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
