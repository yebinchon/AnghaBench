; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_get_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_get_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_0mmi_ = common dso_local global i32 0, align 4
@_0mii_ = common dso_local global i32 0, align 4
@_0mmb_ = common dso_local global i32 0, align 4
@_0mib_ = common dso_local global i32 0, align 4
@_0mbb_ = common dso_local global i32 0, align 4
@_0bbb_ = common dso_local global i32 0, align 4
@_0mmf_ = common dso_local global i32 0, align 4
@_0mfi_ = common dso_local global i32 0, align 4
@_0mfb_ = common dso_local global i32 0, align 4
@_0mlx_ = common dso_local global i32 0, align 4
@_1mmi_ = common dso_local global i32 0, align 4
@_1mii_ = common dso_local global i32 0, align 4
@_1mmb_ = common dso_local global i32 0, align 4
@_1mib_ = common dso_local global i32 0, align 4
@_1mbb_ = common dso_local global i32 0, align 4
@_1bbb_ = common dso_local global i32 0, align 4
@_1mmf_ = common dso_local global i32 0, align 4
@_1mfi_ = common dso_local global i32 0, align 4
@_1mfb_ = common dso_local global i32 0, align 4
@_1mlx_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_template(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %154 [
    i32 3, label %7
    i32 6, label %79
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @_0mmi_, align 4
  %10 = call i32 @cpu_unit_reservation_p(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %156

13:                                               ; preds = %7
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @_0mii_, align 4
  %16 = call i32 @cpu_unit_reservation_p(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %156

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @_0mmb_, align 4
  %22 = call i32 @cpu_unit_reservation_p(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 7, i32* %3, align 4
  br label %156

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @_0mib_, align 4
  %28 = call i32 @cpu_unit_reservation_p(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 6, i32* %3, align 4
  br label %156

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @_0mbb_, align 4
  %34 = call i32 @cpu_unit_reservation_p(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 5, i32* %3, align 4
  br label %156

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @_0bbb_, align 4
  %40 = call i32 @cpu_unit_reservation_p(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 4, i32* %3, align 4
  br label %156

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @_0mmf_, align 4
  %46 = call i32 @cpu_unit_reservation_p(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 3, i32* %3, align 4
  br label %156

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @_0mfi_, align 4
  %52 = call i32 @cpu_unit_reservation_p(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 2, i32* %3, align 4
  br label %156

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @_0mfb_, align 4
  %58 = call i32 @cpu_unit_reservation_p(i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 8, i32* %3, align 4
  br label %156

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @_0mlx_, align 4
  %64 = call i32 @cpu_unit_reservation_p(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 9, i32* %3, align 4
  br label %156

67:                                               ; preds = %61
  %68 = call i32 (...) @gcc_unreachable()
  br label %69

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %2, %78
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @_1mmi_, align 4
  %82 = call i32 @cpu_unit_reservation_p(i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %156

85:                                               ; preds = %79
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @_1mii_, align 4
  %88 = call i32 @cpu_unit_reservation_p(i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %156

91:                                               ; preds = %85
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @_1mmb_, align 4
  %94 = call i32 @cpu_unit_reservation_p(i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 7, i32* %3, align 4
  br label %156

97:                                               ; preds = %91
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @_1mib_, align 4
  %100 = call i32 @cpu_unit_reservation_p(i32 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 6, i32* %3, align 4
  br label %156

103:                                              ; preds = %97
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @_1mbb_, align 4
  %106 = call i32 @cpu_unit_reservation_p(i32 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 5, i32* %3, align 4
  br label %156

109:                                              ; preds = %103
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @_1bbb_, align 4
  %112 = call i32 @cpu_unit_reservation_p(i32 %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 4, i32* %3, align 4
  br label %156

115:                                              ; preds = %109
  %116 = load i32, i32* @_1mmf_, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @_1mmf_, align 4
  %121 = call i32 @cpu_unit_reservation_p(i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 3, i32* %3, align 4
  br label %156

124:                                              ; preds = %118, %115
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @_1mfi_, align 4
  %127 = call i32 @cpu_unit_reservation_p(i32 %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 2, i32* %3, align 4
  br label %156

130:                                              ; preds = %124
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @_1mfb_, align 4
  %133 = call i32 @cpu_unit_reservation_p(i32 %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 8, i32* %3, align 4
  br label %156

136:                                              ; preds = %130
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @_1mlx_, align 4
  %139 = call i32 @cpu_unit_reservation_p(i32 %137, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 9, i32* %3, align 4
  br label %156

142:                                              ; preds = %136
  %143 = call i32 (...) @gcc_unreachable()
  br label %144

144:                                              ; preds = %142
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %2, %153
  %155 = call i32 (...) @gcc_unreachable()
  br label %156

156:                                              ; preds = %12, %18, %24, %30, %36, %42, %48, %54, %60, %66, %84, %90, %96, %102, %108, %114, %123, %129, %135, %141, %154
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @cpu_unit_reservation_p(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
