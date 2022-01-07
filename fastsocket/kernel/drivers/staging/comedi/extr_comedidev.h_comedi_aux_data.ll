; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedidev.h_comedi_aux_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedidev.h_comedi_aux_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMEDI_DEVCONF_AUX_DATA_HI = common dso_local global i64 0, align 8
@COMEDI_DEVCONF_AUX_DATA_LO = common dso_local global i64 0, align 8
@COMEDI_DEVCONF_AUX_DATA0_LENGTH = common dso_local global i64 0, align 8
@COMEDI_DEVCONF_AUX_DATA1_LENGTH = common dso_local global i64 0, align 8
@COMEDI_DEVCONF_AUX_DATA2_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32)* @comedi_aux_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @comedi_aux_data(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i64, i64* @COMEDI_DEVCONF_AUX_DATA_HI, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  store i32 32, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i64, i64* %5, align 8
  %15 = zext i32 %13 to i64
  %16 = shl i64 %14, %15
  store i64 %16, i64* %5, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i64, i64* @COMEDI_DEVCONF_AUX_DATA_LO, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = shl i64 1, %23
  %25 = sub i64 %24, 1
  %26 = load i64, i64* %6, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* @COMEDI_DEVCONF_AUX_DATA0_LENGTH, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %33, %2
  %42 = load i32, i32* %4, align 4
  %43 = icmp sge i32 %42, 2
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32*, i32** %3, align 8
  %46 = load i64, i64* @COMEDI_DEVCONF_AUX_DATA1_LENGTH, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %44, %41
  %53 = load i32, i32* %4, align 4
  %54 = icmp sge i32 %53, 3
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32*, i32** %3, align 8
  %57 = load i64, i64* @COMEDI_DEVCONF_AUX_DATA2_LENGTH, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %55, %52
  %64 = load i32, i32* %4, align 4
  %65 = icmp sgt i32 %64, 3
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i64, i64* %5, align 8
  %69 = inttoptr i64 %68 to i8*
  ret i8* %69
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
