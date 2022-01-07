; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_compress.c_ubifs_compress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_compress.c_ubifs_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_compressor = type { i32, i64, i32 }

@ubifs_compressors = common dso_local global %struct.ubifs_compressor** null, align 8
@UBIFS_COMPR_NONE = common dso_local global i32 0, align 4
@UBIFS_MIN_COMPR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"cannot compress %d bytes, compressor %s, error %d, leave data uncompressed\00", align 1
@UBIFS_MIN_COMPRESS_DIFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_compress(i8* %0, i32 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_compressor*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.ubifs_compressor**, %struct.ubifs_compressor*** @ubifs_compressors, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ubifs_compressor*, %struct.ubifs_compressor** %13, i64 %16
  %18 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %17, align 8
  store %struct.ubifs_compressor* %18, %struct.ubifs_compressor** %12, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UBIFS_COMPR_NONE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %77

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @UBIFS_MIN_COMPR_LEN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %77

29:                                               ; preds = %24
  %30 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %12, align 8
  %31 = getelementptr inbounds %struct.ubifs_compressor, %struct.ubifs_compressor* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %12, align 8
  %36 = getelementptr inbounds %struct.ubifs_compressor, %struct.ubifs_compressor* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @mutex_lock(i64 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %12, align 8
  %41 = getelementptr inbounds %struct.ubifs_compressor, %struct.ubifs_compressor* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @crypto_comp_compress(i32 %42, i8* %43, i32 %44, i8* %45, i32* %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %12, align 8
  %49 = getelementptr inbounds %struct.ubifs_compressor, %struct.ubifs_compressor* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %12, align 8
  %54 = getelementptr inbounds %struct.ubifs_compressor, %struct.ubifs_compressor* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @mutex_unlock(i64 %55)
  br label %57

57:                                               ; preds = %52, %39
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.ubifs_compressor*, %struct.ubifs_compressor** %12, align 8
  %64 = getelementptr inbounds %struct.ubifs_compressor, %struct.ubifs_compressor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @ubifs_warn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i32 %66)
  br label %77

68:                                               ; preds = %57
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %69, %71
  %73 = load i32, i32* @UBIFS_MIN_COMPRESS_DIFF, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %77

76:                                               ; preds = %68
  br label %86

77:                                               ; preds = %75, %61, %28, %23
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @memcpy(i8* %78, i8* %79, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @UBIFS_COMPR_NONE, align 4
  %85 = load i32*, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %77, %76
  ret void
}

declare dso_local i32 @mutex_lock(i64) #1

declare dso_local i32 @crypto_comp_compress(i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @mutex_unlock(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ubifs_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
