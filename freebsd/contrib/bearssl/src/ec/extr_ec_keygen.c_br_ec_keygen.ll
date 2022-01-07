; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_keygen.c_br_ec_keygen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_keygen.c_br_ec_keygen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__**, i8*, i64)* }
%struct.TYPE_10__ = type { i32, i8* (i32, i64*)* }
%struct.TYPE_9__ = type { i32, i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_ec_keygen(%struct.TYPE_8__** %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = icmp sge i32 %22, 32
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = ashr i32 %27, %28
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24, %21, %5
  store i64 0, i64* %6, align 8
  br label %147

33:                                               ; preds = %24
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i8* (i32, i64*)*, i8* (i32, i64*)** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i8* %36(i32 %37, i64* %14)
  store i8* %38, i8** %12, align 8
  br label %39

39:                                               ; preds = %49, %33
  %40 = load i64, i64* %14, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i8*, i8** %12, align 8
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ]
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %12, align 8
  %52 = load i64, i64* %14, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %14, align 8
  br label %39

54:                                               ; preds = %47
  %55 = load i8*, i8** %10, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %14, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %54
  %61 = load i64, i64* %14, align 8
  store i64 %61, i64* %6, align 8
  br label %147

62:                                               ; preds = %57
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = lshr i32 %67, 1
  %69 = load i32, i32* %15, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = lshr i32 %71, 2
  %73 = load i32, i32* %15, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = lshr i32 %75, 4
  %77 = load i32, i32* %15, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %15, align 4
  %79 = load i8*, i8** %10, align 8
  store i8* %79, i8** %13, align 8
  br label %80

80:                                               ; preds = %131, %62
  %81 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_8__**, i8*, i64)*, i32 (%struct.TYPE_8__**, i8*, i64)** %83, align 8
  %85 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call i32 %84(%struct.TYPE_8__** %85, i8* %86, i64 %87)
  %89 = load i32, i32* %15, align 4
  %90 = load i8*, i8** %13, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, %89
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %91, align 1
  store i32 0, i32* %17, align 4
  %96 = load i64, i64* %14, align 8
  store i64 %96, i64* %16, align 8
  store i32 0, i32* %18, align 4
  br label %97

97:                                               ; preds = %101, %80
  %98 = load i64, i64* %16, align 8
  %99 = add i64 %98, -1
  store i64 %99, i64* %16, align 8
  %100 = icmp ugt i64 %98, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %97
  %102 = load i8*, i8** %13, align 8
  %103 = load i64, i64* %16, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8*, i8** %12, align 8
  %108 = load i64, i64* %16, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = sub nsw i32 %106, %111
  %113 = load i32, i32* %17, align 4
  %114 = sub i32 %112, %113
  %115 = lshr i32 %114, 8
  %116 = and i32 %115, 1
  store i32 %116, i32* %17, align 4
  %117 = load i8*, i8** %13, align 8
  %118 = load i64, i64* %16, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, i32* %18, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %18, align 4
  br label %97

124:                                              ; preds = %97
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %132

131:                                              ; preds = %127, %124
  br label %80

132:                                              ; preds = %130
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %134 = icmp ne %struct.TYPE_9__* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i8*, i8** %13, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load i64, i64* %14, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %135, %132
  %146 = load i64, i64* %14, align 8
  store i64 %146, i64* %6, align 8
  br label %147

147:                                              ; preds = %145, %60, %32
  %148 = load i64, i64* %6, align 8
  ret i64 %148
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
