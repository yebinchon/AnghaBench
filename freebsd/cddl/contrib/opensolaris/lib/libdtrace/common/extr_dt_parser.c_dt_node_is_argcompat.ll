; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_is_argcompat.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_is_argcompat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32* }

@DT_NF_COOKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_node_is_argcompat(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DT_NF_COOKED, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DT_NF_COOKED, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = call i64 @dt_node_is_integer(%struct.TYPE_11__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = call i64 @dt_node_is_integer(%struct.TYPE_11__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %92

34:                                               ; preds = %29, %2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = call i64 @dt_node_is_strcompat(%struct.TYPE_11__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = call i64 @dt_node_is_strcompat(%struct.TYPE_11__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %92

43:                                               ; preds = %38, %34
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = call i64 @dt_node_is_stack(%struct.TYPE_11__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = call i64 @dt_node_is_stack(%struct.TYPE_11__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %92

52:                                               ; preds = %47, %43
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = call i64 @dt_node_is_symaddr(%struct.TYPE_11__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = call i64 @dt_node_is_symaddr(%struct.TYPE_11__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %92

61:                                               ; preds = %56, %52
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = call i64 @dt_node_is_usymaddr(%struct.TYPE_11__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = call i64 @dt_node_is_usymaddr(%struct.TYPE_11__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %92

70:                                               ; preds = %65, %61
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ctf_type_resolve(i32* %72, i32 %75)
  %77 = call i32 @ctf_type_kind(i32* %71, i32 %76)
  switch i32 %77, label %88 [
    i32 130, label %78
    i32 129, label %78
    i32 128, label %78
  ]

78:                                               ; preds = %70, %70, %70
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ctf_type_compat(i32* %79, i32 %82, i32* %83, i32 %86)
  store i32 %87, i32* %3, align 4
  br label %92

88:                                               ; preds = %70
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = call i32 @dt_node_is_ptrcompat(%struct.TYPE_11__* %89, %struct.TYPE_11__* %90, i32* null, i32* null)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %78, %69, %60, %51, %42, %33
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dt_node_is_integer(%struct.TYPE_11__*) #1

declare dso_local i64 @dt_node_is_strcompat(%struct.TYPE_11__*) #1

declare dso_local i64 @dt_node_is_stack(%struct.TYPE_11__*) #1

declare dso_local i64 @dt_node_is_symaddr(%struct.TYPE_11__*) #1

declare dso_local i64 @dt_node_is_usymaddr(%struct.TYPE_11__*) #1

declare dso_local i32 @ctf_type_kind(i32*, i32) #1

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local i32 @ctf_type_compat(i32*, i32, i32*, i32) #1

declare dso_local i32 @dt_node_is_ptrcompat(%struct.TYPE_11__*, %struct.TYPE_11__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
