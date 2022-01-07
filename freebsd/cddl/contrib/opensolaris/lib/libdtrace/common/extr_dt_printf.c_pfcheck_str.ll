; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfcheck_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfcheck_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }

@CTF_K_ARRAY = common dso_local global i64 0, align 8
@CTF_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__*)* @pfcheck_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfcheck_str(i32* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = call i64 @dt_node_is_string(%struct.TYPE_6__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ctf_type_resolve(i32* %21, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @ctf_type_kind(i32* %26, i32 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @CTF_K_ARRAY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %17
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @ctf_array_info(i32* %33, i32 %34, %struct.TYPE_7__* %10)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ctf_type_resolve(i32* %38, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* @CTF_ERR, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @ctf_type_encoding(i32* %45, i32 %46, i32* %9)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @IS_CHAR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %49, %44, %37, %32, %17
  %54 = phi i1 [ false, %44 ], [ false, %37 ], [ false, %32 ], [ false, %17 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @dt_node_is_string(%struct.TYPE_6__*) #1

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local i64 @ctf_type_kind(i32*, i32) #1

declare dso_local i64 @ctf_array_info(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i64 @ctf_type_encoding(i32*, i32, i32*) #1

declare dso_local i64 @IS_CHAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
