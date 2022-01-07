; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/compat/opensolaris/misc/extr_zmount.c_build_iovec.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/compat/opensolaris/misc/extr_zmount.c_build_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iovec**, i32*, i8*, i8*, i64)* @build_iovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_iovec(%struct.iovec** %0, i32* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.iovec**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.iovec** %0, %struct.iovec*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %84

16:                                               ; preds = %5
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.iovec**, %struct.iovec*** %6, align 8
  %20 = load %struct.iovec*, %struct.iovec** %19, align 8
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = mul i64 16, %23
  %25 = trunc i64 %24 to i32
  %26 = call %struct.iovec* @realloc(%struct.iovec* %20, i32 %25)
  %27 = load %struct.iovec**, %struct.iovec*** %6, align 8
  store %struct.iovec* %26, %struct.iovec** %27, align 8
  %28 = load %struct.iovec**, %struct.iovec*** %6, align 8
  %29 = load %struct.iovec*, %struct.iovec** %28, align 8
  %30 = icmp eq %struct.iovec* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32*, i32** %7, align 8
  store i32 -1, i32* %32, align 4
  br label %84

33:                                               ; preds = %16
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @strdup(i8* %34)
  %36 = load %struct.iovec**, %struct.iovec*** %6, align 8
  %37 = load %struct.iovec*, %struct.iovec** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i64 %39
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %40, i32 0, i32 1
  store i8* %35, i8** %41, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = add nsw i32 %43, 1
  %45 = load %struct.iovec**, %struct.iovec*** %6, align 8
  %46 = load %struct.iovec*, %struct.iovec** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %46, i64 %48
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 0, i32 0
  store i32 %44, i32* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.iovec**, %struct.iovec*** %6, align 8
  %55 = load %struct.iovec*, %struct.iovec** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i64 %57
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %58, i32 0, i32 1
  store i8* %53, i8** %59, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %62, label %72

62:                                               ; preds = %33
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %10, align 8
  br label %71

70:                                               ; preds = %62
  store i64 0, i64* %10, align 8
  br label %71

71:                                               ; preds = %70, %65
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i64, i64* %10, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.iovec**, %struct.iovec*** %6, align 8
  %76 = load %struct.iovec*, %struct.iovec** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.iovec, %struct.iovec* %76, i64 %78
  %80 = getelementptr inbounds %struct.iovec, %struct.iovec* %79, i32 0, i32 0
  store i32 %74, i32* %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %72, %31, %15
  ret void
}

declare dso_local %struct.iovec* @realloc(%struct.iovec*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
