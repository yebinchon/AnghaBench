; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v2-abi.c_gnuv2_baseclass_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v2-abi.c_gnuv2_baseclass_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnuv2_baseclass_offset(%struct.type* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.type*, %struct.type** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.type* @TYPE_BASECLASS(%struct.type* %16, i32 %17)
  store %struct.type* %18, %struct.type** %10, align 8
  %19 = load %struct.type*, %struct.type** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @BASETYPE_VIA_VIRTUAL(%struct.type* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %80

23:                                               ; preds = %4
  %24 = load %struct.type*, %struct.type** %6, align 8
  %25 = call i32 @TYPE_NFIELDS(%struct.type* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.type*, %struct.type** %6, align 8
  %27 = call i32 @TYPE_N_BASECLASSES(%struct.type* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %55, %23
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load %struct.type*, %struct.type** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.type*, %struct.type** %10, align 8
  %37 = call i64 @vb_match(%struct.type* %34, i32 %35, %struct.type* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load %struct.type*, %struct.type** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @TYPE_FIELD_TYPE(%struct.type* %40, i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.type*, %struct.type** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %44, i32 %45)
  %47 = sdiv i32 %46, 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %43, i64 %48
  %50 = call i32 @unpack_pointer(i32 %42, i8* %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %5, align 4
  br label %85

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %29

58:                                               ; preds = %29
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %76, %58
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load %struct.type*, %struct.type** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @baseclass_offset(%struct.type* %66, i32 %67, i8* %68, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %5, align 4
  br label %85

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %61

79:                                               ; preds = %61
  store i32 -1, i32* %5, align 4
  br label %85

80:                                               ; preds = %4
  %81 = load %struct.type*, %struct.type** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @TYPE_BASECLASS_BITPOS(%struct.type* %81, i32 %82)
  %84 = sdiv i32 %83, 8
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %79, %73, %39
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.type* @TYPE_BASECLASS(%struct.type*, i32) #1

declare dso_local i64 @BASETYPE_VIA_VIRTUAL(%struct.type*, i32) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i64 @vb_match(%struct.type*, i32, %struct.type*) #1

declare dso_local i32 @unpack_pointer(i32, i8*) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i32 @baseclass_offset(%struct.type*, i32, i8*, i32) #1

declare dso_local i32 @TYPE_BASECLASS_BITPOS(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
