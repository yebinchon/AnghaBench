; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_classify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@AMD64_NO_CLASS = common dso_local global i32 0, align 4
@TYPE_CODE_INT = common dso_local global i32 0, align 4
@TYPE_CODE_ENUM = common dso_local global i32 0, align 4
@TYPE_CODE_PTR = common dso_local global i32 0, align 4
@TYPE_CODE_REF = common dso_local global i32 0, align 4
@AMD64_INTEGER = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@AMD64_SSE = common dso_local global i32 0, align 4
@AMD64_X87 = common dso_local global i32 0, align 4
@AMD64_X87UP = common dso_local global i32 0, align 4
@TYPE_CODE_ARRAY = common dso_local global i32 0, align 4
@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@TYPE_CODE_UNION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i32*)* @amd64_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd64_classify(%struct.type* %0, i32* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.type*, %struct.type** %3, align 8
  %8 = call i32 @TYPE_CODE(%struct.type* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.type*, %struct.type** %3, align 8
  %10 = call i32 @TYPE_LENGTH(%struct.type* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @AMD64_NO_CLASS, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %11, i32* %13, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TYPE_CODE_INT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @TYPE_CODE_ENUM, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @TYPE_CODE_PTR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TYPE_CODE_REF, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27, %23, %19, %2
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %37, %34, %31
  %44 = load i32, i32* @AMD64_INTEGER, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %46, align 4
  br label %94

47:                                               ; preds = %40, %27
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @TYPE_CODE_FLT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %57, label %61

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @AMD64_SSE, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  br label %93

61:                                               ; preds = %54, %47
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @TYPE_CODE_FLT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* @AMD64_X87, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @AMD64_X87UP, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %72, i32* %74, align 4
  br label %92

75:                                               ; preds = %65, %61
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @TYPE_CODE_ARRAY, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @TYPE_CODE_UNION, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83, %79, %75
  %88 = load %struct.type*, %struct.type** %3, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @amd64_classify_aggregate(%struct.type* %88, i32* %89)
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %68
  br label %93

93:                                               ; preds = %92, %57
  br label %94

94:                                               ; preds = %93, %43
  ret void
}

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @amd64_classify_aggregate(%struct.type*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
