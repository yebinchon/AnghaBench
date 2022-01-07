; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_ctf_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_ctf_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_22__*, i64, i32*, i8*)* @ctf_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @ctf_parse(%struct.TYPE_22__* %0, i64 %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = call %struct.TYPE_21__* (...) @tdata_new()
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %9, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @count_types(%struct.TYPE_22__* %15, i64 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 8, %20
  %22 = trunc i64 %21 to i32
  %23 = call i8* @xcalloc(i32 %22)
  %24 = bitcast i8* %23 to %struct.TYPE_20__**
  store %struct.TYPE_20__** %24, %struct.TYPE_20__*** %10, align 8
  %25 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %25, i64 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %26, align 8
  store i32 1, i32* %13, align 4
  br label %27

27:                                               ; preds = %45, %4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = call i8* @xcalloc(i32 4)
  %33 = bitcast i8* %32 to %struct.TYPE_20__*
  %34 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %10, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %34, i64 %36
  store %struct.TYPE_20__* %33, %struct.TYPE_20__** %37, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %10, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %39, i64 %41
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  store i32 %38, i32* %44, align 4
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %27

48:                                               ; preds = %27
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = call i32 @xstrdup(i64 %57)
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @resurrect_labels(%struct.TYPE_22__* %61, %struct.TYPE_21__* %62, i64 %63, i8* %64)
  store i32 %65, i32* %12, align 4
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %68 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  %71 = load i64, i64* %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @resurrect_objects(%struct.TYPE_22__* %66, %struct.TYPE_21__* %67, %struct.TYPE_20__** %68, i32 %70, i64 %71, i32* %72)
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %76 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i64, i64* %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @resurrect_functions(%struct.TYPE_22__* %74, %struct.TYPE_21__* %75, %struct.TYPE_20__** %76, i32 %78, i64 %79, i32* %80)
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %84 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i64, i64* %6, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @resurrect_types(%struct.TYPE_22__* %82, %struct.TYPE_21__* %83, %struct.TYPE_20__** %84, i32 %86, i64 %87, i32 %88)
  %90 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %10, align 8
  %91 = call i32 @free(%struct.TYPE_20__** %90)
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  ret %struct.TYPE_21__* %96
}

declare dso_local %struct.TYPE_21__* @tdata_new(...) #1

declare dso_local i32 @count_types(%struct.TYPE_22__*, i64) #1

declare dso_local i8* @xcalloc(i32) #1

declare dso_local i32 @xstrdup(i64) #1

declare dso_local i32 @resurrect_labels(%struct.TYPE_22__*, %struct.TYPE_21__*, i64, i8*) #1

declare dso_local i32 @resurrect_objects(%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_20__**, i32, i64, i32*) #1

declare dso_local i32 @resurrect_functions(%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_20__**, i32, i64, i32*) #1

declare dso_local i32 @resurrect_types(%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_20__**, i32, i64, i32) #1

declare dso_local i32 @free(%struct.TYPE_20__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
