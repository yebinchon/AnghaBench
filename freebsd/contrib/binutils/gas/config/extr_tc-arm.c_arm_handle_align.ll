; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_handle_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_handle_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i8*, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@arm_handle_align.arm_noop = internal constant [4 x i8] c"\00\00\A0\E1", align 1
@arm_handle_align.thumb_noop = internal constant [2 x i8] c"\C0F", align 1
@arm_handle_align.arm_bigend_noop = internal constant [4 x i8] c"\E1\A0\00\00", align 1
@arm_handle_align.thumb_bigend_noop = internal constant [2 x i8] c"F\C0", align 1
@rs_align_code = common dso_local global i64 0, align 8
@MAX_MEM_FOR_RS_ALIGN_CODE = common dso_local global i32 0, align 4
@target_big_endian = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_handle_align(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @rs_align_code, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %110

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %19, %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %3, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  store i8* %35, i8** %6, align 8
  store i32 0, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @MAX_MEM_FOR_RS_ALIGN_CODE, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %14
  %40 = load i32, i32* @MAX_MEM_FOR_RS_ALIGN_CODE, align 4
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %14
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i64, i64* @target_big_endian, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @arm_handle_align.thumb_bigend_noop, i64 0, i64 0), i8** %7, align 8
  br label %53

52:                                               ; preds = %48
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @arm_handle_align.thumb_noop, i64 0, i64 0), i8** %7, align 8
  br label %53

53:                                               ; preds = %52, %51
  store i32 2, i32* %5, align 4
  br label %60

54:                                               ; preds = %43
  %55 = load i64, i64* @target_big_endian, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @arm_handle_align.arm_bigend_noop, i64 0, i64 0), i8** %7, align 8
  br label %59

58:                                               ; preds = %54
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @arm_handle_align.arm_noop, i64 0, i64 0), i8** %7, align 8
  br label %59

59:                                               ; preds = %58, %57
  store i32 4, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sub nsw i32 %62, 1
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %68, 1
  %70 = and i32 %67, %69
  store i32 %70, i32* %4, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @memset(i8* %71, i32 0, i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %6, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %3, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %66, %60
  br label %82

82:                                               ; preds = %86, %81
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load i8*, i8** %6, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @memcpy(i8* %87, i8* %88, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %6, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %3, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %4, align 4
  br label %82

101:                                              ; preds = %82
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %101, %13
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
