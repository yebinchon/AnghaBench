; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_opt_strsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_opt_strsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8** }
%struct.TYPE_11__ = type { i64 }

@UINT_MAX = common dso_local global i8* null, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i64 0, align 8
@EDT_CTF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i64)* @dt_opt_strsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_opt_strsize(%struct.TYPE_10__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i8**, i8*** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = call i32* @DT_STR_CTFP(%struct.TYPE_10__* %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = call i32 @DT_STR_TYPE(%struct.TYPE_10__* %21)
  %23 = call i32 @ctf_type_resolve(i32* %20, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @dt_opt_size(%struct.TYPE_10__* %24, i8* %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %103

30:                                               ; preds = %3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** @UINT_MAX, align 8
  %38 = icmp ugt i8* %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  store i8* %40, i8** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = load i32, i32* @EOVERFLOW, align 4
  %48 = call i32 @dt_set_errno(%struct.TYPE_10__* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %103

49:                                               ; preds = %30
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @ctf_array_info(i32* %50, i32 %51, %struct.TYPE_11__* %11)
  %53 = load i64, i64* @CTF_ERR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  store i8* %56, i8** %61, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i8* @ctf_errno(i32* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = load i32, i32* @EDT_CTF, align 4
  %68 = call i32 @dt_set_errno(%struct.TYPE_10__* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %103

69:                                               ; preds = %49
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i64 %76, i64* %77, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @ctf_set_array(i32* %78, i32 %79, %struct.TYPE_11__* %11)
  %81 = load i64, i64* @CTF_ERR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %69
  %84 = load i32*, i32** %9, align 8
  %85 = call i64 @ctf_update(i32* %84)
  %86 = load i64, i64* @CTF_ERR, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %83, %69
  %89 = load i8*, i8** %8, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  store i8* %89, i8** %94, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i8* @ctf_errno(i32* %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = load i32, i32* @EDT_CTF, align 4
  %101 = call i32 @dt_set_errno(%struct.TYPE_10__* %99, i32 %100)
  store i32 %101, i32* %4, align 4
  br label %103

102:                                              ; preds = %83
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %88, %55, %39, %29
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32* @DT_STR_CTFP(%struct.TYPE_10__*) #1

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local i32 @DT_STR_TYPE(%struct.TYPE_10__*) #1

declare dso_local i64 @dt_opt_size(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ctf_array_info(i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i8* @ctf_errno(i32*) #1

declare dso_local i64 @ctf_set_array(i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i64 @ctf_update(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
