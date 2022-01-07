; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_probe_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_provider.c_dt_probe_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@yypcb = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dt_probe_destroy(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 12
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 12
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @yypcb, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  br label %20

20:                                               ; preds = %16, %10
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 11
  %23 = call i32 @dt_node_list_free(i32* %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 10
  %26 = call i32 @dt_node_list_free(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 9
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i32 @dt_free(i32* %27, %struct.TYPE_8__* %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = call i32 @dt_free(i32* %32, %struct.TYPE_8__* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %3, align 8
  br label %40

40:                                               ; preds = %70, %20
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = call i32 @dt_free(i32* %47, %struct.TYPE_8__* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = call i32 @dt_free(i32* %52, %struct.TYPE_8__* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i32 @dt_free(i32* %57, %struct.TYPE_8__* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = call i32 @dt_free(i32* %62, %struct.TYPE_8__* %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = call i32 @dt_free(i32* %67, %struct.TYPE_8__* %68)
  br label %70

70:                                               ; preds = %43
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %3, align 8
  br label %40

72:                                               ; preds = %40
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = call i32 @dt_free(i32* %73, %struct.TYPE_8__* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = call i32 @dt_free(i32* %78, %struct.TYPE_8__* %81)
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %85 = call i32 @dt_free(i32* %83, %struct.TYPE_8__* %84)
  ret void
}

declare dso_local i32 @dt_node_list_free(i32*) #1

declare dso_local i32 @dt_free(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
