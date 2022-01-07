; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4114.c_ak4114_init_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4114.c_ak4114_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4114 = type { i8*, i8* }

@AK4114_REG_PWRDN = common dso_local global i64 0, align 8
@AK4114_RST = common dso_local global i8 0, align 1
@AK4114_PWN = common dso_local global i8 0, align 1
@AK4114_REG_TXCSB0 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ak4114*)* @ak4114_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ak4114_init_regs(%struct.ak4114* %0) #0 {
  %2 = alloca %struct.ak4114*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store %struct.ak4114* %0, %struct.ak4114** %2, align 8
  %5 = load %struct.ak4114*, %struct.ak4114** %2, align 8
  %6 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* @AK4114_REG_PWRDN, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %3, align 1
  %11 = load %struct.ak4114*, %struct.ak4114** %2, align 8
  %12 = load i64, i64* @AK4114_REG_PWRDN, align 8
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @AK4114_RST, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @AK4114_PWN, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %16, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %14, %20
  %22 = trunc i32 %21 to i8
  %23 = call i32 @reg_write(%struct.ak4114* %11, i64 %12, i8 zeroext %22)
  %24 = call i32 @udelay(i32 200)
  %25 = load %struct.ak4114*, %struct.ak4114** %2, align 8
  %26 = load i64, i64* @AK4114_REG_PWRDN, align 8
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @AK4114_RST, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %28, %30
  %32 = load i8, i8* @AK4114_PWN, align 1
  %33 = zext i8 %32 to i32
  %34 = xor i32 %33, -1
  %35 = and i32 %31, %34
  %36 = trunc i32 %35 to i8
  %37 = call i32 @reg_write(%struct.ak4114* %25, i64 %26, i8 zeroext %36)
  %38 = call i32 @udelay(i32 200)
  store i8 1, i8* %4, align 1
  br label %39

39:                                               ; preds = %55, %1
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp slt i32 %41, 7
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load %struct.ak4114*, %struct.ak4114** %2, align 8
  %45 = load i8, i8* %4, align 1
  %46 = zext i8 %45 to i64
  %47 = load %struct.ak4114*, %struct.ak4114** %2, align 8
  %48 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %4, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @reg_write(%struct.ak4114* %44, i64 %46, i8 zeroext %53)
  br label %55

55:                                               ; preds = %43
  %56 = load i8, i8* %4, align 1
  %57 = add i8 %56, 1
  store i8 %57, i8* %4, align 1
  br label %39

58:                                               ; preds = %39
  store i8 0, i8* %4, align 1
  br label %59

59:                                               ; preds = %79, %58
  %60 = load i8, i8* %4, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp slt i32 %61, 5
  br i1 %62, label %63, label %82

63:                                               ; preds = %59
  %64 = load %struct.ak4114*, %struct.ak4114** %2, align 8
  %65 = load i8, i8* %4, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @AK4114_REG_TXCSB0, align 1
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %66, %68
  %70 = sext i32 %69 to i64
  %71 = load %struct.ak4114*, %struct.ak4114** %2, align 8
  %72 = getelementptr inbounds %struct.ak4114, %struct.ak4114* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i8, i8* %4, align 1
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @reg_write(%struct.ak4114* %64, i64 %70, i8 zeroext %77)
  br label %79

79:                                               ; preds = %63
  %80 = load i8, i8* %4, align 1
  %81 = add i8 %80, 1
  store i8 %81, i8* %4, align 1
  br label %59

82:                                               ; preds = %59
  %83 = load %struct.ak4114*, %struct.ak4114** %2, align 8
  %84 = load i64, i64* @AK4114_REG_PWRDN, align 8
  %85 = load i8, i8* %3, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @AK4114_RST, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %86, %88
  %90 = load i8, i8* @AK4114_PWN, align 1
  %91 = zext i8 %90 to i32
  %92 = or i32 %89, %91
  %93 = trunc i32 %92 to i8
  %94 = call i32 @reg_write(%struct.ak4114* %83, i64 %84, i8 zeroext %93)
  ret void
}

declare dso_local i32 @reg_write(%struct.ak4114*, i64, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
