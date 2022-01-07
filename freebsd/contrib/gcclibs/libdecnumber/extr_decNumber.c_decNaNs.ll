; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decNaNs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decNaNs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }

@DECSNAN = common dso_local global i32 0, align 4
@DEC_Invalid_operation = common dso_local global i32 0, align 4
@DEC_sNaN = common dso_local global i32 0, align 4
@DECNAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*)* @decNaNs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @decNaNs(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DECSNAN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i32, i32* @DEC_Invalid_operation, align 4
  %17 = load i32, i32* @DEC_sNaN, align 4
  %18 = or i32 %16, %17
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %54

22:                                               ; preds = %4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %53

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DECSNAN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %6, align 8
  %35 = load i32, i32* @DEC_Invalid_operation, align 4
  %36 = load i32, i32* @DEC_sNaN, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %52

41:                                               ; preds = %26
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DECNAN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %51

49:                                               ; preds = %41
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %6, align 8
  br label %51

51:                                               ; preds = %49, %48
  br label %52

52:                                               ; preds = %51, %33
  br label %53

53:                                               ; preds = %52, %25
  br label %54

54:                                               ; preds = %53, %15
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = call i32 @decNumberCopy(%struct.TYPE_8__* %55, %struct.TYPE_8__* %56)
  %58 = load i32, i32* @DECSNAN, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @DECNAN, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %71
}

declare dso_local i32 @decNumberCopy(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
