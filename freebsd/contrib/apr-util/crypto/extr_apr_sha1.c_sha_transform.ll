; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/crypto/extr_apr_sha1.c_sha_transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/crypto/extr_apr_sha1.c_sha_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @sha_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha_transform(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [80 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %23
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %11

28:                                               ; preds = %11
  store i32 16, i32* %3, align 4
  br label %29

29:                                               ; preds = %59, %28
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 80
  br i1 %31, label %32, label %62

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %33, 3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %37, %42
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %44, 14
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %43, %48
  %50 = load i32, i32* %3, align 4
  %51 = sub nsw i32 %50, 16
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %49, %54
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %57
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %32
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %29

62:                                               ; preds = %29
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %6, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %7, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %8, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %94, %62
  %89 = load i32, i32* %3, align 4
  %90 = icmp slt i32 %89, 20
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @FUNC(i32 1, i32 %92)
  br label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %88

97:                                               ; preds = %88
  store i32 20, i32* %3, align 4
  br label %98

98:                                               ; preds = %104, %97
  %99 = load i32, i32* %3, align 4
  %100 = icmp slt i32 %99, 40
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @FUNC(i32 2, i32 %102)
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %98

107:                                              ; preds = %98
  store i32 40, i32* %3, align 4
  br label %108

108:                                              ; preds = %114, %107
  %109 = load i32, i32* %3, align 4
  %110 = icmp slt i32 %109, 60
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @FUNC(i32 3, i32 %112)
  br label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  br label %108

117:                                              ; preds = %108
  store i32 60, i32* %3, align 4
  br label %118

118:                                              ; preds = %124, %117
  %119 = load i32, i32* %3, align 4
  %120 = icmp slt i32 %119, 80
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @FUNC(i32 4, i32 %122)
  br label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %118

127:                                              ; preds = %118
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %128
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %135
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %142
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %149
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 4
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %156
  store i32 %162, i32* %160, align 4
  ret void
}

declare dso_local i32 @FUNC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
