; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_set_decoderduration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_set_decoderduration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i32* }

@DISP_AB_CNT = common dso_local global i32 0, align 4
@VDEC_A = common dso_local global i32 0, align 4
@DISP_CD_CNT = common dso_local global i32 0, align 4
@DISP_EF_CNT = common dso_local global i32 0, align 4
@DISP_GH_CNT = common dso_local global i32 0, align 4
@_display_field_cnt = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx25821_dev*, i32, i32)* @medusa_set_decoderduration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @medusa_set_decoderduration(%struct.cx25821_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cx25821_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @DISP_AB_CNT, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %13 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @VDEC_A, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 128
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %23 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  br label %73

25:                                               ; preds = %18, %3
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %27 [
    i32 133, label %28
    i32 132, label %28
    i32 131, label %30
    i32 130, label %30
    i32 129, label %32
    i32 128, label %32
  ]

27:                                               ; preds = %25
  br label %34

28:                                               ; preds = %25, %25
  %29 = load i32, i32* @DISP_CD_CNT, align 4
  store i32 %29, i32* %10, align 4
  br label %34

30:                                               ; preds = %25, %25
  %31 = load i32, i32* @DISP_EF_CNT, align 4
  store i32 %31, i32* %10, align 4
  br label %34

32:                                               ; preds = %25, %25
  %33 = load i32, i32* @DISP_GH_CNT, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %30, %28, %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** @_display_field_cnt, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %41 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @cx25821_i2c_read(i32* %43, i32 %44, i32* %9)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = srem i32 %46, 2
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, -65536
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %62

55:                                               ; preds = %34
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 65535
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %58, 16
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %55, %49
  %63 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %64 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @cx25821_i2c_write(i32* %66, i32 %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %71 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  br label %73

73:                                               ; preds = %62, %21
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cx25821_i2c_read(i32*, i32, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
