; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_ctf_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_ctf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32 }

@curfile = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Corrupt CTF - short header\00", align 1
@CTF_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Corrupt CTF - bad magic 0x%x\00", align 1
@CTF_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Unknown CTF version %d\00", align 1
@CTF_F_COMPRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Corrupt CTF - short decompression (was %d, expecting %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ctf_load(i8* %0, i32 %1, i64 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** @curfile, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %18, 40
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = call i32 (i8*, ...) @parseterminate(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %5
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %15, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %11, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 40
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i64, i64* %8, align 8
  %33 = sub i64 %32, 40
  store i64 %33, i64* %8, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CTF_MAGIC, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8*, ...) @parseterminate(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %39, %22
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CTF_VERSION, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, ...) @parseterminate(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %50, %44
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %58, %61
  store i64 %62, i64* %13, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CTF_F_COMPRESS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %55
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @xmalloc(i64 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i64, i64* %13, align 8
  %76 = call i64 @decompress_ctf(i32 %72, i64 %73, i32 %74, i64 %75)
  store i64 %76, i64* %16, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i32 (i8*, ...) @parseterminate(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %80, i64 %81)
  br label %83

83:                                               ; preds = %79, %69
  br label %87

84:                                               ; preds = %55
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %12, align 4
  %86 = load i64, i64* %8, align 8
  store i64 %86, i64* %13, align 8
  br label %87

87:                                               ; preds = %84, %83
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i32* @ctf_parse(%struct.TYPE_3__* %88, i32 %89, i32* %90, i8* %91)
  store i32* %92, i32** %14, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @CTF_F_COMPRESS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %87
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @free(i32 %100)
  br label %102

102:                                              ; preds = %99, %87
  store i8* null, i8** @curfile, align 8
  %103 = load i32*, i32** %14, align 8
  ret i32* %103
}

declare dso_local i32 @parseterminate(i8*, ...) #1

declare dso_local i32 @xmalloc(i64) #1

declare dso_local i64 @decompress_ctf(i32, i64, i32, i64) #1

declare dso_local i32* @ctf_parse(%struct.TYPE_3__*, i32, i32*, i8*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
