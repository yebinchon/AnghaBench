; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_proc.c_cachefiles_histogram_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_proc.c_cachefiles_histogram_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"JIFS  SECS  LOOKUPS   MKDIRS    CREATES\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"===== ===== ========= ========= =========\0A\00", align 1
@cachefiles_lookup_histogram = common dso_local global i32* null, align 8
@cachefiles_mkdir_histogram = common dso_local global i32* null, align 8
@cachefiles_create_histogram = common dso_local global i32* null, align 8
@HZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"%4lu  0.%03u %9u %9u %9u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @cachefiles_histogram_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefiles_histogram_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = ptrtoint i8* %11 to i64
  switch i64 %12, label %19 [
    i64 1, label %13
    i64 2, label %16
  ]

13:                                               ; preds = %2
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = call i32 @seq_puts(%struct.seq_file* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = call i32 @seq_puts(%struct.seq_file* %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = sub i64 %21, 3
  store i64 %22, i64* %6, align 8
  %23 = load i32*, i32** @cachefiles_lookup_histogram, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @atomic_read(i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** @cachefiles_mkdir_histogram, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = call i32 @atomic_read(i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** @cachefiles_create_histogram, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i32 @atomic_read(i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %19
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %57

44:                                               ; preds = %40, %37, %19
  %45 = load i64, i64* %6, align 8
  %46 = mul i64 %45, 1000
  %47 = load i64, i64* @HZ, align 8
  %48 = udiv i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %44, %43, %16, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
