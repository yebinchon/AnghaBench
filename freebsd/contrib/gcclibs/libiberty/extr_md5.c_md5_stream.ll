; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_md5.c_md5_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_md5.c_md5_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_ctx = type { i32 }

@BLOCKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md5_stream(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.md5_ctx, align 4
  %7 = alloca [4168 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = call i32 @md5_init_ctx(%struct.md5_ctx* %6)
  br label %11

11:                                               ; preds = %2, %44
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %30, %11
  %13 = getelementptr inbounds [4168 x i8], [4168 x i8]* %7, i64 0, i64 0
  %14 = load i64, i64* %8, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i64, i64* %8, align 8
  %17 = sub i64 4096, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @fread(i8* %15, i32 1, i32 %18, i32* %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %12
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %25, 4096
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %12, label %32

32:                                               ; preds = %30
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @ferror(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %57

40:                                               ; preds = %35, %32
  %41 = load i64, i64* %9, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %47

44:                                               ; preds = %40
  %45 = getelementptr inbounds [4168 x i8], [4168 x i8]* %7, i64 0, i64 0
  %46 = call i32 @md5_process_block(i8* %45, i32 4096, %struct.md5_ctx* %6)
  br label %11

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds [4168 x i8], [4168 x i8]* %7, i64 0, i64 0
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @md5_process_bytes(i8* %51, i64 %52, %struct.md5_ctx* %6)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @md5_finish_ctx(%struct.md5_ctx* %6, i8* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %39
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @md5_init_ctx(%struct.md5_ctx*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @md5_process_block(i8*, i32, %struct.md5_ctx*) #1

declare dso_local i32 @md5_process_bytes(i8*, i64, %struct.md5_ctx*) #1

declare dso_local i32 @md5_finish_ctx(%struct.md5_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
