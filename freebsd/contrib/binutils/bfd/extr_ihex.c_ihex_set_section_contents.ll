; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ihex.c_ihex_set_section_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ihex.c_ihex_set_section_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ihex_data_struct* }
%struct.ihex_data_struct = type { %struct.ihex_data_list*, %struct.ihex_data_list* }
%struct.ihex_data_list = type { i64, %struct.ihex_data_list*, i64, i32* }
%struct.TYPE_9__ = type { i32, i64 }

@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*, i8*, i64, i64)* @ihex_set_section_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ihex_set_section_contents(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ihex_data_list*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ihex_data_struct*, align 8
  %15 = alloca %struct.ihex_data_list**, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %5
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SEC_ALLOC, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SEC_LOAD, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25, %18, %5
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %6, align 4
  br label %139

34:                                               ; preds = %25
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = call i8* @bfd_alloc(%struct.TYPE_8__* %35, i64 32)
  %37 = bitcast i8* %36 to %struct.ihex_data_list*
  store %struct.ihex_data_list* %37, %struct.ihex_data_list** %12, align 8
  %38 = load %struct.ihex_data_list*, %struct.ihex_data_list** %12, align 8
  %39 = icmp eq %struct.ihex_data_list* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %6, align 4
  br label %139

42:                                               ; preds = %34
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i8* @bfd_alloc(%struct.TYPE_8__* %43, i64 %44)
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %13, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %6, align 4
  br label %139

51:                                               ; preds = %42
  %52 = load i32*, i32** %13, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @memcpy(i32* %52, i8* %53, i64 %54)
  %56 = load i32*, i32** %13, align 8
  %57 = load %struct.ihex_data_list*, %struct.ihex_data_list** %12, align 8
  %58 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %57, i32 0, i32 3
  store i32* %56, i32** %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.ihex_data_list*, %struct.ihex_data_list** %12, align 8
  %65 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.ihex_data_list*, %struct.ihex_data_list** %12, align 8
  %68 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.ihex_data_struct*, %struct.ihex_data_struct** %71, align 8
  store %struct.ihex_data_struct* %72, %struct.ihex_data_struct** %14, align 8
  %73 = load %struct.ihex_data_struct*, %struct.ihex_data_struct** %14, align 8
  %74 = getelementptr inbounds %struct.ihex_data_struct, %struct.ihex_data_struct* %73, i32 0, i32 0
  %75 = load %struct.ihex_data_list*, %struct.ihex_data_list** %74, align 8
  %76 = icmp ne %struct.ihex_data_list* %75, null
  br i1 %76, label %77, label %98

77:                                               ; preds = %51
  %78 = load %struct.ihex_data_list*, %struct.ihex_data_list** %12, align 8
  %79 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ihex_data_struct*, %struct.ihex_data_struct** %14, align 8
  %82 = getelementptr inbounds %struct.ihex_data_struct, %struct.ihex_data_struct* %81, i32 0, i32 0
  %83 = load %struct.ihex_data_list*, %struct.ihex_data_list** %82, align 8
  %84 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %80, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %77
  %88 = load %struct.ihex_data_list*, %struct.ihex_data_list** %12, align 8
  %89 = load %struct.ihex_data_struct*, %struct.ihex_data_struct** %14, align 8
  %90 = getelementptr inbounds %struct.ihex_data_struct, %struct.ihex_data_struct* %89, i32 0, i32 0
  %91 = load %struct.ihex_data_list*, %struct.ihex_data_list** %90, align 8
  %92 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %91, i32 0, i32 1
  store %struct.ihex_data_list* %88, %struct.ihex_data_list** %92, align 8
  %93 = load %struct.ihex_data_list*, %struct.ihex_data_list** %12, align 8
  %94 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %93, i32 0, i32 1
  store %struct.ihex_data_list* null, %struct.ihex_data_list** %94, align 8
  %95 = load %struct.ihex_data_list*, %struct.ihex_data_list** %12, align 8
  %96 = load %struct.ihex_data_struct*, %struct.ihex_data_struct** %14, align 8
  %97 = getelementptr inbounds %struct.ihex_data_struct, %struct.ihex_data_struct* %96, i32 0, i32 0
  store %struct.ihex_data_list* %95, %struct.ihex_data_list** %97, align 8
  br label %137

98:                                               ; preds = %77, %51
  %99 = load %struct.ihex_data_struct*, %struct.ihex_data_struct** %14, align 8
  %100 = getelementptr inbounds %struct.ihex_data_struct, %struct.ihex_data_struct* %99, i32 0, i32 1
  store %struct.ihex_data_list** %100, %struct.ihex_data_list*** %15, align 8
  br label %101

101:                                              ; preds = %117, %98
  %102 = load %struct.ihex_data_list**, %struct.ihex_data_list*** %15, align 8
  %103 = load %struct.ihex_data_list*, %struct.ihex_data_list** %102, align 8
  %104 = icmp ne %struct.ihex_data_list* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load %struct.ihex_data_list**, %struct.ihex_data_list*** %15, align 8
  %107 = load %struct.ihex_data_list*, %struct.ihex_data_list** %106, align 8
  %108 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.ihex_data_list*, %struct.ihex_data_list** %12, align 8
  %111 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %109, %112
  br label %114

114:                                              ; preds = %105, %101
  %115 = phi i1 [ false, %101 ], [ %113, %105 ]
  br i1 %115, label %116, label %121

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.ihex_data_list**, %struct.ihex_data_list*** %15, align 8
  %119 = load %struct.ihex_data_list*, %struct.ihex_data_list** %118, align 8
  %120 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %119, i32 0, i32 1
  store %struct.ihex_data_list** %120, %struct.ihex_data_list*** %15, align 8
  br label %101

121:                                              ; preds = %114
  %122 = load %struct.ihex_data_list**, %struct.ihex_data_list*** %15, align 8
  %123 = load %struct.ihex_data_list*, %struct.ihex_data_list** %122, align 8
  %124 = load %struct.ihex_data_list*, %struct.ihex_data_list** %12, align 8
  %125 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %124, i32 0, i32 1
  store %struct.ihex_data_list* %123, %struct.ihex_data_list** %125, align 8
  %126 = load %struct.ihex_data_list*, %struct.ihex_data_list** %12, align 8
  %127 = load %struct.ihex_data_list**, %struct.ihex_data_list*** %15, align 8
  store %struct.ihex_data_list* %126, %struct.ihex_data_list** %127, align 8
  %128 = load %struct.ihex_data_list*, %struct.ihex_data_list** %12, align 8
  %129 = getelementptr inbounds %struct.ihex_data_list, %struct.ihex_data_list* %128, i32 0, i32 1
  %130 = load %struct.ihex_data_list*, %struct.ihex_data_list** %129, align 8
  %131 = icmp eq %struct.ihex_data_list* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = load %struct.ihex_data_list*, %struct.ihex_data_list** %12, align 8
  %134 = load %struct.ihex_data_struct*, %struct.ihex_data_struct** %14, align 8
  %135 = getelementptr inbounds %struct.ihex_data_struct, %struct.ihex_data_struct* %134, i32 0, i32 0
  store %struct.ihex_data_list* %133, %struct.ihex_data_list** %135, align 8
  br label %136

136:                                              ; preds = %132, %121
  br label %137

137:                                              ; preds = %136, %87
  %138 = load i32, i32* @TRUE, align 4
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %137, %49, %40, %32
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i8* @bfd_alloc(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
