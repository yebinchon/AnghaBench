; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_write_res_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resres.c_write_res_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i64, %struct.TYPE_13__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"// Resource at unexpected level %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32*, i32)* @write_res_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_res_directory(i32* %0, i32 %1, %struct.TYPE_15__* %2, %struct.TYPE_13__* %3, %struct.TYPE_13__* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %15, align 8
  br label %19

19:                                               ; preds = %116, %7
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %120

22:                                               ; preds = %19
  %23 = load i32, i32* %14, align 4
  switch i32 %23, label %68 [
    i32 1, label %24
    i32 2, label %27
    i32 3, label %30
  ]

24:                                               ; preds = %22
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %11, align 8
  br label %69

27:                                               ; preds = %22
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %12, align 8
  br label %69

30:                                               ; preds = %22
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %36
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = and i64 %51, 65535
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %52, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %46
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %13, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %59, %46, %36, %30
  br label %69

68:                                               ; preds = %22
  br label %69

69:                                               ; preds = %68, %67, %27, %24
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i32 @write_res_directory(i32* %75, i32 %76, %struct.TYPE_15__* %80, %struct.TYPE_13__* %81, %struct.TYPE_13__* %82, i32* %83, i32 %85)
  store i32 %86, i32* %9, align 4
  br label %115

87:                                               ; preds = %69
  %88 = load i32, i32* %14, align 4
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @write_res_resource(i32* %91, i32 %92, %struct.TYPE_13__* %93, %struct.TYPE_13__* %94, i32 %98, i32* %99)
  store i32 %100, i32* %9, align 4
  br label %114

101:                                              ; preds = %87
  %102 = load i32, i32* @stderr, align 4
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @write_res_resource(i32* %105, i32 %106, %struct.TYPE_13__* %107, %struct.TYPE_13__* null, i32 %111, i32* %112)
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %101, %90
  br label %115

115:                                              ; preds = %114, %74
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  store %struct.TYPE_14__* %119, %struct.TYPE_14__** %15, align 8
  br label %19

120:                                              ; preds = %19
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @write_res_resource(i32*, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
