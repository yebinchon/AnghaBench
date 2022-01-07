; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_alloc_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_alloc_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_pool = type { i64, i32, i8*, i8*, i32, i32*, i32**, i32* }

@NR_C_MODES = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.constant_pool* ()* @s390_alloc_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.constant_pool* @s390_alloc_pool() #0 {
  %1 = alloca %struct.constant_pool*, align 8
  %2 = alloca i32, align 4
  %3 = call i64 @xmalloc(i32 64)
  %4 = inttoptr i64 %3 to %struct.constant_pool*
  store %struct.constant_pool* %4, %struct.constant_pool** %1, align 8
  %5 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %6 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %5, i32 0, i32 7
  store i32* null, i32** %6, align 8
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %18, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @NR_C_MODES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %13 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %12, i32 0, i32 6
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %23 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %22, i32 0, i32 5
  store i32* null, i32** %23, align 8
  %24 = call i32 (...) @gen_label_rtx()
  %25 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %26 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** @NULL_RTX, align 8
  %28 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %29 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @NULL_RTX, align 8
  %31 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %32 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = call i32 @BITMAP_ALLOC(i32* null)
  %34 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %35 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  %37 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.constant_pool*, %struct.constant_pool** %1, align 8
  ret %struct.constant_pool* %38
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @gen_label_rtx(...) #1

declare dso_local i32 @BITMAP_ALLOC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
