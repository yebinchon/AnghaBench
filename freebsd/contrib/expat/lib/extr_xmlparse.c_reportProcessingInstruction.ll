; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_reportProcessingInstruction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_reportProcessingInstruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 (i32, i32*, i32*)*, i64 }
%struct.TYPE_11__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i8*, i8*)* @reportProcessingInstruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reportProcessingInstruction(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %14, align 8
  %16 = icmp ne i32 (i32, i32*, i32*)* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @reportDefault(%struct.TYPE_10__* %23, %struct.TYPE_11__* %24, i8* %25, i8* %26)
  br label %28

28:                                               ; preds = %22, %17
  store i32 1, i32* %5, align 4
  br label %91

29:                                               ; preds = %4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 2
  %34 = load i8*, i8** %8, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @XmlNameLength(%struct.TYPE_11__* %38, i8* %39)
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  store i8* %42, i8** %12, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i8* @poolStoreString(i32* %44, %struct.TYPE_11__* %45, i8* %46, i8* %47)
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %91

53:                                               ; preds = %29
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = call i32 @poolFinish(i32* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = call i8* @XmlSkipS(%struct.TYPE_11__* %60, i8* %61)
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i8, i8* %63, i64 %69
  %71 = call i8* @poolStoreString(i32* %58, %struct.TYPE_11__* %59, i8* %62, i8* %70)
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** %11, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %91

76:                                               ; preds = %53
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @normalizeLines(i32* %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 %81(i32 %84, i32* %85, i32* %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = call i32 @poolClear(i32* %89)
  store i32 1, i32* %5, align 4
  br label %91

91:                                               ; preds = %76, %75, %52, %28
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @reportDefault(%struct.TYPE_10__*, %struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @XmlNameLength(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @poolStoreString(i32*, %struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @poolFinish(i32*) #1

declare dso_local i8* @XmlSkipS(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @normalizeLines(i32*) #1

declare dso_local i32 @poolClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
