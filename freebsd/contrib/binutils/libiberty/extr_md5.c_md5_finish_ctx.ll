; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_md5.c_md5_finish_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_md5.c_md5_finish_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_ctx = type { i32, i32*, i32* }

@fillbuf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @md5_finish_ctx(%struct.md5_ctx* %0, i8* %1) #0 {
  %3 = alloca %struct.md5_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.md5_ctx* %0, %struct.md5_ctx** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, %10
  store i32 %16, i32* %14, align 4
  %17 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 56
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 120, %35
  br label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 56, %38
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %36, %34 ], [ %39, %37 ]
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %6, align 8
  %43 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* @fillbuf, align 4
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @memcpy(i32* %48, i32 %49, i64 %50)
  %52 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 3
  %58 = call i32 @SWAP(i32 %57)
  %59 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %63, %64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32 %58, i32* %66, align 4
  %67 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 3
  %73 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 29
  %79 = or i32 %72, %78
  %80 = call i32 @SWAP(i32 %79)
  %81 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %82 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %85, %86
  %88 = add i64 %87, 4
  %89 = getelementptr inbounds i32, i32* %83, i64 %88
  store i32 %80, i32* %89, align 4
  %90 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %6, align 8
  %96 = add i64 %94, %95
  %97 = add i64 %96, 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %100 = call i32 @md5_process_block(i32* %92, i32 %98, %struct.md5_ctx* %99)
  %101 = load %struct.md5_ctx*, %struct.md5_ctx** %3, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = call i8* @md5_read_ctx(%struct.md5_ctx* %101, i8* %102)
  ret i8* %103
}

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @SWAP(i32) #1

declare dso_local i32 @md5_process_block(i32*, i32, %struct.md5_ctx*) #1

declare dso_local i8* @md5_read_ctx(%struct.md5_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
