; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_frame.c_dwarf_add_frame_fde_b.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_pro_frame.c_dwarf_add_frame_fde_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i64, i64, i64, i8*, i32*, %struct.TYPE_8__* }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_NOCOUNT = common dso_local global i64 0, align 8
@cie_next = common dso_local global i32 0, align 4
@DW_DLC_SYMBOLIC_RELOCATIONS = common dso_local global i32 0, align 4
@fde_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dwarf_add_frame_fde_b(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2, i64 %3, i8* %4, i64 %5, i64 %6, i64 %7, i8* %8, i32* %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %13, align 8
  store i32 %2, i32* %14, align 4
  store i64 %3, i64* %15, align 8
  store i8* %4, i8** %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %10
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %29 = icmp eq %struct.TYPE_7__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %35 = icmp ne %struct.TYPE_8__* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30, %27, %10
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %38 = load i32*, i32** %21, align 8
  %39 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %40 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %37, i32* %38, i32 %39)
  %41 = load i64, i64* @DW_DLV_NOCOUNT, align 8
  store i64 %41, i64* %11, align 8
  br label %116

42:                                               ; preds = %30
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = call i32* @STAILQ_FIRST(i32* %44)
  store i32* %45, i32** %22, align 8
  store i32 0, i32* %23, align 4
  br label %46

46:                                               ; preds = %59, %42
  %47 = load i32, i32* %23, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %15, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i32*, i32** %22, align 8
  %53 = load i32, i32* @cie_next, align 4
  %54 = call i32* @STAILQ_NEXT(i32* %52, i32 %53)
  store i32* %54, i32** %22, align 8
  %55 = load i32*, i32** %22, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %62

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %23, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %23, align 4
  br label %46

62:                                               ; preds = %57, %46
  %63 = load i32*, i32** %22, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %67 = load i32*, i32** %21, align 8
  %68 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %69 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %66, i32* %67, i32 %68)
  %70 = load i64, i64* @DW_DLV_NOCOUNT, align 8
  store i64 %70, i64* %11, align 8
  br label %116

71:                                               ; preds = %62
  %72 = load i64, i64* %19, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DW_DLC_SYMBOLIC_RELOCATIONS, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = load i32*, i32** %21, align 8
  %84 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %85 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %82, i32* %83, i32 %84)
  %86 = load i64, i64* @DW_DLV_NOCOUNT, align 8
  store i64 %86, i64* %11, align 8
  br label %116

87:                                               ; preds = %74, %71
  %88 = load i32*, i32** %22, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 5
  store i32* %88, i32** %90, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load i64, i64* %17, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %18, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %19, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load i8*, i8** %20, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %109 = load i32, i32* @fde_next, align 4
  %110 = call i32 @STAILQ_INSERT_TAIL(i32* %107, %struct.TYPE_7__* %108, i32 %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = sext i32 %113 to i64
  store i64 %115, i64* %11, align 8
  br label %116

116:                                              ; preds = %87, %81, %65, %36
  %117 = load i64, i64* %11, align 8
  ret i64 %117
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32* @STAILQ_FIRST(i32*) #1

declare dso_local i32* @STAILQ_NEXT(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
