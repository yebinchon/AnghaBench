; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_copyEntityTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_copyEntityTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @copyEntityTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyEntityTable(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_2__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @hashTableIterInit(i32* %10, i32* %19)
  br label %21

21:                                               ; preds = %150, %4
  %22 = call i64 @hashTableIterNext(i32* %10)
  %23 = inttoptr i64 %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %15, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %161

27:                                               ; preds = %21
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i32* @poolCopyString(i32* %28, i32* %31)
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %162

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i64 @lookup(i32 %37, i32* %38, i32* %39, i32 64)
  %41 = inttoptr i64 %40 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %13, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %162

45:                                               ; preds = %36
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 7
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %111

50:                                               ; preds = %45
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 7
  %54 = load i32*, i32** %53, align 8
  %55 = call i32* @poolCopyString(i32* %51, i32* %54)
  store i32* %55, i32** %16, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %162

59:                                               ; preds = %50
  %60 = load i32*, i32** %16, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 7
  store i32* %60, i32** %62, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %92

67:                                               ; preds = %59
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = icmp eq i32* %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32*, i32** %12, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 6
  store i32* %74, i32** %76, align 8
  br label %91

77:                                               ; preds = %67
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %11, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = call i32* @poolCopyString(i32* %81, i32* %82)
  store i32* %83, i32** %16, align 8
  %84 = load i32*, i32** %16, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %162

87:                                               ; preds = %77
  %88 = load i32*, i32** %16, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 6
  store i32* %88, i32** %90, align 8
  store i32* %88, i32** %12, align 8
  br label %91

91:                                               ; preds = %87, %73
  br label %92

92:                                               ; preds = %91, %59
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = call i32* @poolCopyString(i32* %98, i32* %101)
  store i32* %102, i32** %16, align 8
  %103 = load i32*, i32** %16, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %162

106:                                              ; preds = %97
  %107 = load i32*, i32** %16, align 8
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 5
  store i32* %107, i32** %109, align 8
  br label %110

110:                                              ; preds = %106, %92
  br label %132

111:                                              ; preds = %45
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32* @poolCopyStringN(i32* %112, i32* %115, i32 %118)
  store i32* %119, i32** %17, align 8
  %120 = load i32*, i32** %17, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %162

123:                                              ; preds = %111
  %124 = load i32*, i32** %17, align 8
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 4
  store i32* %124, i32** %126, align 8
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %123, %110
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %150

137:                                              ; preds = %132
  %138 = load i32*, i32** %8, align 8
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32* @poolCopyString(i32* %138, i32* %141)
  store i32* %142, i32** %18, align 8
  %143 = load i32*, i32** %18, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %137
  store i32 0, i32* %5, align 4
  br label %162

146:                                              ; preds = %137
  %147 = load i32*, i32** %18, align 8
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  store i32* %147, i32** %149, align 8
  br label %150

150:                                              ; preds = %146, %132
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  br label %21

161:                                              ; preds = %26
  store i32 1, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %145, %122, %105, %86, %58, %44, %35
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @hashTableIterInit(i32*, i32*) #1

declare dso_local i64 @hashTableIterNext(i32*) #1

declare dso_local i32* @poolCopyString(i32*, i32*) #1

declare dso_local i64 @lookup(i32, i32*, i32*, i32) #1

declare dso_local i32* @poolCopyStringN(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
