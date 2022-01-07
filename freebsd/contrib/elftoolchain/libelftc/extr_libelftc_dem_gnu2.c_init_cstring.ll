; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_init_cstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_init_cstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cstring = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cstring*, i64)* @init_cstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cstring(%struct.cstring* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cstring*, align 8
  %5 = alloca i64, align 8
  store %struct.cstring* %0, %struct.cstring** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.cstring*, %struct.cstring** %4, align 8
  %7 = icmp eq %struct.cstring* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = icmp ule i64 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %26

12:                                               ; preds = %8
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 1, %13
  %15 = trunc i64 %14 to i32
  %16 = call i32* @malloc(i32 %15)
  %17 = load %struct.cstring*, %struct.cstring** %4, align 8
  %18 = getelementptr inbounds %struct.cstring, %struct.cstring* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = icmp eq i32* %16, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %26

21:                                               ; preds = %12
  %22 = load i64, i64* %5, align 8
  %23 = sub i64 %22, 1
  %24 = load %struct.cstring*, %struct.cstring** %4, align 8
  %25 = getelementptr inbounds %struct.cstring, %struct.cstring* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %20, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
