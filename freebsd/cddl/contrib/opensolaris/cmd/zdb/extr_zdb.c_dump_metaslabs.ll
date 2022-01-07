; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_metaslabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_metaslabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32*, %struct.TYPE_6__** }

@.str = private unnamed_addr constant [13 x i8] c"\0AMetaslabs:\0A\00", align 1
@dump_opt = common dso_local global i32* null, align 8
@zopt_objects = common dso_local global i32 0, align 4
@zopt_object = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"bad vdev id: %llu\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"bad metaslab number %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @dump_metaslabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_metaslabs(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %4, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** @dump_opt, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 100
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %87, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @zopt_objects, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %87

22:                                               ; preds = %19
  %23 = load i64*, i64** @zopt_object, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32, i32* @zopt_objects, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %84

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %39, i64 %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %3, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = call i32 @print_vdev_metaslab_header(%struct.TYPE_6__* %43)
  store i64 1, i64* %5, align 8
  br label %45

45:                                               ; preds = %79, %36
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* @zopt_objects, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %45
  %51 = load i64*, i64** @zopt_object, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %50
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i64*, i64** @zopt_object, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dump_metaslab(i32 %68)
  br label %78

70:                                               ; preds = %50
  %71 = load i32, i32* @stderr, align 4
  %72 = load i64*, i64** @zopt_object, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %70, %59
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %5, align 8
  br label %45

82:                                               ; preds = %45
  %83 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %125

84:                                               ; preds = %33
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %7, align 8
  br label %87

87:                                               ; preds = %84, %19, %1
  br label %88

88:                                               ; preds = %122, %87
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %88
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %95, i64 %96
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %3, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = call i32 @print_vdev_metaslab_header(%struct.TYPE_6__* %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = call i32 @print_vdev_indirect(%struct.TYPE_6__* %101)
  store i64 0, i64* %5, align 8
  br label %103

103:                                              ; preds = %117, %92
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %104, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %103
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dump_metaslab(i32 %115)
  br label %117

117:                                              ; preds = %109
  %118 = load i64, i64* %5, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %5, align 8
  br label %103

120:                                              ; preds = %103
  %121 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %6, align 8
  br label %88

125:                                              ; preds = %82, %88
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @print_vdev_metaslab_header(%struct.TYPE_6__*) #1

declare dso_local i32 @dump_metaslab(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @print_vdev_indirect(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
