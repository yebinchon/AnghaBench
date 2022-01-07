; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_slurp_rel_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_slurp_rel_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32 }

@is_32bit_elf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"relocs\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"out of memory parsing relocs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.TYPE_8__**, i64*)* @slurp_rel_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slurp_rel_relocs(i32* %0, i64 %1, i64 %2, %struct.TYPE_8__** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load i64, i64* @is_32bit_elf, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %82

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = call %struct.TYPE_9__* @get_data(i32* null, i32* %20, i64 %21, i32 1, i64 %22, i32 %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %15, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %150

28:                                               ; preds = %19
  %29 = load i64, i64* %9, align 8
  %30 = udiv i64 %29, 8
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call %struct.TYPE_8__* @cmalloc(i64 %31, i32 24)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %12, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = icmp eq %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %37 = call i32 @free(%struct.TYPE_9__* %36)
  %38 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @error(i32 %38)
  store i32 0, i32* %6, align 4
  br label %150

40:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %76, %40
  %42 = load i32, i32* %14, align 4
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* %13, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %48 = load i32, i32* %14, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @BYTE_GET(i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %55 = load i32, i32* %14, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  store i8* %53, i8** %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %60 = load i32, i32* %14, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @BYTE_GET(i32 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %67 = load i32, i32* %14, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i8* %65, i8** %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %46
  %77 = load i32, i32* %14, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %41

79:                                               ; preds = %41
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %81 = call i32 @free(%struct.TYPE_9__* %80)
  br label %145

82:                                               ; preds = %5
  %83 = load i32*, i32** %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %87 = call %struct.TYPE_9__* @get_data(i32* null, i32* %83, i64 %84, i32 1, i64 %85, i32 %86)
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %16, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %150

91:                                               ; preds = %82
  %92 = load i64, i64* %9, align 8
  %93 = udiv i64 %92, 8
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* %13, align 8
  %95 = call %struct.TYPE_8__* @cmalloc(i64 %94, i32 24)
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %12, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %97 = icmp eq %struct.TYPE_8__* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %100 = call i32 @free(%struct.TYPE_9__* %99)
  %101 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %102 = call i32 @error(i32 %101)
  store i32 0, i32* %6, align 4
  br label %150

103:                                              ; preds = %91
  store i32 0, i32* %14, align 4
  br label %104

104:                                              ; preds = %139, %103
  %105 = load i32, i32* %14, align 4
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %13, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %104
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %111 = load i32, i32* %14, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @BYTE_GET(i32 %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %118 = load i32, i32* %14, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  store i8* %116, i8** %121, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %123 = load i32, i32* %14, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @BYTE_GET(i32 %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %130 = load i32, i32* %14, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  store i8* %128, i8** %133, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %135 = load i32, i32* %14, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i64 0, i64* %138, align 8
  br label %139

139:                                              ; preds = %109
  %140 = load i32, i32* %14, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %104

142:                                              ; preds = %104
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %144 = call i32 @free(%struct.TYPE_9__* %143)
  br label %145

145:                                              ; preds = %142, %79
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %147 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__* %146, %struct.TYPE_8__** %147, align 8
  %148 = load i64, i64* %13, align 8
  %149 = load i64*, i64** %11, align 8
  store i64 %148, i64* %149, align 8
  store i32 1, i32* %6, align 4
  br label %150

150:                                              ; preds = %145, %98, %90, %35, %27
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local %struct.TYPE_9__* @get_data(i32*, i32*, i64, i32, i64, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_8__* @cmalloc(i64, i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i8* @BYTE_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
