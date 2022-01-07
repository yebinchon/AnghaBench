; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_daemon.c_cachefiles_daemon_frun.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_daemon.c_cachefiles_daemon_frun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cachefiles_cache*, i8*)* @cachefiles_daemon_frun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefiles_daemon_frun(%struct.cachefiles_cache* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cachefiles_cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @_enter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @simple_strtoul(i8* %16, i8** %5, i32 10)
  store i64 %17, i64* %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 37
  br i1 %22, label %29, label %23

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %15
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %23
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %35 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ule i64 %33, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %6, align 8
  %40 = icmp uge i64 %39, 100
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %32
  %42 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @cachefiles_daemon_range_error(%struct.cachefiles_cache* %42, i8* %43)
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %38
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %48 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %41, %29, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @_enter(i8*, i8*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @cachefiles_daemon_range_error(%struct.cachefiles_cache*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
