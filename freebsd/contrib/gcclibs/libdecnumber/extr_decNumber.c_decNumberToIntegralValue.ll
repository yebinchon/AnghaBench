; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decNumberToIntegralValue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decNumberToIntegralValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i64, i32 }
%struct.TYPE_25__ = type { i64, i32 }

@DECSPECIAL = common dso_local global i32 0, align 4
@DECUNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @decNumberToIntegralValue(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__, align 8
  %9 = alloca %struct.TYPE_25__, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DECSPECIAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %19 = call i64 @decNumberIsInfinite(%struct.TYPE_24__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %24 = call %struct.TYPE_24__* @decNumberCopy(%struct.TYPE_24__* %22, %struct.TYPE_24__* %23)
  br label %29

25:                                               ; preds = %17
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %28 = call i32 @decNaNs(%struct.TYPE_24__* %26, %struct.TYPE_24__* %27, i32* null, i64* %10)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %36 = call i32 @decStatus(%struct.TYPE_24__* %33, i64 %34, %struct.TYPE_25__* %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %4, align 8
  br label %61

39:                                               ; preds = %3
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %47 = call %struct.TYPE_24__* @decNumberCopy(%struct.TYPE_24__* %45, %struct.TYPE_24__* %46)
  store %struct.TYPE_24__* %47, %struct.TYPE_24__** %4, align 8
  br label %61

48:                                               ; preds = %39
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %50 = bitcast %struct.TYPE_25__* %9 to i8*
  %51 = bitcast %struct.TYPE_25__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = call i32 @decNumberZero(%struct.TYPE_24__* %8)
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %60 = call %struct.TYPE_24__* @decNumberQuantize(%struct.TYPE_24__* %58, %struct.TYPE_24__* %59, %struct.TYPE_24__* %8, %struct.TYPE_25__* %9)
  store %struct.TYPE_24__* %60, %struct.TYPE_24__** %4, align 8
  br label %61

61:                                               ; preds = %48, %44, %37
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  ret %struct.TYPE_24__* %62
}

declare dso_local i64 @decNumberIsInfinite(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @decNumberCopy(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @decNaNs(%struct.TYPE_24__*, %struct.TYPE_24__*, i32*, i64*) #1

declare dso_local i32 @decStatus(%struct.TYPE_24__*, i64, %struct.TYPE_25__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @decNumberZero(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @decNumberQuantize(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
