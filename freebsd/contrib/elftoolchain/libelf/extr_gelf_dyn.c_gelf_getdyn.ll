; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_dyn.c_gelf_getdyn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_dyn.c_gelf_getdyn.c"
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
@ELF_T_DYN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @gelf_getdyn(i32* %0, i32 %1, %struct.TYPE_22__* %2) #0 {
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
  br label %144

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
  %72 = load i64, i64* @ELF_T_DYN, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ARGUMENT, align 4
  %76 = call i32 @LIBELF_SET_ERROR(i32 %75, i32 0)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %144

77:                                               ; preds = %69
  %78 = load i64, i64* @ELF_T_DYN, align 8
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
  %88 = load i32, i32* %6, align 4
  %89 = icmp sge i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %92, %94
  %96 = load %struct._Libelf_Data*, %struct._Libelf_Data** %15, align 8
  %97 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp uge i64 %95, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %77
  %102 = load i32, i32* @ARGUMENT, align 4
  %103 = call i32 @LIBELF_SET_ERROR(i32 %102, i32 0)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %144

104:                                              ; preds = %77
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @ELFCLASS32, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = load %struct._Libelf_Data*, %struct._Libelf_Data** %15, align 8
  %110 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.TYPE_14__*
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i64 %115
  store %struct.TYPE_14__* %116, %struct.TYPE_14__** %12, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  store i64 %125, i64* %128, align 8
  br label %142

129:                                              ; preds = %104
  %130 = load %struct._Libelf_Data*, %struct._Libelf_Data** %15, align 8
  %131 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to %struct.TYPE_22__*
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i64 %136
  store %struct.TYPE_22__* %137, %struct.TYPE_22__** %13, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %140 = bitcast %struct.TYPE_22__* %138 to i8*
  %141 = bitcast %struct.TYPE_22__* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 16, i1 false)
  br label %142

142:                                              ; preds = %129, %108
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %143, %struct.TYPE_22__** %4, align 8
  br label %144

144:                                              ; preds = %142, %101, %74, %36
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %145
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
