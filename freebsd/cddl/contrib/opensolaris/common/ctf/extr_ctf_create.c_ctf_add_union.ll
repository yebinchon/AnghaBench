; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_union.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_create.c_ctf_add_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }

@CTF_K_FORWARD = common dso_local global i64 0, align 8
@CTF_ERR = common dso_local global i32 0, align 4
@CTF_K_UNION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_add_union(%struct.TYPE_15__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i32* %13, i32** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call %struct.TYPE_14__* @ctf_hash_lookup(i32* %17, %struct.TYPE_15__* %18, i8* %19, i32 %21)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %9, align 8
  br label %23

23:                                               ; preds = %16, %3
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %25 = icmp ne %struct.TYPE_14__* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ctf_type_kind(%struct.TYPE_15__* %27, i32 %30)
  %32 = load i64, i64* @CTF_K_FORWARD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  %39 = call %struct.TYPE_16__* @ctf_dtd_lookup(%struct.TYPE_15__* %35, i32 %38)
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %10, align 8
  br label %50

40:                                               ; preds = %26, %23
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @ctf_add_generic(%struct.TYPE_15__* %41, i32 %42, i8* %43, %struct.TYPE_16__** %10)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @CTF_ERR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @CTF_ERR, align 4
  store i32 %48, i32* %4, align 4
  br label %61

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %34
  %51 = load i32, i32* @CTF_K_UNION, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @CTF_TYPE_INFO(i32 %51, i32 %52, i32 0)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %50, %47
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_14__* @ctf_hash_lookup(i32*, %struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ctf_type_kind(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_16__* @ctf_dtd_lookup(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ctf_add_generic(%struct.TYPE_15__*, i32, i8*, %struct.TYPE_16__**) #1

declare dso_local i32 @CTF_TYPE_INFO(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
