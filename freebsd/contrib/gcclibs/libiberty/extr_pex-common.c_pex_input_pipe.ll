; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_pex_input_pipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_pex_input_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pex_obj = type { i64, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 (%struct.pex_obj*, i32*, i32)*, i32 (%struct.pex_obj*, i32)*, i32* (%struct.pex_obj*, i32, i32)* }

@PEX_USE_PIPES = common dso_local global i32 0, align 4
@STDIN_FILE_NO = common dso_local global i32 0, align 4
@WRITE_PORT = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@READ_PORT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pex_input_pipe(%struct.pex_obj* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pex_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.pex_obj* %0, %struct.pex_obj** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %10 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %99

14:                                               ; preds = %2
  %15 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %16 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PEX_USE_PIPES, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %99

22:                                               ; preds = %14
  %23 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %24 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %29 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @STDIN_FILE_NO, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %35 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %27
  br label %99

39:                                               ; preds = %33
  %40 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %41 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64 (%struct.pex_obj*, i32*, i32)*, i64 (%struct.pex_obj*, i32*, i32)** %43, align 8
  %45 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i64 %44(%struct.pex_obj* %45, i32* %46, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store i32* null, i32** %3, align 8
  br label %101

53:                                               ; preds = %39
  %54 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %55 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32* (%struct.pex_obj*, i32, i32)*, i32* (%struct.pex_obj*, i32, i32)** %57, align 8
  %59 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %60 = load i64, i64* @WRITE_PORT, align 8
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32* %58(%struct.pex_obj* %59, i32 %62, i32 %65)
  store i32* %66, i32** %7, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %92, label %69

69:                                               ; preds = %53
  %70 = load i32, i32* @errno, align 4
  store i32 %70, i32* %8, align 4
  %71 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %72 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32 (%struct.pex_obj*, i32)*, i32 (%struct.pex_obj*, i32)** %74, align 8
  %76 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %77 = load i64, i64* @READ_PORT, align 8
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 %75(%struct.pex_obj* %76, i32 %79)
  %81 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %82 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32 (%struct.pex_obj*, i32)*, i32 (%struct.pex_obj*, i32)** %84, align 8
  %86 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %87 = load i64, i64* @WRITE_PORT, align 8
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 %85(%struct.pex_obj* %86, i32 %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %101

92:                                               ; preds = %53
  %93 = load i64, i64* @READ_PORT, align 8
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.pex_obj*, %struct.pex_obj** %4, align 8
  %97 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** %7, align 8
  store i32* %98, i32** %3, align 8
  br label %101

99:                                               ; preds = %38, %21, %13
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %101

101:                                              ; preds = %99, %92, %69, %52
  %102 = load i32*, i32** %3, align 8
  ret i32* %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
