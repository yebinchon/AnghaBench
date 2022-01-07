; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_symshndx.c_gelf_getsymshndx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_symshndx.c_gelf_getsymshndx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct._Libelf_Data = type { %struct.TYPE_13__* }

@ARGUMENT = common dso_local global i32 0, align 4
@ELFCLASS32 = common dso_local global i32 0, align 4
@ELFCLASS64 = common dso_local global i32 0, align 4
@ELF_T_WORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gelf_getsymshndx(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct._Libelf_Data*, align 8
  %18 = alloca %struct._Libelf_Data*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = bitcast %struct.TYPE_14__* %19 to %struct._Libelf_Data*
  store %struct._Libelf_Data* %20, %struct._Libelf_Data** %17, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = bitcast %struct.TYPE_14__* %21 to %struct._Libelf_Data*
  store %struct._Libelf_Data* %22, %struct._Libelf_Data** %18, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @gelf_getsym(%struct.TYPE_14__* %23, i32 %24, i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %137

29:                                               ; preds = %5
  %30 = load %struct._Libelf_Data*, %struct._Libelf_Data** %18, align 8
  %31 = icmp eq %struct._Libelf_Data* %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %29
  %33 = load %struct._Libelf_Data*, %struct._Libelf_Data** %18, align 8
  %34 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %15, align 8
  %36 = icmp eq %struct.TYPE_13__* %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %13, align 8
  %41 = icmp eq %struct.TYPE_15__* %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %44 = load %struct._Libelf_Data*, %struct._Libelf_Data** %17, align 8
  %45 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = icmp ne %struct.TYPE_15__* %43, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32*, i32** %11, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %42, %37, %32, %29
  %54 = load i32, i32* @ARGUMENT, align 4
  %55 = call i32 @LIBELF_SET_ERROR(i32 %54, i32 0)
  store i32* null, i32** %6, align 8
  br label %137

56:                                               ; preds = %50
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @ELFCLASS32, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @ELFCLASS64, align 4
  %66 = icmp eq i32 %64, %65
  br label %67

67:                                               ; preds = %63, %56
  %68 = phi i1 [ true, %56 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @ELFCLASS32, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %16, align 4
  br label %86

80:                                               ; preds = %67
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %80, %74
  %87 = load i32, i32* %16, align 4
  %88 = call i64 @_libelf_xlate_shtype(i32 %87)
  %89 = load i64, i64* @ELF_T_WORD, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ELF_T_WORD, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91, %86
  %98 = load i32, i32* @ARGUMENT, align 4
  %99 = call i32 @LIBELF_SET_ERROR(i32 %98, i32 0)
  store i32* null, i32** %6, align 8
  br label %137

100:                                              ; preds = %91
  %101 = load i64, i64* @ELF_T_WORD, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @_libelf_msize(i64 %101, i32 %102, i32 %105)
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %14, align 8
  %108 = icmp ugt i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = icmp sge i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i64, i64* %14, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 %115, %117
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp uge i64 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %100
  %124 = load i32, i32* @ARGUMENT, align 4
  %125 = call i32 @LIBELF_SET_ERROR(i32 %124, i32 0)
  store i32* null, i32** %6, align 8
  br label %137

126:                                              ; preds = %100
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i32*
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %11, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32*, i32** %10, align 8
  store i32* %136, i32** %6, align 8
  br label %137

137:                                              ; preds = %126, %123, %97, %53, %28
  %138 = load i32*, i32** %6, align 8
  ret i32* %138
}

declare dso_local i64 @gelf_getsym(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_libelf_xlate_shtype(i32) #1

declare dso_local i64 @_libelf_msize(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
