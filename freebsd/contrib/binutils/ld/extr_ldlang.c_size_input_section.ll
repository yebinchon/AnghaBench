; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_size_input_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_size_input_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32 }

@SEC_EXCLUDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__**, %struct.TYPE_13__*, i32*, i32)* @size_input_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @size_input_section(%struct.TYPE_12__** %0, %struct.TYPE_13__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %9, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %10, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_14__*
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %106, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SEC_EXCLUDE, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %106

35:                                               ; preds = %28
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %12, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %46
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @align_power(i32 %64, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = sub i32 %68, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %63
  %74 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @TO_SIZE(i32 %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @insert_pad(%struct.TYPE_12__** %74, i32* %75, i32 %77, %struct.TYPE_16__* %78, i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %73, %63
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = sub i32 %85, %88
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @TO_ADDR(i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sub i32 %98, %101
  %103 = call i32 @TO_SIZE(i32 %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  br label %118

106:                                              ; preds = %28, %4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = sub i32 %109, %114
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %106, %84
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local i32 @align_power(i32, i32) #1

declare dso_local i32 @insert_pad(%struct.TYPE_12__**, i32*, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @TO_SIZE(i32) #1

declare dso_local i32 @TO_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
