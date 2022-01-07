; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_get_textlow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_get_textlow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }
%union.dnttentry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.minimal_symbol = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@DNTT_TYPE_FUNCTION = common dso_local global i64 0, align 8
@DNTT_TYPE_DOC_FUNCTION = common dso_local global i64 0, align 8
@DNTT_TYPE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.objfile*, i32)* @hpread_get_textlow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hpread_get_textlow(i32 %0, i32 %1, %struct.objfile* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.objfile*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.dnttentry*, align 8
  %11 = alloca %struct.minimal_symbol*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.objfile* %2, %struct.objfile** %8, align 8
  store i32 %3, i32* %9, align 4
  store %union.dnttentry* null, %union.dnttentry** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %55, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load %struct.objfile*, %struct.objfile** %8, align 8
  %23 = call %union.dnttentry* @hpread_get_gntt(i32 %20, %struct.objfile* %22)
  store %union.dnttentry* %23, %union.dnttentry** %10, align 8
  br label %29

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load %struct.objfile*, %struct.objfile** %8, align 8
  %28 = call %union.dnttentry* @hpread_get_lntt(i32 %25, %struct.objfile* %27)
  store %union.dnttentry* %28, %union.dnttentry** %10, align 8
  br label %29

29:                                               ; preds = %24, %19
  br label %30

30:                                               ; preds = %29
  %31 = load %union.dnttentry*, %union.dnttentry** %10, align 8
  %32 = bitcast %union.dnttentry* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DNTT_TYPE_FUNCTION, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %30
  %38 = load %union.dnttentry*, %union.dnttentry** %10, align 8
  %39 = bitcast %union.dnttentry* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DNTT_TYPE_DOC_FUNCTION, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %union.dnttentry*, %union.dnttentry** %10, align 8
  %46 = bitcast %union.dnttentry* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DNTT_TYPE_END, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br label %55

55:                                               ; preds = %51, %44, %37, %30
  %56 = phi i1 [ false, %44 ], [ false, %37 ], [ false, %30 ], [ %54, %51 ]
  br i1 %56, label %16, label %57

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57, %4
  %59 = load %union.dnttentry*, %union.dnttentry** %10, align 8
  %60 = icmp ne %union.dnttentry* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @gdb_assert(i32 %61)
  %63 = load %union.dnttentry*, %union.dnttentry** %10, align 8
  %64 = bitcast %union.dnttentry* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DNTT_TYPE_END, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store i64 0, i64* %5, align 8
  br label %113

70:                                               ; preds = %58
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i64 0, i64* %5, align 8
  br label %113

75:                                               ; preds = %70
  %76 = load %union.dnttentry*, %union.dnttentry** %10, align 8
  %77 = bitcast %union.dnttentry* %76 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DNTT_TYPE_FUNCTION, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load %union.dnttentry*, %union.dnttentry** %10, align 8
  %84 = bitcast %union.dnttentry* %83 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.objfile*, %struct.objfile** %8, align 8
  %88 = call i64 @VT(%struct.objfile* %87)
  %89 = add nsw i64 %86, %88
  %90 = load %struct.objfile*, %struct.objfile** %8, align 8
  %91 = call %struct.minimal_symbol* @lookup_minimal_symbol(i64 %89, i32* null, %struct.objfile* %90)
  store %struct.minimal_symbol* %91, %struct.minimal_symbol** %11, align 8
  br label %102

92:                                               ; preds = %75
  %93 = load %union.dnttentry*, %union.dnttentry** %10, align 8
  %94 = bitcast %union.dnttentry* %93 to %struct.TYPE_5__*
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.objfile*, %struct.objfile** %8, align 8
  %98 = call i64 @VT(%struct.objfile* %97)
  %99 = add nsw i64 %96, %98
  %100 = load %struct.objfile*, %struct.objfile** %8, align 8
  %101 = call %struct.minimal_symbol* @lookup_minimal_symbol(i64 %99, i32* null, %struct.objfile* %100)
  store %struct.minimal_symbol* %101, %struct.minimal_symbol** %11, align 8
  br label %102

102:                                              ; preds = %92, %82
  %103 = load %struct.minimal_symbol*, %struct.minimal_symbol** %11, align 8
  %104 = icmp ne %struct.minimal_symbol* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.minimal_symbol*, %struct.minimal_symbol** %11, align 8
  %107 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %106)
  store i64 %107, i64* %5, align 8
  br label %113

108:                                              ; preds = %102
  %109 = load %union.dnttentry*, %union.dnttentry** %10, align 8
  %110 = bitcast %union.dnttentry* %109 to %struct.TYPE_6__*
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %5, align 8
  br label %113

113:                                              ; preds = %108, %105, %74, %69
  %114 = load i64, i64* %5, align 8
  ret i64 %114
}

declare dso_local %union.dnttentry* @hpread_get_gntt(i32, %struct.objfile*) #1

declare dso_local %union.dnttentry* @hpread_get_lntt(i32, %struct.objfile*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i64, i32*, %struct.objfile*) #1

declare dso_local i64 @VT(%struct.objfile*) #1

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
