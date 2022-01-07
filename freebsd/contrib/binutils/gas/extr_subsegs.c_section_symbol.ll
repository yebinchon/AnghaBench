; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_subsegs.c_section_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_subsegs.c_section_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_17__ = type { i32 }

@symbol_table_frozen = common dso_local global i64 0, align 8
@zero_address_frag = common dso_local global i32 0, align 4
@undefined_section = common dso_local global %struct.TYPE_15__* null, align 8
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@EMIT_SECTION_SYMBOLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @section_symbol(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = call %struct.TYPE_14__* @seg_info(%struct.TYPE_15__* %7)
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %4, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = icmp eq %struct.TYPE_14__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @abort() #3
  unreachable

13:                                               ; preds = %1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %2, align 8
  br label %95

22:                                               ; preds = %13
  %23 = load i64, i64* @symbol_table_frozen, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = call i32* @symbol_create(i32 %30, %struct.TYPE_15__* %31, i32 0, i32* @zero_address_frag)
  store i32* %32, i32** %5, align 8
  br label %71

33:                                               ; preds = %22
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @symbol_find(i32 %38)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load i32*, i32** %5, align 8
  %44 = call %struct.TYPE_15__* @S_GET_SEGMENT(i32* %43)
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %6, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = icmp ne %struct.TYPE_15__* %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** @undefined_section, align 8
  %50 = icmp ne %struct.TYPE_15__* %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47, %33
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = call i32* @symbol_new(i32 %56, %struct.TYPE_15__* %57, i32 0, i32* @zero_address_frag)
  store i32* %58, i32** %5, align 8
  br label %70

59:                                               ; preds = %47, %42
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** @undefined_section, align 8
  %62 = icmp eq %struct.TYPE_15__* %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = call i32 @S_SET_SEGMENT(i32* %64, %struct.TYPE_15__* %65)
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @symbol_set_frag(i32* %67, i32* @zero_address_frag)
  br label %69

69:                                               ; preds = %63, %59
  br label %70

70:                                               ; preds = %69, %51
  br label %71

71:                                               ; preds = %70, %25
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @S_CLEAR_EXTERNAL(i32* %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = call i64 @obj_sec_sym_ok_for_reloc(%struct.TYPE_15__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = call i32 @symbol_set_bfdsym(i32* %78, %struct.TYPE_16__* %81)
  br label %90

83:                                               ; preds = %71
  %84 = load i32, i32* @BSF_SECTION_SYM, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = call %struct.TYPE_17__* @symbol_get_bfdsym(i32* %85)
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %83, %77
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  store i32* %91, i32** %93, align 8
  %94 = load i32*, i32** %5, align 8
  store i32* %94, i32** %2, align 8
  br label %95

95:                                               ; preds = %90, %18
  %96 = load i32*, i32** %2, align 8
  ret i32* %96
}

declare dso_local %struct.TYPE_14__* @seg_info(%struct.TYPE_15__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32* @symbol_create(i32, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32* @symbol_find(i32) #1

declare dso_local %struct.TYPE_15__* @S_GET_SEGMENT(i32*) #1

declare dso_local i32* @symbol_new(i32, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @S_SET_SEGMENT(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @symbol_set_frag(i32*, i32*) #1

declare dso_local i32 @S_CLEAR_EXTERNAL(i32*) #1

declare dso_local i64 @obj_sec_sym_ok_for_reloc(%struct.TYPE_15__*) #1

declare dso_local i32 @symbol_set_bfdsym(i32*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @symbol_get_bfdsym(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
