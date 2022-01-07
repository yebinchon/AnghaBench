; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_symbol_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_symbol_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aout_symbol = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @b_out_symbol_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b_out_symbol_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aout_symbol**, align 8
  %7 = alloca %struct.aout_symbol**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.aout_symbol**
  store %struct.aout_symbol** %12, %struct.aout_symbol*** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.aout_symbol**
  store %struct.aout_symbol** %14, %struct.aout_symbol*** %7, align 8
  %15 = load %struct.aout_symbol**, %struct.aout_symbol*** %6, align 8
  %16 = load %struct.aout_symbol*, %struct.aout_symbol** %15, align 8
  %17 = getelementptr inbounds %struct.aout_symbol, %struct.aout_symbol* %16, i32 0, i32 1
  %18 = call %struct.TYPE_6__* @bfd_get_section(%struct.TYPE_7__* %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %8, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.aout_symbol**, %struct.aout_symbol*** %6, align 8
  %29 = load %struct.aout_symbol*, %struct.aout_symbol** %28, align 8
  %30 = getelementptr inbounds %struct.aout_symbol, %struct.aout_symbol* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %27, %32
  store i64 %33, i64* %9, align 8
  %34 = load %struct.aout_symbol**, %struct.aout_symbol*** %7, align 8
  %35 = load %struct.aout_symbol*, %struct.aout_symbol** %34, align 8
  %36 = getelementptr inbounds %struct.aout_symbol, %struct.aout_symbol* %35, i32 0, i32 1
  %37 = call %struct.TYPE_6__* @bfd_get_section(%struct.TYPE_7__* %36)
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %8, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.aout_symbol**, %struct.aout_symbol*** %7, align 8
  %48 = load %struct.aout_symbol*, %struct.aout_symbol** %47, align 8
  %49 = getelementptr inbounds %struct.aout_symbol, %struct.aout_symbol* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %46, %51
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %93

57:                                               ; preds = %2
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %93

62:                                               ; preds = %57
  %63 = load %struct.aout_symbol**, %struct.aout_symbol*** %6, align 8
  %64 = load %struct.aout_symbol*, %struct.aout_symbol** %63, align 8
  %65 = getelementptr inbounds %struct.aout_symbol, %struct.aout_symbol* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @IS_BALNAME(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load %struct.aout_symbol**, %struct.aout_symbol*** %7, align 8
  %71 = load %struct.aout_symbol*, %struct.aout_symbol** %70, align 8
  %72 = getelementptr inbounds %struct.aout_symbol, %struct.aout_symbol* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_CALLNAME(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69, %62
  store i32 -1, i32* %3, align 4
  br label %93

77:                                               ; preds = %69
  %78 = load %struct.aout_symbol**, %struct.aout_symbol*** %6, align 8
  %79 = load %struct.aout_symbol*, %struct.aout_symbol** %78, align 8
  %80 = getelementptr inbounds %struct.aout_symbol, %struct.aout_symbol* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @IS_CALLNAME(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %77
  %85 = load %struct.aout_symbol**, %struct.aout_symbol*** %7, align 8
  %86 = load %struct.aout_symbol*, %struct.aout_symbol** %85, align 8
  %87 = getelementptr inbounds %struct.aout_symbol, %struct.aout_symbol* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @IS_BALNAME(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84, %77
  store i32 1, i32* %3, align 4
  br label %93

92:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %91, %76, %61, %56
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_6__* @bfd_get_section(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_BALNAME(i32) #1

declare dso_local i64 @IS_CALLNAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
