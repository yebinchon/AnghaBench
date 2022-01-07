; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_handleUnknownEncoding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_handleUnknownEncoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 (i32*)*, i32*, i32, i64, i32, i64 (i32, i32*, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i32*, i32*, i32 (i32*)*, i32* }

@XML_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@XML_ERROR_NONE = common dso_local global i32 0, align 4
@XML_ERROR_UNKNOWN_ENCODING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @handleUnknownEncoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handleUnknownEncoding(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 6
  %11 = load i64 (i32, i32*, %struct.TYPE_7__*)*, i64 (i32, i32*, %struct.TYPE_7__*)** %10, align 8
  %12 = icmp ne i64 (i32, i32*, %struct.TYPE_7__*)* %11, null
  br i1 %12, label %13, label %105

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %23, %13
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 -1, i32* %22, align 4
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %14

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 (i32*)* null, i32 (i32*)** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  %32 = load i64 (i32, i32*, %struct.TYPE_7__*)*, i64 (i32, i32*, %struct.TYPE_7__*)** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i64 %32(i32 %35, i32* %36, %struct.TYPE_7__* %6)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %94

39:                                               ; preds = %26
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = call i32 (...) @XmlSizeOfUnknownEncoding()
  %42 = call i32 @MALLOC(%struct.TYPE_6__* %40, i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %51 = load i32 (i32*)*, i32 (i32*)** %50, align 8
  %52 = icmp ne i32 (i32*)* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %55 = load i32 (i32*)*, i32 (i32*)** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 %55(i32* %57)
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i32, i32* @XML_ERROR_NO_MEMORY, align 4
  store i32 %60, i32* %3, align 4
  br label %107

61:                                               ; preds = %39
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32* (i32, i32*, i32*, i32*)* @XmlInitUnknownEncodingNS, i32* (i32, i32*, i32*, i32*)* @XmlInitUnknownEncoding
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32* %67(i32 %70, i32* %72, i32* %74, i32* %76)
  store i32* %77, i32** %8, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %61
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i32* %82, i32** %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %86 = load i32 (i32*)*, i32 (i32*)** %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i32 (i32*)* %86, i32 (i32*)** %88, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32* %89, i32** %91, align 8
  %92 = load i32, i32* @XML_ERROR_NONE, align 4
  store i32 %92, i32* %3, align 4
  br label %107

93:                                               ; preds = %61
  br label %94

94:                                               ; preds = %93, %26
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %96 = load i32 (i32*)*, i32 (i32*)** %95, align 8
  %97 = icmp ne i32 (i32*)* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %100 = load i32 (i32*)*, i32 (i32*)** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 %100(i32* %102)
  br label %104

104:                                              ; preds = %98, %94
  br label %105

105:                                              ; preds = %104, %2
  %106 = load i32, i32* @XML_ERROR_UNKNOWN_ENCODING, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %80, %59
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @MALLOC(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @XmlSizeOfUnknownEncoding(...) #1

declare dso_local i32* @XmlInitUnknownEncodingNS(i32, i32*, i32*, i32*) #1

declare dso_local i32* @XmlInitUnknownEncoding(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
