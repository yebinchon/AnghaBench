; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cache.c_cache_bwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cache.c_cache_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd = type { i32 }

@bfd_error_system_call = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bfd*, i8*, i64)* @cache_bwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cache_bwrite(%struct.bfd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bfd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.bfd* %0, %struct.bfd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.bfd*, %struct.bfd** %5, align 8
  %11 = call i32* @bfd_cache_lookup(%struct.bfd* %10, i32 0)
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %32

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i64 @fwrite(i8* %16, i32 1, i64 %17, i32* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @ferror(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @bfd_error_system_call, align 4
  %29 = call i32 @bfd_set_error(i32 %28)
  store i64 -1, i64* %4, align 8
  br label %32

30:                                               ; preds = %23, %15
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %30, %27, %14
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local i32* @bfd_cache_lookup(%struct.bfd*, i32) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
