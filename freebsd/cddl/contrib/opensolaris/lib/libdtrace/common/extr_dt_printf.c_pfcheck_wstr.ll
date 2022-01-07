; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfcheck_wstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfcheck_wstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@CTF_K_ARRAY = common dso_local global i64 0, align 8
@CTF_ERR = common dso_local global i32 0, align 4
@CTF_K_INTEGER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_7__*)* @pfcheck_wstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfcheck_wstr(i32* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca %struct.TYPE_9__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ctf_type_resolve(i32* %15, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @ctf_type_kind(i32* %20, i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @CTF_K_ARRAY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %3
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @ctf_array_info(i32* %27, i32 %28, %struct.TYPE_9__* %11)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ctf_type_resolve(i32* %32, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @CTF_ERR, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @ctf_type_kind(i32* %39, i32 %40)
  %42 = load i64, i64* @CTF_K_INTEGER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @ctf_type_encoding(i32* %45, i32 %46, %struct.TYPE_8__* %10)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 32
  br label %53

53:                                               ; preds = %49, %44, %38, %31, %26, %3
  %54 = phi i1 [ false, %44 ], [ false, %38 ], [ false, %31 ], [ false, %26 ], [ false, %3 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  ret i32 %55
}

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local i64 @ctf_type_kind(i32*, i32) #1

declare dso_local i64 @ctf_array_info(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @ctf_type_encoding(i32*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
