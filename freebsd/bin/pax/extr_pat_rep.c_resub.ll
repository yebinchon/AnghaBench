; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_pat_rep.c_resub.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_pat_rep.c_resub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i8*, i8*, i8*, i8*)* @resub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resub(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load i8*, i8** %11, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** %12, align 8
  store i8* %21, i8** %15, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %19, align 4
  br label %25

25:                                               ; preds = %143, %114, %89, %6
  %26 = load i8*, i8** %15, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i8*, i8** %14, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %14, align 8
  %32 = load i8, i8* %30, align 1
  store i8 %32, i8* %16, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i1 [ false, %25 ], [ %34, %29 ]
  br i1 %36, label %37, label %148

37:                                               ; preds = %35
  %38 = load i8, i8* %16, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 38
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %17, align 8
  br label %94

43:                                               ; preds = %37
  %44 = load i8, i8* %16, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load i8*, i8** %14, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 48
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load i8*, i8** %14, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sle i32 %55, 57
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load i8*, i8** %14, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %14, align 8
  %60 = load i8, i8* %58, align 1
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %61, 48
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 -1, i32* %7, align 4
  br label %155

66:                                               ; preds = %57
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %17, align 8
  br label %93

71:                                               ; preds = %52, %47, %43
  %72 = load i8, i8* %16, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 92
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load i8*, i8** %14, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 92
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i8*, i8** %14, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 38
  br i1 %84, label %85, label %89

85:                                               ; preds = %80, %75
  %86 = load i8*, i8** %14, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %14, align 8
  %88 = load i8, i8* %86, align 1
  store i8 %88, i8* %16, align 1
  br label %89

89:                                               ; preds = %85, %80, %71
  %90 = load i8, i8* %16, align 1
  %91 = load i8*, i8** %15, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %15, align 8
  store i8 %90, i8* %91, align 1
  br label %25

93:                                               ; preds = %66
  br label %94

94:                                               ; preds = %93, %41
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %107, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %18, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104, %99, %94
  br label %25

115:                                              ; preds = %104
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = load i8*, i8** %13, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = icmp sgt i64 %117, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %115
  %125 = load i8*, i8** %13, align 8
  %126 = load i8*, i8** %15, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %18, align 4
  br label %131

131:                                              ; preds = %124, %115
  %132 = load i8*, i8** %15, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  %138 = load i32, i32* %18, align 4
  %139 = call i32 @l_strncpy(i8* %132, i8* %137, i32 %138)
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  store i32 -1, i32* %7, align 4
  br label %155

143:                                              ; preds = %131
  %144 = load i32, i32* %18, align 4
  %145 = load i8*, i8** %15, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8* %147, i8** %15, align 8
  br label %25

148:                                              ; preds = %35
  %149 = load i8*, i8** %15, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %148, %142, %65
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @l_strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
