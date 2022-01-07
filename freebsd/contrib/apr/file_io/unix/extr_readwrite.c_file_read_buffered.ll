; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/file_io/unix/extr_readwrite.c_file_read_buffered.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/file_io/unix/extr_readwrite.c_file_read_buffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32, i64, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@APR_EOF = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i8*, i32*)* @file_read_buffered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @file_read_buffered(%struct.TYPE_4__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %11, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %35

21:                                               ; preds = %3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = call i64 @apr_file_flush_locked(%struct.TYPE_4__* %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %4, align 8
  br label %166

28:                                               ; preds = %21
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %28, %3
  store i64 0, i64* %8, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %9, align 8
  store i8 %44, i8* %45, align 1
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %11, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i32 -1, i32* %51, align 8
  br label %52

52:                                               ; preds = %40, %35
  br label %53

53:                                               ; preds = %129, %52
  %54 = load i64, i64* %8, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* %11, align 8
  %58 = icmp sgt i64 %57, 0
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i1 [ false, %53 ], [ %58, %56 ]
  br i1 %60, label %61, label %152

61:                                               ; preds = %59
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %109

69:                                               ; preds = %61
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @read(i32 %72, i64 %75, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %69
  %83 = load i32, i32* @TRUE, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load i64, i64* @APR_EOF, align 8
  store i64 %86, i64* %8, align 8
  br label %152

87:                                               ; preds = %69
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i64, i64* @errno, align 8
  store i64 %91, i64* %8, align 8
  br label %152

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %93, %61
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  %118 = icmp sgt i64 %110, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %109
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %122, %125
  br label %129

127:                                              ; preds = %109
  %128 = load i64, i64* %11, align 8
  br label %129

129:                                              ; preds = %127, %119
  %130 = phi i64 [ %126, %119 ], [ %128, %127 ]
  store i64 %130, i64* %10, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %134, %137
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @memcpy(i8* %131, i64 %138, i64 %139)
  %141 = load i64, i64* %10, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, %141
  store i64 %145, i64* %143, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 %146
  store i8* %148, i8** %9, align 8
  %149 = load i64, i64* %10, align 8
  %150 = load i64, i64* %11, align 8
  %151 = sub nsw i64 %150, %149
  store i64 %151, i64* %11, align 8
  br label %53

152:                                              ; preds = %90, %82, %59
  %153 = load i8*, i8** %9, align 8
  %154 = load i8*, i8** %6, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = trunc i64 %157 to i32
  %159 = load i32*, i32** %7, align 8
  store i32 %158, i32* %159, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %152
  store i64 0, i64* %8, align 8
  br label %164

164:                                              ; preds = %163, %152
  %165 = load i64, i64* %8, align 8
  store i64 %165, i64* %4, align 8
  br label %166

166:                                              ; preds = %164, %26
  %167 = load i64, i64* %4, align 8
  ret i64 %167
}

declare dso_local i64 @apr_file_flush_locked(%struct.TYPE_4__*) #1

declare dso_local i32 @read(i32, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
