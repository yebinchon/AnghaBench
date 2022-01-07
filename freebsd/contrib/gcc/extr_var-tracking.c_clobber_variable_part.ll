; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_clobber_variable_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_clobber_variable_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__**, i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_12__* }

@NO_INSERT = common dso_local global i32 0, align 4
@attrs_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i64, i32, i64)* @clobber_variable_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clobber_variable_part(%struct.TYPE_13__* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_14__**, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @DECL_P(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %4
  br label %124

24:                                               ; preds = %19
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @VARIABLE_HASH_VAL(i32 %29)
  %31 = load i32, i32* @NO_INSERT, align 4
  %32 = call i8** @htab_find_slot_with_hash(i32 %27, i32 %28, i32 %30, i32 %31)
  store i8** %32, i8*** %9, align 8
  %33 = load i8**, i8*** %9, align 8
  %34 = icmp ne i8** %33, null
  br i1 %34, label %35, label %124

35:                                               ; preds = %24
  %36 = load i8**, i8*** %9, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %10, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @find_variable_location_part(%struct.TYPE_11__* %39, i64 %40, i32* null)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %123

44:                                               ; preds = %35
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %13, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %12, align 8
  br label %54

54:                                               ; preds = %120, %44
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %56 = icmp ne %struct.TYPE_12__* %55, null
  br i1 %56, label %57, label %122

57:                                               ; preds = %54
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %13, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %119

66:                                               ; preds = %57
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @REG_P(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %111

72:                                               ; preds = %66
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %74, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @REGNO(i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %75, i64 %79
  store %struct.TYPE_14__** %80, %struct.TYPE_14__*** %16, align 8
  %81 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  store %struct.TYPE_14__* %82, %struct.TYPE_14__** %14, align 8
  br label %83

83:                                               ; preds = %108, %72
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %85 = icmp ne %struct.TYPE_14__* %84, null
  br i1 %85, label %86, label %110

86:                                               ; preds = %83
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %15, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %86
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load i32, i32* @attrs_pool, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %104 = call i32 @pool_free(i32 %102, %struct.TYPE_14__* %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %106 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %16, align 8
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %106, align 8
  br label %107

107:                                              ; preds = %101, %95, %86
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %109, %struct.TYPE_14__** %14, align 8
  br label %83

110:                                              ; preds = %83
  br label %111

111:                                              ; preds = %110, %66
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @delete_variable_part(%struct.TYPE_13__* %112, i64 %115, i32 %116, i64 %117)
  br label %119

119:                                              ; preds = %111, %57
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %12, align 8
  br label %54

122:                                              ; preds = %54
  br label %123

123:                                              ; preds = %122, %35
  br label %124

124:                                              ; preds = %23, %123, %24
  ret void
}

declare dso_local i32 @DECL_P(i32) #1

declare dso_local i8** @htab_find_slot_with_hash(i32, i32, i32, i32) #1

declare dso_local i32 @VARIABLE_HASH_VAL(i32) #1

declare dso_local i32 @find_variable_location_part(%struct.TYPE_11__*, i64, i32*) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i32 @pool_free(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @delete_variable_part(%struct.TYPE_13__*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
