; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips32_skip_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips32_skip_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIPS_INSTLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @mips32_skip_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mips32_skip_prologue(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @skip_prologue_using_sal(i64 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i64, i64* %2, align 8
  %14 = add nsw i64 %13, 100
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %12, %1
  br label %16

16:                                               ; preds = %134, %15
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %138

20:                                               ; preds = %16
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @mips_fetch_instruction(i64 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 65535
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 10173
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %30, 26557
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %20
  store i32 1, i32* %5, align 4
  br label %133

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 60942371
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 61401123
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33
  store i32 1, i32* %5, align 4
  br label %132

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, -2097152
  %43 = icmp eq i32 %42, -1348468736
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, -2097152
  %47 = icmp eq i32 %46, -6291456
  br i1 %47, label %48, label %53

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 2031616
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %134

53:                                               ; preds = %48, %44
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, -2097152
  %56 = icmp eq i32 %55, -408944640
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %134

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, -203423744
  %61 = icmp eq i32 %60, -1547698176
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, 2031616
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %134

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %3, align 4
  %69 = icmp eq i32 %68, 60878881
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = icmp eq i32 %71, 60878885
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = icmp eq i32 %74, 60878893
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %70, %67
  br label %134

77:                                               ; preds = %73
  %78 = load i32, i32* %3, align 4
  %79 = and i32 %78, -6354945
  %80 = icmp eq i32 %79, 8388641
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %134

82:                                               ; preds = %77
  %83 = load i64, i64* %7, align 8
  %84 = icmp eq i64 %83, 15388
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %134

86:                                               ; preds = %82
  %87 = load i64, i64* %7, align 8
  %88 = icmp eq i64 %87, 10140
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %134

90:                                               ; preds = %86
  %91 = load i32, i32* %3, align 4
  %92 = icmp eq i32 %91, 60416033
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %3, align 4
  %95 = icmp eq i32 %94, 54321185
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %90
  br label %134

97:                                               ; preds = %93
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %131, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %7, align 8
  %102 = icmp eq i64 %101, 15361
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %7, align 8
  %105 = icmp eq i64 %104, 15368
  br i1 %105, label %106, label %112

106:                                              ; preds = %103, %100
  %107 = load i64, i64* @MIPS_INSTLEN, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %6, align 4
  br label %134

112:                                              ; preds = %103
  %113 = load i64, i64* %7, align 8
  %114 = icmp eq i64 %113, 13345
  br i1 %114, label %124, label %115

115:                                              ; preds = %112
  %116 = load i64, i64* %7, align 8
  %117 = icmp eq i64 %116, 13576
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* %7, align 8
  %120 = icmp eq i64 %119, 13313
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i64, i64* %7, align 8
  %123 = icmp eq i64 %122, 13320
  br i1 %123, label %124, label %130

124:                                              ; preds = %121, %118, %115, %112
  %125 = load i64, i64* @MIPS_INSTLEN, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %6, align 4
  br label %134

130:                                              ; preds = %121
  br label %138

131:                                              ; preds = %97
  br label %138

132:                                              ; preds = %39
  br label %133

133:                                              ; preds = %132, %32
  br label %134

134:                                              ; preds = %133, %124, %106, %96, %89, %85, %81, %76, %66, %57, %52
  %135 = load i64, i64* @MIPS_INSTLEN, align 8
  %136 = load i64, i64* %2, align 8
  %137 = add nsw i64 %136, %135
  store i64 %137, i64* %2, align 8
  br label %16

138:                                              ; preds = %131, %130, %16
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %2, align 8
  %148 = sub nsw i64 %147, %146
  store i64 %148, i64* %2, align 8
  br label %149

149:                                              ; preds = %144, %141, %138
  %150 = load i64, i64* %2, align 8
  ret i64 %150
}

declare dso_local i64 @skip_prologue_using_sal(i64) #1

declare dso_local i32 @mips_fetch_instruction(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
