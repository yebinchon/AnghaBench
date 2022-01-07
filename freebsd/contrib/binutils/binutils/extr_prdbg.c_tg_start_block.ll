; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_tg_start_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_tg_start_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i64, i8*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i8*, i64*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"%s\09%s\09\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c";\22\09kind:%c\09type:%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\09file:\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\09class:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @tg_start_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg_start_block(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pr_handle*, align 8
  %7 = alloca [20 x i8], align 16
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.pr_handle*
  store %struct.pr_handle* %13, %struct.pr_handle** %6, align 8
  %14 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %15 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %135

18:                                               ; preds = %2
  %19 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %20 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %22 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %25 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %30 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %31)
  %33 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %34 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %41 = load i32, i32* @TRUE, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @print_vma(i32 %39, i8* %40, i32 %41, i32 %42)
  %44 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %45 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %48 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %49 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %52 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @translate_addresses(i32 %46, i8* %47, i32 %50, i32 %53)
  %55 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %56 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %63 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %18
  %69 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %70 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  store i8 109, i8* %8, align 1
  %77 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %78 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = bitcast i64* %81 to i8*
  store i8* %82, i8** %9, align 8
  br label %97

83:                                               ; preds = %68, %18
  store i8 102, i8* %8, align 1
  store i8* null, i8** %9, align 8
  %84 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %85 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %83
  %91 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %92 = call i32 @append_type(%struct.pr_handle* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @FALSE, align 4
  store i32 %95, i32* %3, align 4
  br label %137

96:                                               ; preds = %90, %83
  br label %97

97:                                               ; preds = %96, %76
  %98 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %99 = call i8* @pop_type(%struct.pr_handle* %98)
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %3, align 4
  br label %137

104:                                              ; preds = %97
  %105 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %106 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i8, i8* %8, align 1
  %109 = sext i8 %108 to i32
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %109, i8* %110)
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %116 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %114, %104
  %120 = load i8*, i8** %9, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %124 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %126)
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @free(i8* %128)
  br label %130

130:                                              ; preds = %122, %119
  %131 = load %struct.pr_handle*, %struct.pr_handle** %6, align 8
  %132 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @fputc(i8 signext 10, i32 %133)
  br label %135

135:                                              ; preds = %130, %2
  %136 = load i32, i32* @TRUE, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %102, %94
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @print_vma(i32, i8*, i32, i32) #1

declare dso_local i32 @translate_addresses(i32, i8*, i32, i32) #1

declare dso_local i32 @append_type(%struct.pr_handle*, i8*) #1

declare dso_local i8* @pop_type(%struct.pr_handle*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
