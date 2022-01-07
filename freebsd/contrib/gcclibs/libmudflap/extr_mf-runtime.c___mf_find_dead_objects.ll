; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_find_dead_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_find_dead_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }

@__mf_opts = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@__MF_TYPE_MAX_CEM = common dso_local global i32 0, align 4
@__mf_object_dead_head = common dso_local global i32* null, align 8
@__mf_object_cemetary = common dso_local global %struct.TYPE_5__*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.TYPE_5__**, i32)* @__mf_find_dead_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mf_find_dead_objects(i64 %0, i64 %1, %struct.TYPE_5__** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @__mf_opts, i32 0, i32 0), align 4
  %17 = icmp ugt i32 %16, 0
  br i1 %17, label %18, label %116

18:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ule i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %28 = icmp ne %struct.TYPE_5__** %27, null
  br label %29

29:                                               ; preds = %26, %18
  %30 = phi i1 [ true, %18 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %110, %29
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @__mf_opts, i32 0, i32 0), align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %114

37:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %103, %37
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @__MF_TYPE_MAX_CEM, align 4
  %41 = icmp ule i32 %39, %40
  br i1 %41, label %42, label %106

42:                                               ; preds = %38
  %43 = load i32*, i32** @__mf_object_dead_head, align 8
  %44 = load i32, i32* %12, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %99, %42
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %102

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = icmp ugt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  %57 = add i32 %56, -1
  store i32 %57, i32* %13, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @__mf_opts, i32 0, i32 0), align 4
  %60 = sub i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.TYPE_5__***, %struct.TYPE_5__**** @__mf_object_cemetary, align 8
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__**, %struct.TYPE_5__*** %62, i64 %64
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %66, i64 %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %15, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %72 = icmp ne %struct.TYPE_5__* %71, null
  br i1 %72, label %73, label %98

73:                                               ; preds = %61
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp ule i64 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %73
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = icmp uge i64 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %91 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %91, i64 %93
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %94, align 8
  br label %95

95:                                               ; preds = %89, %85
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %95, %79, %73, %61
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %48

102:                                              ; preds = %48
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %12, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %38

106:                                              ; preds = %38
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %114

110:                                              ; preds = %106
  %111 = load i32, i32* %11, align 4
  %112 = mul i32 %111, 2
  %113 = add i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %33

114:                                              ; preds = %109, %33
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %5, align 4
  br label %117

116:                                              ; preds = %4
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %114
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
