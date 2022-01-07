; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_cap.c_gelf_getcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_cap.c_gelf_getcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_18__, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i64 }
%struct._Libelf_Data = type { %struct.TYPE_21__, %struct.TYPE_23__* }
%struct.TYPE_21__ = type { i64, i64 }

@ARGUMENT = common dso_local global i32 0, align 4
@ELFCLASS32 = common dso_local global i32 0, align 4
@ELFCLASS64 = common dso_local global i32 0, align 4
@ELF_T_CAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @gelf_getcap(i32* %0, i32 %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct._Libelf_Data*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct._Libelf_Data*
  store %struct._Libelf_Data* %17, %struct._Libelf_Data** %15, align 8
  %18 = load %struct._Libelf_Data*, %struct._Libelf_Data** %15, align 8
  %19 = icmp eq %struct._Libelf_Data* %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %25 = icmp eq %struct.TYPE_22__* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load %struct._Libelf_Data*, %struct._Libelf_Data** %15, align 8
  %28 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  store %struct.TYPE_23__* %29, %struct.TYPE_23__** %11, align 8
  %30 = icmp eq %struct.TYPE_23__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %9, align 8
  %35 = icmp eq %struct.TYPE_15__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26, %23, %20, %3
  %37 = load i32, i32* @ARGUMENT, align 4
  %38 = call i32 @LIBELF_SET_ERROR(i32 %37, i32 0)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %140

39:                                               ; preds = %31
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @ELFCLASS32, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ELFCLASS64, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %46, %39
  %51 = phi i1 [ true, %39 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ELFCLASS32, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  br label %69

63:                                               ; preds = %50
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %63, %57
  %70 = load i32, i32* %14, align 4
  %71 = call i64 @_libelf_xlate_shtype(i32 %70)
  %72 = load i64, i64* @ELF_T_CAP, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ARGUMENT, align 4
  %76 = call i32 @LIBELF_SET_ERROR(i32 %75, i32 0)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %140

77:                                               ; preds = %69
  %78 = load i64, i64* @ELF_T_CAP, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @_libelf_msize(i64 %78, i32 %79, i32 %82)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp ugt i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %88, %90
  %92 = load %struct._Libelf_Data*, %struct._Libelf_Data** %15, align 8
  %93 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp uge i64 %91, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %77
  %98 = load i32, i32* @ARGUMENT, align 4
  %99 = call i32 @LIBELF_SET_ERROR(i32 %98, i32 0)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %140

100:                                              ; preds = %77
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @ELFCLASS32, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %100
  %105 = load %struct._Libelf_Data*, %struct._Libelf_Data** %15, align 8
  %106 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to %struct.TYPE_14__*
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i64 %111
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %12, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  store i64 %121, i64* %124, align 8
  br label %138

125:                                              ; preds = %100
  %126 = load %struct._Libelf_Data*, %struct._Libelf_Data** %15, align 8
  %127 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to %struct.TYPE_22__*
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i64 %132
  store %struct.TYPE_22__* %133, %struct.TYPE_22__** %13, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %136 = bitcast %struct.TYPE_22__* %134 to i8*
  %137 = bitcast %struct.TYPE_22__* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %136, i8* align 8 %137, i64 16, i1 false)
  br label %138

138:                                              ; preds = %125, %104
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %139, %struct.TYPE_22__** %4, align 8
  br label %140

140:                                              ; preds = %138, %97, %74, %36
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %141
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_libelf_xlate_shtype(i32) #1

declare dso_local i64 @_libelf_msize(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
