; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_cie_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_frame.c_dwarf_get_cie_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_cie_info(%struct.TYPE_3__* %0, i32* %1, i32* %2, i8** %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i8** %3, i8*** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %23 = icmp eq %struct.TYPE_3__* %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %10
  %25 = load i32*, i32** %13, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %14, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %27
  %31 = load i8**, i8*** %15, align 8
  %32 = icmp eq i8** %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %16, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %17, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %18, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %19, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %20, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45, %42, %39, %36, %33, %30, %27, %24, %10
  %49 = load i32*, i32** %21, align 8
  %50 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %51 = call i32 @DWARF_SET_ERROR(i32* null, i32* %49, i32 %50)
  %52 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %52, i32* %11, align 4
  br label %88

53:                                               ; preds = %45
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %13, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %14, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load i8**, i8*** %15, align 8
  store i8* %65, i8** %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %16, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %17, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %18, align 8
  store i32 %77, i32* %78, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %19, align 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %20, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %53, %48
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
