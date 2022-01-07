; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_sub.c_apply_subst_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_sub.c_apply_subst_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@rhbuf = common dso_local global i8* null, align 8
@rhbufi = common dso_local global i32 0, align 4
@rbuf = common dso_local global i8* null, align 8
@rbufsz = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_subst_template(i8* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** @rhbuf, align 8
  store i8* %13, i8** %12, align 8
  br label %14

14:                                               ; preds = %141, %4
  %15 = load i8*, i8** %12, align 8
  %16 = load i8*, i8** @rhbuf, align 8
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = load i32, i32* @rhbufi, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %23, label %144

23:                                               ; preds = %14
  %24 = load i8*, i8** %12, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 38
  br i1 %27, label %28, label %63

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i8*, i8** @rbuf, align 8
  %38 = load i32, i32* @rbufsz, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* @ERR, align 4
  %45 = call i32 @REALLOC(i8* %37, i32 %38, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %50, %28
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** @rbuf, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 %56, i8* %61, align 1
  br label %46

62:                                               ; preds = %46
  br label %140

63:                                               ; preds = %23
  %64 = load i8*, i8** %12, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 92
  br i1 %67, label %68, label %125

68:                                               ; preds = %63
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %12, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sle i32 49, %72
  br i1 %73, label %74, label %125

74:                                               ; preds = %68
  %75 = load i8*, i8** %12, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sle i32 %77, 57
  br i1 %78, label %79, label %125

79:                                               ; preds = %74
  %80 = load i8*, i8** %12, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = sub nsw i32 %82, 48
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %125

86:                                               ; preds = %79
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  %99 = load i8*, i8** @rbuf, align 8
  %100 = load i32, i32* @rbufsz, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %9, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* @ERR, align 4
  %107 = call i32 @REALLOC(i8* %99, i32 %100, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %112, %86
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %108
  %113 = load i8*, i8** %5, align 8
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = load i8*, i8** @rbuf, align 8
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  store i8 %118, i8* %123, align 1
  br label %108

124:                                              ; preds = %108
  br label %139

125:                                              ; preds = %79, %74, %68, %63
  %126 = load i8*, i8** @rbuf, align 8
  %127 = load i32, i32* @rbufsz, align 4
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* @ERR, align 4
  %131 = call i32 @REALLOC(i8* %126, i32 %127, i32 %129, i32 %130)
  %132 = load i8*, i8** %12, align 8
  %133 = load i8, i8* %132, align 1
  %134 = load i8*, i8** @rbuf, align 8
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8 %133, i8* %138, align 1
  br label %139

139:                                              ; preds = %125, %124
  br label %140

140:                                              ; preds = %139, %62
  br label %141

141:                                              ; preds = %140
  %142 = load i8*, i8** %12, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %12, align 8
  br label %14

144:                                              ; preds = %14
  %145 = load i8*, i8** @rbuf, align 8
  %146 = load i32, i32* @rbufsz, align 4
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* @ERR, align 4
  %150 = call i32 @REALLOC(i8* %145, i32 %146, i32 %148, i32 %149)
  %151 = load i8*, i8** @rbuf, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i32 @REALLOC(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
