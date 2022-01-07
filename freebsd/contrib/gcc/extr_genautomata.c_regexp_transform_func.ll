; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_regexp_transform_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_regexp_transform_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_22__** }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__** }
%struct.TYPE_20__ = type { i32, %struct.TYPE_22__** }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_22__*, %struct.TYPE_22__* (%struct.TYPE_22__*)*)* @regexp_transform_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @regexp_transform_func(%struct.TYPE_22__* %0, %struct.TYPE_22__* (%struct.TYPE_22__*)* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_22__* (%struct.TYPE_22__*)*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_22__* (%struct.TYPE_22__*)* %1, %struct.TYPE_22__* (%struct.TYPE_22__*)** %4, align 8
  %6 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %110 [
    i32 129, label %9
    i32 133, label %39
    i32 131, label %69
    i32 130, label %99
    i32 132, label %109
    i32 128, label %109
  ]

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %35, %9
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %13 = call %struct.TYPE_18__* @REGEXP_SEQUENCE(%struct.TYPE_22__* %12)
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %10
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = call %struct.TYPE_18__* @REGEXP_SEQUENCE(%struct.TYPE_22__* %18)
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %21, i64 %23
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %26 = load %struct.TYPE_22__* (%struct.TYPE_22__*)*, %struct.TYPE_22__* (%struct.TYPE_22__*)** %4, align 8
  %27 = call %struct.TYPE_22__* @regexp_transform_func(%struct.TYPE_22__* %25, %struct.TYPE_22__* (%struct.TYPE_22__*)* %26)
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = call %struct.TYPE_18__* @REGEXP_SEQUENCE(%struct.TYPE_22__* %28)
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %31, i64 %33
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %34, align 8
  br label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %10

38:                                               ; preds = %10
  br label %112

39:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %65, %39
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %43 = call %struct.TYPE_21__* @REGEXP_ALLOF(%struct.TYPE_22__* %42)
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %49 = call %struct.TYPE_21__* @REGEXP_ALLOF(%struct.TYPE_22__* %48)
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %51, i64 %53
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  %56 = load %struct.TYPE_22__* (%struct.TYPE_22__*)*, %struct.TYPE_22__* (%struct.TYPE_22__*)** %4, align 8
  %57 = call %struct.TYPE_22__* @regexp_transform_func(%struct.TYPE_22__* %55, %struct.TYPE_22__* (%struct.TYPE_22__*)* %56)
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %59 = call %struct.TYPE_21__* @REGEXP_ALLOF(%struct.TYPE_22__* %58)
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %61, i64 %63
  store %struct.TYPE_22__* %57, %struct.TYPE_22__** %64, align 8
  br label %65

65:                                               ; preds = %47
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %40

68:                                               ; preds = %40
  br label %112

69:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %95, %69
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %73 = call %struct.TYPE_20__* @REGEXP_ONEOF(%struct.TYPE_22__* %72)
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %71, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %70
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %79 = call %struct.TYPE_20__* @REGEXP_ONEOF(%struct.TYPE_22__* %78)
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %81, i64 %83
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = load %struct.TYPE_22__* (%struct.TYPE_22__*)*, %struct.TYPE_22__* (%struct.TYPE_22__*)** %4, align 8
  %87 = call %struct.TYPE_22__* @regexp_transform_func(%struct.TYPE_22__* %85, %struct.TYPE_22__* (%struct.TYPE_22__*)* %86)
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %89 = call %struct.TYPE_20__* @REGEXP_ONEOF(%struct.TYPE_22__* %88)
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %91, i64 %93
  store %struct.TYPE_22__* %87, %struct.TYPE_22__** %94, align 8
  br label %95

95:                                               ; preds = %77
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %70

98:                                               ; preds = %70
  br label %112

99:                                               ; preds = %2
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %101 = call %struct.TYPE_19__* @REGEXP_REPEAT(%struct.TYPE_22__* %100)
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  %104 = load %struct.TYPE_22__* (%struct.TYPE_22__*)*, %struct.TYPE_22__* (%struct.TYPE_22__*)** %4, align 8
  %105 = call %struct.TYPE_22__* @regexp_transform_func(%struct.TYPE_22__* %103, %struct.TYPE_22__* (%struct.TYPE_22__*)* %104)
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %107 = call %struct.TYPE_19__* @REGEXP_REPEAT(%struct.TYPE_22__* %106)
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  store %struct.TYPE_22__* %105, %struct.TYPE_22__** %108, align 8
  br label %112

109:                                              ; preds = %2, %2
  br label %112

110:                                              ; preds = %2
  %111 = call i32 (...) @gcc_unreachable()
  br label %112

112:                                              ; preds = %110, %109, %99, %98, %68, %38
  %113 = load %struct.TYPE_22__* (%struct.TYPE_22__*)*, %struct.TYPE_22__* (%struct.TYPE_22__*)** %4, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %115 = call %struct.TYPE_22__* %113(%struct.TYPE_22__* %114)
  ret %struct.TYPE_22__* %115
}

declare dso_local %struct.TYPE_18__* @REGEXP_SEQUENCE(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @REGEXP_ALLOF(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_20__* @REGEXP_ONEOF(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_19__* @REGEXP_REPEAT(%struct.TYPE_22__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
