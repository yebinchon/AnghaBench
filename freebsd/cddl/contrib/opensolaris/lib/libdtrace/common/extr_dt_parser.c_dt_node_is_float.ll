; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_is_float.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_is_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i64 }

@DT_NF_COOKED = common dso_local global i32 0, align 4
@CTF_K_FLOAT = common dso_local global i64 0, align 8
@CTF_FP_SINGLE = common dso_local global i64 0, align 8
@CTF_FP_DOUBLE = common dso_local global i64 0, align 8
@CTF_FP_LDOUBLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_node_is_float(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DT_NF_COOKED, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ctf_type_resolve(i32* %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @ctf_type_kind(i32* %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @CTF_K_FLOAT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @ctf_type_encoding(i32* %30, i32 %31, %struct.TYPE_6__* %4)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CTF_FP_SINGLE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CTF_FP_DOUBLE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CTF_FP_LDOUBLE, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %44, %39, %34
  %50 = phi i1 [ true, %39 ], [ true, %34 ], [ %48, %44 ]
  br label %51

51:                                               ; preds = %49, %27, %1
  %52 = phi i1 [ false, %27 ], [ false, %1 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  ret i32 %53
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local i64 @ctf_type_kind(i32*, i32) #1

declare dso_local i64 @ctf_type_encoding(i32*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
