; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_apprentice.c_buffer_apprentice.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_apprentice.c_buffer_apprentice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic_set = type { i32** }
%struct.magic = type { i32 }
%struct.mlist = type { i32 }
%struct.magic_map = type { i32 }

@MAGIC_SETS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buffer_apprentice(%struct.magic_set* %0, %struct.magic** %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.magic_set*, align 8
  %7 = alloca %struct.magic**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlist*, align 8
  %13 = alloca %struct.magic_map*, align 8
  store %struct.magic_set* %0, %struct.magic_set** %6, align 8
  store %struct.magic** %1, %struct.magic*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %116

17:                                               ; preds = %4
  %18 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %19 = call i32 @file_reset(%struct.magic_set* %18, i32 0)
  %20 = call i32 (...) @init_file_tables()
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %44, %17
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @MAGIC_SETS, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %27 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @mlist_free(i32* %31)
  %33 = call i32* (...) @mlist_alloc()
  %34 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %35 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  store i32* %33, i32** %38, align 8
  %39 = icmp eq i32* %33, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %42 = call i32 @file_oomem(%struct.magic_set* %41, i32 4)
  br label %94

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %21

47:                                               ; preds = %21
  store i64 0, i64* %10, align 8
  br label %48

48:                                               ; preds = %90, %47
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %48
  %53 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %54 = load %struct.magic**, %struct.magic*** %7, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.magic*, %struct.magic** %54, i64 %55
  %57 = load %struct.magic*, %struct.magic** %56, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call %struct.magic_map* @apprentice_buf(%struct.magic_set* %53, %struct.magic* %57, i64 %61)
  store %struct.magic_map* %62, %struct.magic_map** %13, align 8
  %63 = load %struct.magic_map*, %struct.magic_map** %13, align 8
  %64 = icmp eq %struct.magic_map* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %94

66:                                               ; preds = %52
  store i64 0, i64* %11, align 8
  br label %67

67:                                               ; preds = %86, %66
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @MAGIC_SETS, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %73 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.magic_map*, %struct.magic_map** %13, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @add_mlist(i32* %77, %struct.magic_map* %78, i64 %79)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %84 = call i32 @file_oomem(%struct.magic_set* %83, i32 4)
  br label %94

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %67

89:                                               ; preds = %67
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %10, align 8
  br label %48

93:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %116

94:                                               ; preds = %82, %65, %40
  store i64 0, i64* %10, align 8
  br label %95

95:                                               ; preds = %112, %94
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @MAGIC_SETS, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %101 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %100, i32 0, i32 0
  %102 = load i32**, i32*** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds i32*, i32** %102, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @mlist_free(i32* %105)
  %107 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %108 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %107, i32 0, i32 0
  %109 = load i32**, i32*** %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds i32*, i32** %109, i64 %110
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %99
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %10, align 8
  br label %95

115:                                              ; preds = %95
  store i32 -1, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %93, %16
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @file_reset(%struct.magic_set*, i32) #1

declare dso_local i32 @init_file_tables(...) #1

declare dso_local i32 @mlist_free(i32*) #1

declare dso_local i32* @mlist_alloc(...) #1

declare dso_local i32 @file_oomem(%struct.magic_set*, i32) #1

declare dso_local %struct.magic_map* @apprentice_buf(%struct.magic_set*, %struct.magic*, i64) #1

declare dso_local i32 @add_mlist(i32*, %struct.magic_map*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
