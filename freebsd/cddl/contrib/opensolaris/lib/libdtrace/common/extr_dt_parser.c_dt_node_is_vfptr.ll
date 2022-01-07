; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_is_vfptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_is_vfptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@DT_NF_COOKED = common dso_local global i32 0, align 4
@CTF_K_POINTER = common dso_local global i64 0, align 8
@CTF_K_FUNCTION = common dso_local global i64 0, align 8
@CTF_K_INTEGER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_node_is_vfptr(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DT_NF_COOKED, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ctf_type_resolve(i32* %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @ctf_type_kind(i32* %22, i32 %23)
  %25 = load i64, i64* @CTF_K_POINTER, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

28:                                               ; preds = %1
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ctf_type_reference(i32* %30, i32 %31)
  %33 = call i32 @ctf_type_resolve(i32* %29, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @ctf_type_kind(i32* %34, i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @CTF_K_FUNCTION, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %55, label %40

40:                                               ; preds = %28
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @CTF_K_INTEGER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @ctf_type_encoding(i32* %45, i32 %46, i32* %5)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @IS_VOID(i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %49, %44, %40
  %54 = phi i1 [ false, %44 ], [ false, %40 ], [ %52, %49 ]
  br label %55

55:                                               ; preds = %53, %28
  %56 = phi i1 [ true, %28 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %27
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local i64 @ctf_type_kind(i32*, i32) #1

declare dso_local i32 @ctf_type_reference(i32*, i32) #1

declare dso_local i64 @ctf_type_encoding(i32*, i32, i32*) #1

declare dso_local i64 @IS_VOID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
