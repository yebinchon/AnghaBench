; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_daemon.c_cachefiles_daemon_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_daemon.c_cachefiles_daemon_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Empty tag specified\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cachefiles_cache*, i8*)* @cachefiles_daemon_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefiles_daemon_tag(%struct.cachefiles_cache* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cachefiles_cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @_enter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @kerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %18 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EEXIST, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kstrdup(i8* %25, i32 %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %24
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %36 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %30, %21, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @_enter(i8*, i8*) #1

declare dso_local i32 @kerror(i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
