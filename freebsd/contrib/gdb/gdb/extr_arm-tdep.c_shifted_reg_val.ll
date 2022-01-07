; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_shifted_reg_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_shifted_reg_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_PC_32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i64, i64)* @shifted_reg_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @shifted_reg_val(i64 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i8* @bits(i64 %14, i32 0, i32 3)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %11, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i8* @bits(i64 %17, i32 5, i32 6)
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @bit(i64 %20, i32 4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %4
  %24 = load i64, i64* %5, align 8
  %25 = call i8* @bits(i64 %24, i32 8, i32 11)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, 15
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 8
  br label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @read_register(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i64 [ %31, %29 ], [ %34, %32 ]
  %37 = and i64 %36, 255
  store i64 %37, i64* %10, align 8
  br label %42

38:                                               ; preds = %4
  %39 = load i64, i64* %5, align 8
  %40 = call i8* @bits(i64 %39, i32 7, i32 11)
  %41 = ptrtoint i8* %40 to i64
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 15
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @ARM_PC_32, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %52

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i64 [ 0, %49 ], [ %51, %50 ]
  %54 = or i64 %46, %53
  %55 = load i64, i64* %5, align 8
  %56 = call i64 @bit(i64 %55, i32 4)
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 12, i32 8
  %60 = sext i32 %59 to i64
  %61 = add i64 %54, %60
  br label %65

62:                                               ; preds = %42
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @read_register(i32 %63)
  br label %65

65:                                               ; preds = %62, %52
  %66 = phi i64 [ %61, %52 ], [ %64, %62 ]
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %12, align 8
  switch i64 %67, label %131 [
    i64 0, label %68
    i64 1, label %78
    i64 2, label %88
    i64 3, label %108
  ]

68:                                               ; preds = %65
  %69 = load i64, i64* %10, align 8
  %70 = icmp uge i64 %69, 32
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %76

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = shl i64 %73, %74
  br label %76

76:                                               ; preds = %72, %71
  %77 = phi i64 [ 0, %71 ], [ %75, %72 ]
  store i64 %77, i64* %9, align 8
  br label %131

78:                                               ; preds = %65
  %79 = load i64, i64* %10, align 8
  %80 = icmp uge i64 %79, 32
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %86

82:                                               ; preds = %78
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = lshr i64 %83, %84
  br label %86

86:                                               ; preds = %82, %81
  %87 = phi i64 [ 0, %81 ], [ %85, %82 ]
  store i64 %87, i64* %9, align 8
  br label %131

88:                                               ; preds = %65
  %89 = load i64, i64* %10, align 8
  %90 = icmp uge i64 %89, 32
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i64 31, i64* %10, align 8
  br label %92

92:                                               ; preds = %91, %88
  %93 = load i64, i64* %9, align 8
  %94 = and i64 %93, 2147483648
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i64, i64* %9, align 8
  %98 = xor i64 %97, -1
  %99 = load i64, i64* %10, align 8
  %100 = lshr i64 %98, %99
  %101 = xor i64 %100, -1
  br label %106

102:                                              ; preds = %92
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = lshr i64 %103, %104
  br label %106

106:                                              ; preds = %102, %96
  %107 = phi i64 [ %101, %96 ], [ %105, %102 ]
  store i64 %107, i64* %9, align 8
  br label %131

108:                                              ; preds = %65
  %109 = load i64, i64* %10, align 8
  %110 = and i64 %109, 31
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %10, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i64, i64* %9, align 8
  %115 = lshr i64 %114, 1
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i64 2147483648, i64 0
  %120 = or i64 %115, %119
  store i64 %120, i64* %9, align 8
  br label %130

121:                                              ; preds = %108
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %10, align 8
  %124 = lshr i64 %122, %123
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %10, align 8
  %127 = sub i64 32, %126
  %128 = shl i64 %125, %127
  %129 = or i64 %124, %128
  store i64 %129, i64* %9, align 8
  br label %130

130:                                              ; preds = %121, %113
  br label %131

131:                                              ; preds = %65, %130, %106, %86, %76
  %132 = load i64, i64* %9, align 8
  %133 = and i64 %132, 4294967295
  ret i64 %133
}

declare dso_local i8* @bits(i64, i32, i32) #1

declare dso_local i64 @bit(i64, i32) #1

declare dso_local i64 @read_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
