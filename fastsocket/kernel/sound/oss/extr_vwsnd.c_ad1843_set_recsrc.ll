; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_ad1843_set_recsrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_ad1843_set_recsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ad1843_LSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"enabling digital resample mode\0A\00", align 1
@ad1843_DAADL = common dso_local global i32 0, align 4
@ad1843_DAADR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"disabling digital resample mode\0A\00", align 1
@ad1843_RSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ad1843_set_recsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1843_set_recsrc(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %13 [
    i32 128, label %9
    i32 129, label %10
    i32 130, label %11
    i32 131, label %12
  ]

9:                                                ; preds = %2
  store i32 6, i32* %6, align 4
  br label %16

10:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %16

11:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  br label %16

12:                                               ; preds = %2
  store i32 3, i32* %6, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %12, %11, %10, %9
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @ad1843_read_bits(i32* %17, i32* @ad1843_LSS)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 128
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 6
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = call i32 @DBGP(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @ad1843_set_resample_mode(i32* %26, i32 1)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @ad1843_write_multi(i32* %28, i32 2, i32* @ad1843_DAADL, i32 2, i32* @ad1843_DAADR, i32 2)
  br label %43

30:                                               ; preds = %21, %16
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 128
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 6
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = call i32 @DBGP(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @ad1843_set_resample_mode(i32* %38, i32 0)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @ad1843_write_multi(i32* %40, i32 2, i32* @ad1843_DAADL, i32 0, i32* @ad1843_DAADR, i32 0)
  br label %42

42:                                               ; preds = %36, %33, %30
  br label %43

43:                                               ; preds = %42, %24
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ad1843_write_multi(i32* %44, i32 2, i32* @ad1843_LSS, i32 %45, i32* @ad1843_RSS, i32 %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ad1843_read_bits(i32*, i32*) #1

declare dso_local i32 @DBGP(i8*) #1

declare dso_local i32 @ad1843_set_resample_mode(i32*, i32) #1

declare dso_local i32 @ad1843_write_multi(i32*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
