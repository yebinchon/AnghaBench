; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_pointerize_aux.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_pointerize_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_18__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64 (i32*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, %struct.TYPE_26__*)* }

@C_STAT = common dso_local global i32 0, align 4
@T_NULL = common dso_local global i32 0, align 4
@C_FILE = common dso_local global i32 0, align 4
@C_BLOCK = common dso_local global i32 0, align 4
@C_FCN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, %struct.TYPE_26__*)* @coff_pointerize_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coff_pointerize_aux(i32* %0, %struct.TYPE_26__* %1, %struct.TYPE_26__* %2, i32 %3, %struct.TYPE_26__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_26__* %4, %struct.TYPE_26__** %10, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call %struct.TYPE_17__* @coff_backend_info(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64 (i32*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, %struct.TYPE_26__*)*, i64 (i32*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, %struct.TYPE_26__*)** %25, align 8
  %27 = icmp ne i64 (i32*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, %struct.TYPE_26__*)* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %5
  %29 = load i32*, i32** %6, align 8
  %30 = call %struct.TYPE_17__* @coff_backend_info(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64 (i32*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, %struct.TYPE_26__*)*, i64 (i32*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, %struct.TYPE_26__*)** %31, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %38 = call i64 %32(i32* %33, %struct.TYPE_26__* %34, %struct.TYPE_26__* %35, i32 %36, %struct.TYPE_26__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %132

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %5
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @C_STAT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @T_NULL, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %132

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @C_FILE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %132

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @ISFCN(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @ISTAG(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @C_BLOCK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @C_FCN, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %68, %64, %60, %56
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %72
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i64 %93
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  store %struct.TYPE_26__* %94, %struct.TYPE_26__** %102, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %83, %72, %68
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %105
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i64 %122
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  store %struct.TYPE_26__* %123, %struct.TYPE_26__** %129, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %40, %50, %55, %114, %105
  ret void
}

declare dso_local %struct.TYPE_17__* @coff_backend_info(i32*) #1

declare dso_local i64 @ISFCN(i32) #1

declare dso_local i64 @ISTAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
