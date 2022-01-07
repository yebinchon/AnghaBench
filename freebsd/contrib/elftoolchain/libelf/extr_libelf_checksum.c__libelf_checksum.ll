; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_checksum.c__libelf_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_checksum.c__libelf_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, i64 }

@ARGUMENT = common dso_local global i32 0, align 4
@CLASS = common dso_local global i32 0, align 4
@SHF_ALLOC = common dso_local global i32 0, align 4
@SHT_DYNAMIC = common dso_local global i64 0, align 8
@SHT_DYNSYM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_libelf_checksum(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = icmp eq %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ARGUMENT, align 4
  %16 = call i32 @LIBELF_SET_ERROR(i32 %15, i32 0)
  store i64 0, i64* %3, align 8
  br label %95

17:                                               ; preds = %2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @CLASS, align 4
  %25 = call i32 @LIBELF_SET_ERROR(i32 %24, i32 0)
  store i64 0, i64* %3, align 8
  br label %95

26:                                               ; preds = %17
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = call i32* @gelf_getehdr(%struct.TYPE_16__* %27, i32* %10)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i64 0, i64* %3, align 8
  br label %95

31:                                               ; preds = %26
  store i64 0, i64* %9, align 8
  store i64 1, i64* %6, align 8
  br label %32

32:                                               ; preds = %85, %31
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %33, %38
  br i1 %39, label %40, label %88

40:                                               ; preds = %32
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32* @elf_getscn(%struct.TYPE_16__* %41, i64 %42)
  store i32* %43, i32** %7, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i64 0, i64* %3, align 8
  br label %95

46:                                               ; preds = %40
  %47 = load i32*, i32** %7, align 8
  %48 = call i32* @gelf_getshdr(i32* %47, %struct.TYPE_14__* %11)
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i64 0, i64* %3, align 8
  br label %95

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SHF_ALLOC, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SHT_DYNAMIC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SHT_DYNSYM, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %57, %51
  br label %85

68:                                               ; preds = %62
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  br label %69

69:                                               ; preds = %74, %68
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = call %struct.TYPE_15__* @elf_rawdata(i32* %70, %struct.TYPE_15__* %71)
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %8, align 8
  %73 = icmp ne %struct.TYPE_15__* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @_libelf_sum(i64 %75, i8* %79, i64 %82)
  store i64 %83, i64* %9, align 8
  br label %69

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %32

88:                                               ; preds = %32
  %89 = load i64, i64* %9, align 8
  %90 = lshr i64 %89, 16
  %91 = and i64 %90, 65535
  %92 = load i64, i64* %9, align 8
  %93 = and i64 %92, 65535
  %94 = add i64 %91, %93
  store i64 %94, i64* %3, align 8
  br label %95

95:                                               ; preds = %88, %50, %45, %30, %23, %14
  %96 = load i64, i64* %3, align 8
  ret i64 %96
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i32* @gelf_getehdr(%struct.TYPE_16__*, i32*) #1

declare dso_local i32* @elf_getscn(%struct.TYPE_16__*, i64) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @elf_rawdata(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @_libelf_sum(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
