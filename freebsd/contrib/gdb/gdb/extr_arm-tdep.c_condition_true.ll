; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_condition_true.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_condition_true.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INST_AL = common dso_local global i64 0, align 8
@INST_NV = common dso_local global i64 0, align 8
@FLAG_Z = common dso_local global i64 0, align 8
@FLAG_C = common dso_local global i64 0, align 8
@FLAG_N = common dso_local global i64 0, align 8
@FLAG_V = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @condition_true to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @condition_true(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @INST_AL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @INST_NV, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i32 1, i32* %3, align 4
  br label %149

14:                                               ; preds = %9
  %15 = load i64, i64* %4, align 8
  switch i64 %15, label %148 [
    i64 139, label %16
    i64 131, label %22
    i64 140, label %28
    i64 141, label %34
    i64 132, label %40
    i64 130, label %46
    i64 128, label %52
    i64 129, label %58
    i64 136, label %64
    i64 134, label %73
    i64 138, label %82
    i64 133, label %95
    i64 137, label %108
    i64 135, label %128
  ]

16:                                               ; preds = %14
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @FLAG_Z, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %149

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @FLAG_Z, align 8
  %25 = and i64 %23, %24
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %149

28:                                               ; preds = %14
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @FLAG_C, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %149

34:                                               ; preds = %14
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @FLAG_C, align 8
  %37 = and i64 %35, %36
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %149

40:                                               ; preds = %14
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @FLAG_N, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %149

46:                                               ; preds = %14
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @FLAG_N, align 8
  %49 = and i64 %47, %48
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %149

52:                                               ; preds = %14
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @FLAG_V, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %149

58:                                               ; preds = %14
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @FLAG_V, align 8
  %61 = and i64 %59, %60
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %149

64:                                               ; preds = %14
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @FLAG_C, align 8
  %67 = load i64, i64* @FLAG_Z, align 8
  %68 = or i64 %66, %67
  %69 = and i64 %65, %68
  %70 = load i64, i64* @FLAG_C, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %149

73:                                               ; preds = %14
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @FLAG_C, align 8
  %76 = load i64, i64* @FLAG_Z, align 8
  %77 = or i64 %75, %76
  %78 = and i64 %74, %77
  %79 = load i64, i64* @FLAG_C, align 8
  %80 = icmp ne i64 %78, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %3, align 4
  br label %149

82:                                               ; preds = %14
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @FLAG_N, align 8
  %85 = and i64 %83, %84
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @FLAG_V, align 8
  %90 = and i64 %88, %89
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = icmp eq i32 %87, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %3, align 4
  br label %149

95:                                               ; preds = %14
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @FLAG_N, align 8
  %98 = and i64 %96, %97
  %99 = icmp eq i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* @FLAG_V, align 8
  %103 = and i64 %101, %102
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = icmp ne i32 %100, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %3, align 4
  br label %149

108:                                              ; preds = %14
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* @FLAG_Z, align 8
  %111 = and i64 %109, %110
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* @FLAG_N, align 8
  %116 = and i64 %114, %115
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* @FLAG_V, align 8
  %121 = and i64 %119, %120
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = icmp eq i32 %118, %123
  br label %125

125:                                              ; preds = %113, %108
  %126 = phi i1 [ false, %108 ], [ %124, %113 ]
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %3, align 4
  br label %149

128:                                              ; preds = %14
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* @FLAG_Z, align 8
  %131 = and i64 %129, %130
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %128
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* @FLAG_N, align 8
  %136 = and i64 %134, %135
  %137 = icmp eq i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = load i64, i64* %5, align 8
  %140 = load i64, i64* @FLAG_V, align 8
  %141 = and i64 %139, %140
  %142 = icmp eq i64 %141, 0
  %143 = zext i1 %142 to i32
  %144 = icmp ne i32 %138, %143
  br label %145

145:                                              ; preds = %133, %128
  %146 = phi i1 [ true, %128 ], [ %144, %133 ]
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %3, align 4
  br label %149

148:                                              ; preds = %14
  store i32 1, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %145, %125, %95, %82, %73, %64, %58, %52, %46, %40, %34, %28, %22, %16, %13
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
