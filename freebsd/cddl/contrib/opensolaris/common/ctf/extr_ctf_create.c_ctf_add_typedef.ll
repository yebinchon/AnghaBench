; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_typedef.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_typedef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@CTF_ERR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CTF_K_TYPEDEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ctf_add_typedef(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %12, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @CTF_ERR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = call i32* @ctf_lookup_by_id(i32** %12, i64 %18)
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32* @ctf_dtd_lookup(i32* %22, i64 %23)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i64 @ctf_set_errno(i32* %27, i32 %28)
  store i64 %29, i64* %5, align 8
  br label %54

30:                                               ; preds = %21, %17
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @ctf_add_generic(i32* %31, i32 %32, i8* %33, %struct.TYPE_5__** %10)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* @CTF_ERR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* @CTF_ERR, align 8
  store i64 %38, i64* %5, align 8
  br label %54

39:                                               ; preds = %30
  %40 = load i32, i32* @CTF_K_TYPEDEF, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @CTF_TYPE_INFO(i32 %40, i32 %41, i32 0)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @ctf_ref_inc(i32* %50, i64 %51)
  %53 = load i64, i64* %11, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %39, %37, %26
  %55 = load i64, i64* %5, align 8
  ret i64 %55
}

declare dso_local i32* @ctf_lookup_by_id(i32**, i64) #1

declare dso_local i32* @ctf_dtd_lookup(i32*, i64) #1

declare dso_local i64 @ctf_set_errno(i32*, i32) #1

declare dso_local i64 @ctf_add_generic(i32*, i32, i8*, %struct.TYPE_5__**) #1

declare dso_local i32 @CTF_TYPE_INFO(i32, i32, i32) #1

declare dso_local i32 @ctf_ref_inc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
