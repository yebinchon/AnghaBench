; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_64bit_program_headers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_64bit_program_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@elf_header = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"program headers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @get_64bit_program_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_64bit_program_headers(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @elf_header, i32 0, i32 2), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @elf_header, i32 0, i32 1), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @elf_header, i32 0, i32 0), align 4
  %14 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = call %struct.TYPE_8__* @get_data(i32* null, i32* %10, i32 %11, i32 %12, i32 %13, i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

19:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %8, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %7, align 8
  br label %22

22:                                               ; preds = %75, %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @elf_header, i32 0, i32 0), align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %82

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @BYTE_GET(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @BYTE_GET(i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @BYTE_GET(i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @BYTE_GET(i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @BYTE_GET(i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @BYTE_GET(i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @BYTE_GET(i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @BYTE_GET(i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %26
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 1
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %8, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 1
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %7, align 8
  br label %22

82:                                               ; preds = %22
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = call i32 @free(%struct.TYPE_8__* %83)
  store i32 1, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %18
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_8__* @get_data(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @BYTE_GET(i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
