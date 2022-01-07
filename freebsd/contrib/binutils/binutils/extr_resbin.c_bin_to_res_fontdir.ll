; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_fontdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_fontdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, %struct.TYPE_7__*, i8* }
%struct.bin_fontdir_item = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"fontdir header\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fontdir\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"fontdir device name\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"fontdir face name\00", align 1
@RES_TYPE_FONTDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, i8*, i32)* @bin_to_res_fontdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @bin_to_res_fontdir(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__**, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.bin_fontdir_item*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @toosmall(i32 %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @windres_get_16(i32* %21, i8* %22, i32 2)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %7, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__** %9, %struct.TYPE_7__*** %10, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %120, %20
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %123

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 56
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @toosmall(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to %struct.bin_fontdir_item*
  store %struct.bin_fontdir_item* %37, %struct.bin_fontdir_item** %12, align 8
  %38 = call i64 @res_alloc(i32 32)
  %39 = inttoptr i64 %38 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %13, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.bin_fontdir_item*, %struct.bin_fontdir_item** %12, align 8
  %42 = getelementptr inbounds %struct.bin_fontdir_item, %struct.bin_fontdir_item* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @windres_get_16(i32* %40, i8* %43, i32 2)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  store i32 56, i32* %14, align 4
  br label %47

47:                                               ; preds = %61, %35
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %14, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %51, %47
  %60 = phi i1 [ false, %47 ], [ %58, %51 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i32, i32* %14, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %47

64:                                               ; preds = %59
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp uge i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i32 @toosmall(i32 %69)
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* %14, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %88, %71
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %14, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %78, %74
  %87 = phi i1 [ false, %74 ], [ %85, %78 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i32, i32* %14, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %74

91:                                               ; preds = %86
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp uge i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %97 = call i32 @toosmall(i32 %96)
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i32, i32* %14, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %110 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* %109, %struct.TYPE_7__** %110, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  store %struct.TYPE_7__** %112, %struct.TYPE_7__*** %10, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i8*, i8** %5, align 8
  %115 = zext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %5, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %6, align 4
  %119 = sub i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %98
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %25

123:                                              ; preds = %25
  %124 = call i64 @res_alloc(i32 16)
  %125 = inttoptr i64 %124 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %125, %struct.TYPE_6__** %11, align 8
  %126 = load i32, i32* @RES_TYPE_FONTDIR, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store %struct.TYPE_7__* %129, %struct.TYPE_7__** %132, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  ret %struct.TYPE_6__* %133
}

declare dso_local i32 @toosmall(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @windres_get_16(i32*, i8*, i32) #1

declare dso_local i64 @res_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
