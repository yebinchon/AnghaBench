; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_max_select_fd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_max_select_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.fdtable = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }

@__NFDBITS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*)* @max_select_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_select_fd(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fdtable*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* @__NFDBITS, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = and i64 %10, %13
  %15 = shl i64 -1, %14
  %16 = xor i64 %15, -1
  store i64 %16, i64* %7, align 8
  %17 = load i32, i32* @__NFDBITS, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %4, align 8
  %20 = udiv i64 %19, %18
  store i64 %20, i64* %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.fdtable* @files_fdtable(i32 %23)
  store %struct.fdtable* %24, %struct.fdtable** %9, align 8
  %25 = load %struct.fdtable*, %struct.fdtable** %9, align 8
  %26 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64* %31, i64** %6, align 8
  store i32 0, i32* %8, align 4
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %2
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @BITS(i32* %35, i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %34
  %43 = load i64, i64* %7, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = xor i64 %45, -1
  %47 = and i64 %43, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %84

50:                                               ; preds = %42
  %51 = load i32, i32* @EBADF, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %104

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %2
  br label %55

55:                                               ; preds = %93, %82, %68, %54
  %56 = load i64, i64* %4, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %55
  %59 = load i64*, i64** %6, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 -1
  store i64* %60, i64** %6, align 8
  %61 = load i64, i64* %4, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @BITS(i32* %63, i64 %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  br label %55

69:                                               ; preds = %58
  %70 = load i64, i64* %7, align 8
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %71, align 8
  %73 = xor i64 %72, -1
  %74 = and i64 %70, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EBADF, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %104

79:                                               ; preds = %69
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %55

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %49
  br label %85

85:                                               ; preds = %90, %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  %88 = load i64, i64* %7, align 8
  %89 = lshr i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %90

90:                                               ; preds = %85
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %85, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %4, align 8
  %95 = load i32, i32* @__NFDBITS, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %94, %96
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %8, align 4
  br label %55

102:                                              ; preds = %55
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %76, %50
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.fdtable* @files_fdtable(i32) #1

declare dso_local i64 @BITS(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
