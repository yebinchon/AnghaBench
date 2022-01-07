; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_strtab.c_strtab_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_strtab.c_strtab_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8**, i32 }
%struct.TYPE_6__ = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i8*, i64)* @strtab_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strtab_compare(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %11, align 8
  br label %21

21:                                               ; preds = %72, %4
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %82

24:                                               ; preds = %21
  %25 = load i8*, i8** %11, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  %37 = icmp eq i8* %25, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %24
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %11, align 8
  br label %46

46:                                               ; preds = %38, %24
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = load i8*, i8** %11, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @MIN(i64 %62, i64 %63)
  store i64 %64, i64* %13, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @strncmp(i8* %65, i8* %66, i64 %67)
  store i32 %68, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %46
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %5, align 4
  br label %83

72:                                               ; preds = %46
  %73 = load i64, i64* %13, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %75, i8** %11, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %8, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %9, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %9, align 8
  br label %21

82:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %70
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
