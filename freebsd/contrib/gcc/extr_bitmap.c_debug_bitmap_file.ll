; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_debug_bitmap_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_debug_bitmap_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32*, i64, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [36 x i8] c"\0Afirst = %p current = %p indx = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\09%p next = %p prev = %p indx = %u\0A\09\09bits = {\00", align 1
@BITMAP_ELEMENT_WORDS = common dso_local global i32 0, align 4
@BITMAP_WORD_BITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"\0A\09\09\09\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@BITMAP_ELEMENT_ALL_BITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_bitmap_file(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = bitcast %struct.TYPE_4__* %12 to i8*
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %17, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %5, align 8
  br label %25

25:                                               ; preds = %98, %2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %102

28:                                               ; preds = %25
  store i32 26, i32* %8, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = bitcast %struct.TYPE_4__* %30 to i8*
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = bitcast %struct.TYPE_4__* %34 to i8*
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %35, i8* %39, i32 %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %92, %28
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @BITMAP_ELEMENT_WORDS, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %95

48:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %88, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @BITMAP_WORD_BITS, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %91

53:                                               ; preds = %49
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = lshr i32 %60, %61
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %53
  %66 = load i32, i32* %8, align 4
  %67 = icmp ugt i32 %66, 70
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 24, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BITMAP_ELEMENT_ALL_BITS, align 4
  %77 = mul i32 %75, %76
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @BITMAP_WORD_BITS, align 4
  %80 = mul i32 %78, %79
  %81 = add i32 %77, %80
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %81, %82
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = add i32 %85, 4
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %71, %53
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %49

91:                                               ; preds = %49
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %44

95:                                               ; preds = %44
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  store %struct.TYPE_4__* %101, %struct.TYPE_4__** %5, align 8
  br label %25

102:                                              ; preds = %25
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
