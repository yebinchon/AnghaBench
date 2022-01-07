; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_menuexitems.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_menuexitems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.TYPE_3__*, i8*, i32*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"menuitem header\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"menuitem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i32*, i32*, i32, i32*)* @bin_to_res_menuexitems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @bin_to_res_menuexitems(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_3__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__** %10, %struct.TYPE_3__*** %11, align 8
  %17 = load i32*, i32** %9, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %141, %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %142

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @toosmall(i32 %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = call i64 @res_alloc(i32 56)
  %29 = inttoptr i64 %28 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %15, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @windres_get_32(i32* %30, i32* %31, i32 4)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = call i8* @windres_get_32(i32* %35, i32* %37, i32 4)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  %44 = call i8* @windres_get_32(i32* %41, i32* %43, i32 4)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 12
  %50 = call i64 @windres_get_16(i32* %47, i32* %49, i32 2)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 14
  %55 = call i64 @windres_get_16(i32* %52, i32* %54, i32 2)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i32* null, i32** %59, align 8
  br label %69

60:                                               ; preds = %27
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 14
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 14
  %66 = call i32* @get_unicode(i32* %61, i32* %63, i32 %65, i32* %13)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  store i32* %66, i32** %68, align 8
  br label %69

69:                                               ; preds = %60, %57
  %70 = load i32, i32* %13, align 4
  %71 = mul nsw i32 %70, 2
  %72 = add nsw i32 14, %71
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 3
  %76 = and i32 %75, -4
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %82, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  store i8* null, i8** %84, align 8
  br label %118

85:                                               ; preds = %69
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 4
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %92 = call i32 @toosmall(i32 %91)
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i32*, i32** %6, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = call i8* @windres_get_32(i32* %94, i32* %98, i32 4)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 4
  store i32 %103, i32* %14, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 %109, %110
  %112 = call %struct.TYPE_3__* @bin_to_res_menuexitems(i32* %104, i32* %108, i32 %111, i32* %16)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store %struct.TYPE_3__* %112, %struct.TYPE_3__** %114, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %93, %80
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %120, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %122 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  store %struct.TYPE_3__* %121, %struct.TYPE_3__** %122, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store %struct.TYPE_3__** %124, %struct.TYPE_3__*** %11, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %7, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %8, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %132
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* %12, align 4
  %137 = and i32 %136, 128
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %118
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %140, %struct.TYPE_3__** %5, align 8
  br label %144

141:                                              ; preds = %118
  br label %18

142:                                              ; preds = %18
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %143, %struct.TYPE_3__** %5, align 8
  br label %144

144:                                              ; preds = %142, %139
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  ret %struct.TYPE_3__* %145
}

declare dso_local i32 @toosmall(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i8* @windres_get_32(i32*, i32*, i32) #1

declare dso_local i64 @windres_get_16(i32*, i32*, i32) #1

declare dso_local i32* @get_unicode(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
