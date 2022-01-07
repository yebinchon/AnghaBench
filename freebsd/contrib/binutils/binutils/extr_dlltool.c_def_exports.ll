; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_def_exports.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_def_exports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.export = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i64, %struct.export* }

@d_exports = common dso_local global %struct.export* null, align 8
@d_nfuncs = common dso_local global i32 0, align 4
@d_nforwards = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @def_exports(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.export*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = call i64 @xmalloc(i32 64)
  %17 = inttoptr i64 %16 to %struct.export*
  store %struct.export* %17, %struct.export** %15, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.export*, %struct.export** %15, align 8
  %20 = getelementptr inbounds %struct.export, %struct.export* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i8*, i8** %9, align 8
  br label %27

25:                                               ; preds = %7
  %26 = load i8*, i8** %8, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i8* [ %24, %23 ], [ %26, %25 ]
  %29 = load %struct.export*, %struct.export** %15, align 8
  %30 = getelementptr inbounds %struct.export, %struct.export* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.export*, %struct.export** %15, align 8
  %33 = getelementptr inbounds %struct.export, %struct.export* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.export*, %struct.export** %15, align 8
  %36 = getelementptr inbounds %struct.export, %struct.export* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.export*, %struct.export** %15, align 8
  %39 = getelementptr inbounds %struct.export, %struct.export* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.export*, %struct.export** %15, align 8
  %42 = getelementptr inbounds %struct.export, %struct.export* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.export*, %struct.export** %15, align 8
  %45 = getelementptr inbounds %struct.export, %struct.export* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.export*, %struct.export** %15, align 8
  %48 = getelementptr inbounds %struct.export, %struct.export* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load %struct.export*, %struct.export** @d_exports, align 8
  %50 = load %struct.export*, %struct.export** %15, align 8
  %51 = getelementptr inbounds %struct.export, %struct.export* %50, i32 0, i32 9
  store %struct.export* %49, %struct.export** %51, align 8
  %52 = load %struct.export*, %struct.export** %15, align 8
  store %struct.export* %52, %struct.export** @d_exports, align 8
  %53 = load i32, i32* @d_nfuncs, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @d_nfuncs, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %27
  %58 = load i8*, i8** %9, align 8
  %59 = call i32* @strchr(i8* %58, i8 signext 46)
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i64, i64* @d_nforwards, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* @d_nforwards, align 8
  %64 = load %struct.export*, %struct.export** %15, align 8
  %65 = getelementptr inbounds %struct.export, %struct.export* %64, i32 0, i32 8
  store i64 %63, i64* %65, align 8
  br label %69

66:                                               ; preds = %57, %27
  %67 = load %struct.export*, %struct.export** %15, align 8
  %68 = getelementptr inbounds %struct.export, %struct.export* %67, i32 0, i32 8
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %61
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
