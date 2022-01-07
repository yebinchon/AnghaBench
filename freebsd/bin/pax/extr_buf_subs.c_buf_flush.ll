; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_buf_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_buf_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@wrlimit = common dso_local global i64 0, align 8
@wrcnt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"User specified archive volume byte limit reached.\00", align 1
@exit_val = common dso_local global i32 0, align 4
@buf = common dso_local global i64 0, align 8
@blksz = common dso_local global i32 0, align 4
@bufend = common dso_local global i64 0, align 8
@bufpt = common dso_local global i64 0, align 8
@frmt = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buf_flush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* @wrlimit, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load i64, i64* @wrcnt, align 8
  %11 = load i64, i64* @wrlimit, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %15 = call i64 (...) @ar_next()
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i64 0, i64* @wrcnt, align 8
  store i32 1, i32* @exit_val, align 4
  store i32 -1, i32* %2, align 4
  br label %139

18:                                               ; preds = %13
  store i64 0, i64* @wrcnt, align 8
  %19 = load i64, i64* @buf, align 8
  %20 = load i32, i32* @blksz, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  store i64 %22, i64* @bufend, align 8
  %23 = load i32, i32* @blksz, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %139

27:                                               ; preds = %18
  %28 = load i32, i32* @blksz, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @blksz, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %9, %1
  br label %37

37:                                               ; preds = %137, %66, %36
  %38 = load i64, i64* @buf, align 8
  %39 = load i32, i32* @blksz, align 4
  %40 = call i32 @ar_write(i64 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @blksz, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @wrcnt, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* @wrcnt, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %44
  %55 = load i64, i64* @buf, align 8
  %56 = load i64, i64* @bufend, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @memcpy(i64 %55, i64 %56, i32 %57)
  %59 = load i64, i64* @buf, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  store i64 %62, i64* @bufpt, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @blksz, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load i32, i32* @blksz, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %37

70:                                               ; preds = %54
  br label %73

71:                                               ; preds = %44
  %72 = load i64, i64* @buf, align 8
  store i64 %72, i64* @bufpt, align 8
  br label %73

73:                                               ; preds = %71, %70
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %139

75:                                               ; preds = %37
  %76 = load i32, i32* %4, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %115

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* @wrcnt, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* @wrcnt, align 8
  %86 = load i64, i64* @buf, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  store i64 %89, i64* @bufpt, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %4, align 4
  %93 = load i64, i64* @buf, align 8
  %94 = load i64, i64* @bufpt, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @memcpy(i64 %93, i64 %94, i32 %95)
  %97 = load i64, i64* @buf, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  store i64 %100, i64* @bufpt, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frmt, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %78
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frmt, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = srem i32 %106, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105, %78
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %139

114:                                              ; preds = %105
  br label %138

115:                                              ; preds = %75
  br label %116

116:                                              ; preds = %115
  store i64 0, i64* @wrcnt, align 8
  %117 = call i64 (...) @ar_next()
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %138

120:                                              ; preds = %116
  %121 = load i64, i64* @buf, align 8
  %122 = load i32, i32* @blksz, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %121, %123
  store i64 %124, i64* @bufend, align 8
  %125 = load i32, i32* @blksz, align 4
  %126 = load i32, i32* %3, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 0, i32* %2, align 4
  br label %139

129:                                              ; preds = %120
  %130 = load i32, i32* @blksz, align 4
  %131 = load i32, i32* %3, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @blksz, align 4
  %136 = sub nsw i32 %134, %135
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %129
  br label %37

138:                                              ; preds = %119, %114
  store i32 1, i32* @exit_val, align 4
  store i32 -1, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %128, %112, %73, %26, %17
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @paxwarn(i32, i8*) #1

declare dso_local i64 @ar_next(...) #1

declare dso_local i32 @ar_write(i64, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
