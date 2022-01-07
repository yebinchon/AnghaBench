; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_type_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/common/ctf/extr_ctf_types.c_ctf_type_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@CTF_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_type_size(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ctf_type_resolve(%struct.TYPE_16__* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @CTF_ERR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %69

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.TYPE_15__* @ctf_lookup_by_id(%struct.TYPE_16__** %4, i32 %16)
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %6, align 8
  %18 = icmp eq %struct.TYPE_15__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %69

20:                                               ; preds = %15
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @LCTF_INFO_KIND(%struct.TYPE_16__* %21, i32 %24)
  switch i32 %25, label %65 [
    i32 128, label %26
    i32 129, label %32
    i32 130, label %33
    i32 131, label %39
  ]

26:                                               ; preds = %20
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  br label %69

32:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %69

33:                                               ; preds = %20
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %69

39:                                               ; preds = %20
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = call i32 @ctf_get_ctt_size(%struct.TYPE_16__* %40, %struct.TYPE_15__* %41, i32* null, i32* null)
  store i32 %42, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %69

46:                                               ; preds = %39
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ctf_array_info(%struct.TYPE_16__* %47, i32 %48, %struct.TYPE_17__* %8)
  %50 = load i32, i32* @CTF_ERR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ctf_type_size(%struct.TYPE_16__* %53, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @CTF_ERR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52, %46
  store i32 -1, i32* %3, align 4
  br label %69

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %61, %63
  store i32 %64, i32* %3, align 4
  br label %69

65:                                               ; preds = %20
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = call i32 @ctf_get_ctt_size(%struct.TYPE_16__* %66, %struct.TYPE_15__* %67, i32* null, i32* null)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %60, %59, %44, %33, %32, %26, %19, %14
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @ctf_type_resolve(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_15__* @ctf_lookup_by_id(%struct.TYPE_16__**, i32) #1

declare dso_local i32 @LCTF_INFO_KIND(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ctf_get_ctt_size(%struct.TYPE_16__*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @ctf_array_info(%struct.TYPE_16__*, i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
