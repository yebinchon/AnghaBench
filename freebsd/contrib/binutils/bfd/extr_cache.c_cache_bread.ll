; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cache.c_cache_bread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cache.c_cache_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd = type { i32 }

@bfd_error_system_call = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bfd*, i8*, i64)* @cache_bread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cache_bread(%struct.bfd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bfd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.bfd* %0, %struct.bfd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %36

13:                                               ; preds = %3
  %14 = load %struct.bfd*, %struct.bfd** %5, align 8
  %15 = call i32* @bfd_cache_lookup(%struct.bfd* %14, i32 0)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i64 0, i64* %4, align 8
  br label %36

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @fread(i8* %20, i32 1, i64 %21, i32* %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @ferror(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @bfd_error_system_call, align 4
  %33 = call i32 @bfd_set_error(i32 %32)
  store i64 -1, i64* %4, align 8
  br label %36

34:                                               ; preds = %27, %19
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %34, %31, %18, %12
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

declare dso_local i32* @bfd_cache_lookup(%struct.bfd*, i32) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
