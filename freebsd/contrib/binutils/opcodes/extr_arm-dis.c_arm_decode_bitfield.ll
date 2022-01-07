; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arm-dis.c_arm_decode_bitfield.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arm-dis.c_arm_decode_bitfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64*, i32*)* @arm_decode_bitfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @arm_decode_bitfield(i8* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %99, %4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sge i32 %18, 48
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sle i32 %23, 57
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  br i1 %26, label %27, label %38

27:                                               ; preds = %25
  %28 = load i32, i32* %11, align 4
  %29 = mul nsw i32 %28, 10
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = add nsw i32 %29, %32
  %34 = sub nsw i32 %33, 48
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  br label %15

38:                                               ; preds = %25
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 45
  br i1 %42, label %43, label %70

43:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %66, %43
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sge i32 %49, 48
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 57
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ false, %46 ], [ %55, %51 ]
  br i1 %57, label %58, label %69

58:                                               ; preds = %56
  %59 = load i32, i32* %12, align 4
  %60 = mul nsw i32 %59, 10
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %60, %63
  %65 = sub nsw i32 %64, 48
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %58
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %5, align 8
  br label %46

69:                                               ; preds = %56
  br label %72

70:                                               ; preds = %38
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call i32 (...) @abort() #2
  unreachable

80:                                               ; preds = %72
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* %11, align 4
  %83 = zext i32 %82 to i64
  %84 = lshr i64 %81, %83
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = shl i64 2, %86
  %88 = sub i64 %87, 1
  %89 = and i64 %84, %88
  %90 = load i32, i32* %10, align 4
  %91 = zext i32 %90 to i64
  %92 = shl i64 %89, %91
  %93 = load i64, i64* %9, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %9, align 8
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %80
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %5, align 8
  %102 = load i8, i8* %100, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 44
  br i1 %104, label %14, label %105

105:                                              ; preds = %99
  %106 = load i64, i64* %9, align 8
  %107 = load i64*, i64** %7, align 8
  store i64 %106, i64* %107, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* %10, align 4
  %112 = load i32*, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 -1
  ret i8* %115
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
