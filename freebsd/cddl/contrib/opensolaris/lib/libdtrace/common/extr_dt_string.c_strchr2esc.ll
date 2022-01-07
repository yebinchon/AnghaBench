; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_string.c_strchr2esc.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_string.c_strchr2esc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strchr2esc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %39, %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = icmp ult i8* %13, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %9, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %26 [
    i32 0, label %22
    i32 7, label %22
    i32 8, label %22
    i32 12, label %22
    i32 10, label %22
    i32 13, label %22
    i32 9, label %22
    i32 11, label %22
    i32 34, label %22
    i32 92, label %22
    i32 32, label %25
  ]

22:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %10, align 8
  br label %38

25:                                               ; preds = %18
  br label %38

26:                                               ; preds = %18
  %27 = load i8, i8* %9, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp slt i32 %28, 33
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i8, i8* %9, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sgt i32 %32, 126
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %34, %30
  br label %38

38:                                               ; preds = %37, %25, %22
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  br label %12

42:                                               ; preds = %12
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %43, %44
  %46 = add i64 %45, 1
  %47 = call i8* @malloc(i64 %46)
  store i8* %47, i8** %8, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i8* null, i8** %3, align 8
  br label %168

50:                                               ; preds = %42
  %51 = load i8*, i8** %4, align 8
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** %7, align 8
  br label %53

53:                                               ; preds = %162, %50
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = icmp ult i8* %54, %57
  br i1 %58, label %59, label %165

59:                                               ; preds = %53
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %9, align 1
  %62 = sext i8 %61 to i32
  switch i32 %62, label %117 [
    i32 0, label %63
    i32 7, label %68
    i32 8, label %73
    i32 12, label %78
    i32 10, label %83
    i32 13, label %88
    i32 9, label %93
    i32 11, label %98
    i32 34, label %103
    i32 92, label %108
    i32 32, label %113
  ]

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  store i8 92, i8* %64, align 1
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %7, align 8
  store i8 48, i8* %66, align 1
  br label %156

68:                                               ; preds = %59
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  store i8 92, i8* %69, align 1
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %7, align 8
  store i8 97, i8* %71, align 1
  br label %156

73:                                               ; preds = %59
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %7, align 8
  store i8 92, i8* %74, align 1
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %7, align 8
  store i8 98, i8* %76, align 1
  br label %156

78:                                               ; preds = %59
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  store i8 92, i8* %79, align 1
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %7, align 8
  store i8 102, i8* %81, align 1
  br label %156

83:                                               ; preds = %59
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %7, align 8
  store i8 92, i8* %84, align 1
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %7, align 8
  store i8 110, i8* %86, align 1
  br label %156

88:                                               ; preds = %59
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %7, align 8
  store i8 92, i8* %89, align 1
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %7, align 8
  store i8 114, i8* %91, align 1
  br label %156

93:                                               ; preds = %59
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %7, align 8
  store i8 92, i8* %94, align 1
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %7, align 8
  store i8 116, i8* %96, align 1
  br label %156

98:                                               ; preds = %59
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %7, align 8
  store i8 92, i8* %99, align 1
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %7, align 8
  store i8 118, i8* %101, align 1
  br label %156

103:                                              ; preds = %59
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %7, align 8
  store i8 92, i8* %104, align 1
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %7, align 8
  store i8 34, i8* %106, align 1
  br label %156

108:                                              ; preds = %59
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %7, align 8
  store i8 92, i8* %109, align 1
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %7, align 8
  store i8 92, i8* %111, align 1
  br label %156

113:                                              ; preds = %59
  %114 = load i8, i8* %9, align 1
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %7, align 8
  store i8 %114, i8* %115, align 1
  br label %156

117:                                              ; preds = %59
  %118 = load i8, i8* %9, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp slt i32 %119, 33
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i8, i8* %9, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp sgt i32 %123, 126
  br i1 %124, label %125, label %151

125:                                              ; preds = %121, %117
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %7, align 8
  store i8 92, i8* %126, align 1
  %128 = load i8, i8* %9, align 1
  %129 = sext i8 %128 to i32
  %130 = ashr i32 %129, 6
  %131 = and i32 %130, 3
  %132 = add nsw i32 %131, 48
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %7, align 8
  store i8 %133, i8* %134, align 1
  %136 = load i8, i8* %9, align 1
  %137 = sext i8 %136 to i32
  %138 = ashr i32 %137, 3
  %139 = and i32 %138, 7
  %140 = add nsw i32 %139, 48
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %7, align 8
  store i8 %141, i8* %142, align 1
  %144 = load i8, i8* %9, align 1
  %145 = sext i8 %144 to i32
  %146 = and i32 %145, 7
  %147 = add nsw i32 %146, 48
  %148 = trunc i32 %147 to i8
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %7, align 8
  store i8 %148, i8* %149, align 1
  br label %155

151:                                              ; preds = %121
  %152 = load i8, i8* %9, align 1
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %7, align 8
  store i8 %152, i8* %153, align 1
  br label %155

155:                                              ; preds = %151, %125
  br label %156

156:                                              ; preds = %155, %113, %108, %103, %98, %93, %88, %83, %78, %73, %68, %63
  %157 = load i8, i8* %9, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %165

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161
  %163 = load i8*, i8** %6, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %6, align 8
  br label %53

165:                                              ; preds = %160, %53
  %166 = load i8*, i8** %7, align 8
  store i8 0, i8* %166, align 1
  %167 = load i8*, i8** %8, align 8
  store i8* %167, i8** %3, align 8
  br label %168

168:                                              ; preds = %165, %49
  %169 = load i8*, i8** %3, align 8
  ret i8* %169
}

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
