; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/user/unix/extr_userinfo.c_getpwnam_safe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/user/unix/extr_userinfo.c_getpwnam_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@PWBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@APR_ENOENT = common dso_local global i64 0, align 8
@APR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.passwd*, i8*)* @getpwnam_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getpwnam_safe(i8* %0, %struct.passwd* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.passwd* %1, %struct.passwd** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @PWBUF_SIZE, align 4
  %10 = zext i32 %9 to i64
  store i64 0, i64* @errno, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.passwd* @getpwnam(i8* %11)
  store %struct.passwd* %12, %struct.passwd** %8, align 8
  %13 = icmp ne %struct.passwd* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.passwd*, %struct.passwd** %6, align 8
  %16 = load %struct.passwd*, %struct.passwd** %8, align 8
  %17 = call i32 @memcpy(%struct.passwd* %15, %struct.passwd* %16, i32 4)
  br label %27

18:                                               ; preds = %3
  %19 = load i64, i64* @errno, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i64, i64* @errno, align 8
  br label %25

23:                                               ; preds = %18
  %24 = load i64, i64* @APR_ENOENT, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  store i64 %26, i64* %4, align 8
  br label %29

27:                                               ; preds = %14
  %28 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @memcpy(%struct.passwd*, %struct.passwd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
