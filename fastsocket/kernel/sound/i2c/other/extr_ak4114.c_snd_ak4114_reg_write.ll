; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4114.c_snd_ak4114_reg_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4114.c_snd_ak4114_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4114 = type { i8*, i8* }

@AK4114_REG_INT1_MASK = common dso_local global i8 0, align 1
@AK4114_REG_TXCSB0 = common dso_local global i8 0, align 1
@AK4114_REG_TXCSB4 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_ak4114_reg_write(%struct.ak4114* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.ak4114*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.ak4114* %0, %struct.ak4114** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %9 = load i8, i8* %6, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @AK4114_REG_INT1_MASK, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sle i32 %10, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load %struct.ak4114*, %struct.ak4114** %5, align 8
  %16 = load i8, i8* %6, align 1
  %17 = load %struct.ak4114*, %struct.ak4114** %5, align 8
  %18 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %26, -1
  %28 = and i32 %24, %27
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %28, %30
  %32 = trunc i32 %31 to i8
  %33 = call i32 @reg_write(%struct.ak4114* %15, i8 zeroext %16, i8 zeroext %32)
  br label %71

34:                                               ; preds = %4
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @AK4114_REG_TXCSB0, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sge i32 %36, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %34
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @AK4114_REG_TXCSB4, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sle i32 %42, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load %struct.ak4114*, %struct.ak4114** %5, align 8
  %48 = load i8, i8* %6, align 1
  %49 = load %struct.ak4114*, %struct.ak4114** %5, align 8
  %50 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @AK4114_REG_TXCSB0, align 1
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %51, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %7, align 1
  %62 = zext i8 %61 to i32
  %63 = xor i32 %62, -1
  %64 = and i32 %60, %63
  %65 = load i8, i8* %8, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %64, %66
  %68 = trunc i32 %67 to i8
  %69 = call i32 @reg_write(%struct.ak4114* %47, i8 zeroext %48, i8 zeroext %68)
  br label %70

70:                                               ; preds = %46, %40, %34
  br label %71

71:                                               ; preds = %70, %14
  ret void
}

declare dso_local i32 @reg_write(%struct.ak4114*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
