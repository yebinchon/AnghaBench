; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_rcdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_res_to_bin_rcdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_11__*)* @res_to_bin_rcdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_to_bin_rcdata(i32* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %7, align 8
  br label %13

13:                                               ; preds = %126, %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %130

16:                                               ; preds = %13
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %20 [
    i32 129, label %22
    i32 131, label %23
    i32 130, label %24
    i32 128, label %30
    i32 132, label %39
  ]

20:                                               ; preds = %16
  %21 = call i32 (...) @abort() #3
  unreachable

22:                                               ; preds = %16
  store i32 2, i32* %8, align 4
  br label %45

23:                                               ; preds = %16
  store i32 4, i32* %8, align 4
  br label %45

24:                                               ; preds = %16
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  br label %45

30:                                               ; preds = %16
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  br label %45

39:                                               ; preds = %16
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %39, %30, %24, %23, %22
  %46 = load i32*, i32** %4, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %122

48:                                               ; preds = %45
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32* %49, i32** %10, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %116 [
    i32 129, label %53
    i32 131, label %61
    i32 130, label %69
    i32 128, label %76
    i32 132, label %109
  ]

53:                                               ; preds = %48
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @windres_put_16(i32* %54, i32* %55, i32 %59)
  br label %116

61:                                               ; preds = %48
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @windres_put_32(i32* %62, i32* %63, i32 %67)
  br label %116

69:                                               ; preds = %48
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %10, align 8
  br label %116

76:                                               ; preds = %48
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @reswr_alloc(i32 %77)
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %105, %76
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %81, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %80
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @windres_put_16(i32* %89, i32* %94, i32 %103)
  br label %105

105:                                              ; preds = %88
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %80

108:                                              ; preds = %80
  br label %116

109:                                              ; preds = %48
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i32*
  store i32* %115, i32** %10, align 8
  br label %116

116:                                              ; preds = %48, %109, %108, %69, %61, %53
  %117 = load i32*, i32** %4, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @set_windres_bfd_content(i32* %117, i32* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %116, %45
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %122
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %7, align 8
  br label %13

130:                                              ; preds = %13
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @windres_put_16(i32*, i32*, i32) #2

declare dso_local i32 @windres_put_32(i32*, i32*, i32) #2

declare dso_local i64 @reswr_alloc(i32) #2

declare dso_local i32 @set_windres_bfd_content(i32*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
