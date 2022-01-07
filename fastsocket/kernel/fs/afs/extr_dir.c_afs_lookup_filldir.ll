; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_lookup_filldir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_lookup_filldir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_lookup_cookie = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"{%s,%Zu},%s,%u,,%llu,%u\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" = 0 [no]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" = -1 [found]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i64, i32)* @afs_lookup_filldir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_lookup_filldir(i8* %0, i8* %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.afs_lookup_cookie*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.afs_lookup_cookie*
  store %struct.afs_lookup_cookie* %16, %struct.afs_lookup_cookie** %14, align 8
  %17 = load %struct.afs_lookup_cookie*, %struct.afs_lookup_cookie** %14, align 8
  %18 = getelementptr inbounds %struct.afs_lookup_cookie, %struct.afs_lookup_cookie* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.afs_lookup_cookie*, %struct.afs_lookup_cookie** %14, align 8
  %21 = getelementptr inbounds %struct.afs_lookup_cookie, %struct.afs_lookup_cookie* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i64, i64* %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @_enter(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i8* %23, i32 %24, i64 %25, i32 %26)
  %28 = call i32 @BUILD_BUG_ON(i32 1)
  %29 = call i32 @BUILD_BUG_ON(i32 1)
  %30 = load %struct.afs_lookup_cookie*, %struct.afs_lookup_cookie** %14, align 8
  %31 = getelementptr inbounds %struct.afs_lookup_cookie, %struct.afs_lookup_cookie* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %6
  %36 = load %struct.afs_lookup_cookie*, %struct.afs_lookup_cookie** %14, align 8
  %37 = getelementptr inbounds %struct.afs_lookup_cookie, %struct.afs_lookup_cookie* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @memcmp(i32 %38, i8* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35, %6
  %44 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %57

45:                                               ; preds = %35
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.afs_lookup_cookie*, %struct.afs_lookup_cookie** %14, align 8
  %48 = getelementptr inbounds %struct.afs_lookup_cookie, %struct.afs_lookup_cookie* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.afs_lookup_cookie*, %struct.afs_lookup_cookie** %14, align 8
  %52 = getelementptr inbounds %struct.afs_lookup_cookie, %struct.afs_lookup_cookie* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.afs_lookup_cookie*, %struct.afs_lookup_cookie** %14, align 8
  %55 = getelementptr inbounds %struct.afs_lookup_cookie, %struct.afs_lookup_cookie* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = call i32 @_leave(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %57

57:                                               ; preds = %45, %43
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @_enter(i8*, i32, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
