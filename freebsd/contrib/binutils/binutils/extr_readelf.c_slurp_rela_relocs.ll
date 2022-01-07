; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_slurp_rela_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_slurp_rela_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@is_32bit_elf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"relocs\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"out of memory parsing relocs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.TYPE_8__**, i64*)* @slurp_rela_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slurp_rela_relocs(i32* %0, i64 %1, i64 %2, %struct.TYPE_8__** %3, i64* %4) #0 {
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
  br i1 %18, label %19, label %89

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
  br label %164

28:                                               ; preds = %19
  %29 = load i64, i64* %9, align 8
  %30 = udiv i64 %29, 12
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
  br label %164

40:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %83, %40
  %42 = load i32, i32* %14, align 4
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* %13, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %48 = load i32, i32* %14, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
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
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @BYTE_GET(i32 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %67 = load i32, i32* %14, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i8* %65, i8** %70, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @BYTE_GET(i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %79 = load i32, i32* %14, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i8* %77, i8** %82, align 8
  br label %83

83:                                               ; preds = %46
  %84 = load i32, i32* %14, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %41

86:                                               ; preds = %41
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %88 = call i32 @free(%struct.TYPE_9__* %87)
  br label %159

89:                                               ; preds = %5
  %90 = load i32*, i32** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %94 = call %struct.TYPE_9__* @get_data(i32* null, i32* %90, i64 %91, i32 1, i64 %92, i32 %93)
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %16, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %96 = icmp ne %struct.TYPE_9__* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %89
  store i32 0, i32* %6, align 4
  br label %164

98:                                               ; preds = %89
  %99 = load i64, i64* %9, align 8
  %100 = udiv i64 %99, 12
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %13, align 8
  %102 = call %struct.TYPE_8__* @cmalloc(i64 %101, i32 24)
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %12, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %104 = icmp eq %struct.TYPE_8__* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %107 = call i32 @free(%struct.TYPE_9__* %106)
  %108 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %109 = call i32 @error(i32 %108)
  store i32 0, i32* %6, align 4
  br label %164

110:                                              ; preds = %98
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %153, %110
  %112 = load i32, i32* %14, align 4
  %113 = zext i32 %112 to i64
  %114 = load i64, i64* %13, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %156

116:                                              ; preds = %111
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %118 = load i32, i32* %14, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @BYTE_GET(i32 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %125 = load i32, i32* %14, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  store i8* %123, i8** %128, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %130 = load i32, i32* %14, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @BYTE_GET(i32 %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %137 = load i32, i32* %14, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  store i8* %135, i8** %140, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %142 = load i32, i32* %14, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @BYTE_GET(i32 %146)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %149 = load i32, i32* %14, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  store i8* %147, i8** %152, align 8
  br label %153

153:                                              ; preds = %116
  %154 = load i32, i32* %14, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %111

156:                                              ; preds = %111
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %158 = call i32 @free(%struct.TYPE_9__* %157)
  br label %159

159:                                              ; preds = %156, %86
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %161 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__* %160, %struct.TYPE_8__** %161, align 8
  %162 = load i64, i64* %13, align 8
  %163 = load i64*, i64** %11, align 8
  store i64 %162, i64* %163, align 8
  store i32 1, i32* %6, align 4
  br label %164

164:                                              ; preds = %159, %105, %97, %35, %27
  %165 = load i32, i32* %6, align 4
  ret i32 %165
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
