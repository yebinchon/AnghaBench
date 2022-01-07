; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_symshndx.c_gelf_update_symshndx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_symshndx.c_gelf_update_symshndx.c"
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
define dso_local i32 @gelf_update_symshndx(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
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
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = bitcast %struct.TYPE_14__* %19 to %struct._Libelf_Data*
  store %struct._Libelf_Data* %20, %struct._Libelf_Data** %17, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = bitcast %struct.TYPE_14__* %21 to %struct._Libelf_Data*
  store %struct._Libelf_Data* %22, %struct._Libelf_Data** %18, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @gelf_update_sym(%struct.TYPE_14__* %23, i32 %24, i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %132

29:                                               ; preds = %5
  %30 = load %struct._Libelf_Data*, %struct._Libelf_Data** %18, align 8
  %31 = icmp eq %struct._Libelf_Data* %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %29
  %33 = load %struct._Libelf_Data*, %struct._Libelf_Data** %18, align 8
  %34 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %15, align 8
  %36 = icmp eq %struct.TYPE_13__* %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %13, align 8
  %41 = icmp eq %struct.TYPE_15__* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %44 = load %struct._Libelf_Data*, %struct._Libelf_Data** %17, align 8
  %45 = getelementptr inbounds %struct._Libelf_Data, %struct._Libelf_Data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = icmp ne %struct.TYPE_15__* %43, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42, %37, %32, %29
  %51 = load i32, i32* @ARGUMENT, align 4
  %52 = call i32 @LIBELF_SET_ERROR(i32 %51, i32 0)
  store i32 0, i32* %6, align 4
  br label %132

53:                                               ; preds = %42
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @ELFCLASS32, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @ELFCLASS64, align 4
  %63 = icmp eq i32 %61, %62
  br label %64

64:                                               ; preds = %60, %53
  %65 = phi i1 [ true, %53 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @ELFCLASS32, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %16, align 4
  br label %83

77:                                               ; preds = %64
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i32, i32* %16, align 4
  %85 = call i64 @_libelf_xlate_shtype(i32 %84)
  %86 = load i64, i64* @ELF_T_WORD, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ELF_T_WORD, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88, %83
  %95 = load i32, i32* @ARGUMENT, align 4
  %96 = call i32 @LIBELF_SET_ERROR(i32 %95, i32 0)
  store i32 0, i32* %6, align 4
  br label %132

97:                                               ; preds = %88
  %98 = load i64, i64* @ELF_T_WORD, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @_libelf_msize(i64 %98, i32 %99, i32 %102)
  store i64 %103, i64* %14, align 8
  %104 = load i64, i64* %14, align 8
  %105 = icmp ugt i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = icmp sge i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i64, i64* %14, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %112, %114
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp uge i64 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %97
  %121 = load i32, i32* @ARGUMENT, align 4
  %122 = call i32 @LIBELF_SET_ERROR(i32 %121, i32 0)
  store i32 0, i32* %6, align 4
  br label %132

123:                                              ; preds = %97
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %124, i32* %131, align 4
  store i32 1, i32* %6, align 4
  br label %132

132:                                              ; preds = %123, %120, %94, %50, %28
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i64 @gelf_update_sym(%struct.TYPE_14__*, i32, i32*) #1

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
