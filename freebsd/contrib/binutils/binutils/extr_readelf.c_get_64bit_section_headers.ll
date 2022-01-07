; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_64bit_section_headers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_64bit_section_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@elf_header = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"section headers\00", align 1
@section_headers = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_64bit_section_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_64bit_section_headers(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @elf_header, i32 0, i32 1), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @elf_header, i32 0, i32 0), align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = call %struct.TYPE_9__* @get_data(i32* null, i32* %9, i32 %10, i32 %11, i32 %12, i32 %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %131

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.TYPE_8__* @cmalloc(i32 %19, i32 80)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** @section_headers, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @section_headers, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @error(i32 %24)
  store i32 0, i32* %3, align 4
  br label %131

26:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @section_headers, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %7, align 8
  br label %28

28:                                               ; preds = %123, %26
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %128

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @BYTE_GET(i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 9
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @BYTE_GET(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 8
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @BYTE_GET(i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @BYTE_GET(i32 %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @BYTE_GET(i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @BYTE_GET(i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @BYTE_GET(i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @BYTE_GET(i32 %101)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @BYTE_GET(i32 %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @BYTE_GET(i32 %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %32
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %8, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 1
  store %struct.TYPE_8__* %127, %struct.TYPE_8__** %7, align 8
  br label %28

128:                                              ; preds = %28
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = call i32 @free(%struct.TYPE_9__* %129)
  store i32 1, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %23, %17
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_9__* @get_data(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_8__* @cmalloc(i32, i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i8* @BYTE_GET(i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
