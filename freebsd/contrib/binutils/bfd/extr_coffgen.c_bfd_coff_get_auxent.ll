; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_bfd_coff_get_auxent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_bfd_coff_get_auxent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.internal_auxent = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %union.internal_auxent, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_13__* }

@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_coff_get_auxent(i32* %0, i32* %1, i32 %2, %union.internal_auxent* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.internal_auxent*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.internal_auxent* %3, %union.internal_auxent** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call %struct.TYPE_14__* @coff_symbol_from(i32* %12, i32* %13)
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %10, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %16 = icmp eq %struct.TYPE_14__* %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = icmp eq %struct.TYPE_13__* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %23, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %22, %17, %4
  %33 = load i32, i32* @bfd_error_invalid_operation, align 4
  %34 = call i32 @bfd_set_error(i32 %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %5, align 4
  br label %118

36:                                               ; preds = %22
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i64 1
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %11, align 8
  %44 = load %union.internal_auxent*, %union.internal_auxent** %9, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = bitcast %union.internal_auxent* %44 to i8*
  %49 = bitcast %union.internal_auxent* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 32, i1 false)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %36
  %55 = load %union.internal_auxent*, %union.internal_auxent** %9, align 8
  %56 = bitcast %union.internal_auxent* %55 to %struct.TYPE_21__*
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_13__*
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @obj_raw_syments(i32* %61)
  %63 = sext i32 %62 to i64
  %64 = sub i64 0, %63
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i64 %64
  %66 = load %union.internal_auxent*, %union.internal_auxent** %9, align 8
  %67 = bitcast %union.internal_auxent* %66 to %struct.TYPE_21__*
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %69, align 8
  br label %70

70:                                               ; preds = %54, %36
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %70
  %76 = load %union.internal_auxent*, %union.internal_auxent** %9, align 8
  %77 = bitcast %union.internal_auxent* %76 to %struct.TYPE_21__*
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.TYPE_13__*
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @obj_raw_syments(i32* %84)
  %86 = sext i32 %85 to i64
  %87 = sub i64 0, %86
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i64 %87
  %89 = load %union.internal_auxent*, %union.internal_auxent** %9, align 8
  %90 = bitcast %union.internal_auxent* %89 to %struct.TYPE_21__*
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %94, align 8
  br label %95

95:                                               ; preds = %75, %70
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load %union.internal_auxent*, %union.internal_auxent** %9, align 8
  %102 = bitcast %union.internal_auxent* %101 to %struct.TYPE_23__*
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to %struct.TYPE_13__*
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @obj_raw_syments(i32* %107)
  %109 = sext i32 %108 to i64
  %110 = sub i64 0, %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i64 %110
  %112 = load %union.internal_auxent*, %union.internal_auxent** %9, align 8
  %113 = bitcast %union.internal_auxent* %112 to %struct.TYPE_23__*
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %115, align 8
  br label %116

116:                                              ; preds = %100, %95
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %32
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_14__* @coff_symbol_from(i32*, i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @obj_raw_syments(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
