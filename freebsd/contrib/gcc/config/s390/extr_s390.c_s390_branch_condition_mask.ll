; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_branch_condition_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_branch_condition_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i64 0, align 8
@CC_REGNUM = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_branch_condition_mask(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 8, i32* %4, align 4
  store i32 4, i32* %5, align 4
  store i32 2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @XEXP(i64 %8, i32 0)
  %10 = call i64 @GET_CODE(i64 %9)
  %11 = load i64, i64* @REG, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @XEXP(i64 %15, i32 0)
  %17 = call i64 @REGNO(i64 %16)
  %18 = load i64, i64* @CC_REGNUM, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @XEXP(i64 %22, i32 1)
  %24 = load i64, i64* @const0_rtx, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @gcc_assert(i32 %26)
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @XEXP(i64 %28, i32 0)
  %30 = call i32 @GET_MODE(i64 %29)
  switch i32 %30, label %159 [
    i32 146, label %31
    i32 147, label %31
    i32 152, label %37
    i32 151, label %43
    i32 150, label %49
    i32 155, label %55
    i32 158, label %61
    i32 157, label %67
    i32 156, label %73
    i32 148, label %83
    i32 149, label %93
    i32 159, label %103
    i32 160, label %113
    i32 153, label %123
    i32 154, label %141
  ]

31:                                               ; preds = %1, %1
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @GET_CODE(i64 %32)
  switch i64 %33, label %36 [
    i64 145, label %34
    i64 135, label %35
  ]

34:                                               ; preds = %31
  store i32 8, i32* %2, align 4
  br label %160

35:                                               ; preds = %31
  store i32 7, i32* %2, align 4
  br label %160

36:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %160

37:                                               ; preds = %1
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @GET_CODE(i64 %38)
  switch i64 %39, label %42 [
    i64 145, label %40
    i64 135, label %41
  ]

40:                                               ; preds = %37
  store i32 4, i32* %2, align 4
  br label %160

41:                                               ; preds = %37
  store i32 11, i32* %2, align 4
  br label %160

42:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %160

43:                                               ; preds = %1
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @GET_CODE(i64 %44)
  switch i64 %45, label %48 [
    i64 145, label %46
    i64 135, label %47
  ]

46:                                               ; preds = %43
  store i32 2, i32* %2, align 4
  br label %160

47:                                               ; preds = %43
  store i32 13, i32* %2, align 4
  br label %160

48:                                               ; preds = %43
  store i32 -1, i32* %2, align 4
  br label %160

49:                                               ; preds = %1
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @GET_CODE(i64 %50)
  switch i64 %51, label %54 [
    i64 145, label %52
    i64 135, label %53
  ]

52:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %160

53:                                               ; preds = %49
  store i32 14, i32* %2, align 4
  br label %160

54:                                               ; preds = %49
  store i32 -1, i32* %2, align 4
  br label %160

55:                                               ; preds = %1
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @GET_CODE(i64 %56)
  switch i64 %57, label %60 [
    i64 145, label %58
    i64 135, label %59
  ]

58:                                               ; preds = %55
  store i32 10, i32* %2, align 4
  br label %160

59:                                               ; preds = %55
  store i32 5, i32* %2, align 4
  br label %160

60:                                               ; preds = %55
  store i32 -1, i32* %2, align 4
  br label %160

61:                                               ; preds = %1
  %62 = load i64, i64* %3, align 8
  %63 = call i64 @GET_CODE(i64 %62)
  switch i64 %63, label %66 [
    i64 136, label %64
    i64 143, label %65
  ]

64:                                               ; preds = %61
  store i32 3, i32* %2, align 4
  br label %160

65:                                               ; preds = %61
  store i32 12, i32* %2, align 4
  br label %160

66:                                               ; preds = %61
  store i32 -1, i32* %2, align 4
  br label %160

67:                                               ; preds = %1
  %68 = load i64, i64* %3, align 8
  %69 = call i64 @GET_CODE(i64 %68)
  switch i64 %69, label %72 [
    i64 141, label %70
    i64 139, label %71
  ]

70:                                               ; preds = %67
  store i32 12, i32* %2, align 4
  br label %160

71:                                               ; preds = %67
  store i32 3, i32* %2, align 4
  br label %160

72:                                               ; preds = %67
  store i32 -1, i32* %2, align 4
  br label %160

73:                                               ; preds = %1
  %74 = load i64, i64* %3, align 8
  %75 = call i64 @GET_CODE(i64 %74)
  switch i64 %75, label %82 [
    i64 145, label %76
    i64 135, label %77
    i64 136, label %78
    i64 141, label %79
    i64 139, label %80
    i64 143, label %81
  ]

76:                                               ; preds = %73
  store i32 10, i32* %2, align 4
  br label %160

77:                                               ; preds = %73
  store i32 5, i32* %2, align 4
  br label %160

78:                                               ; preds = %73
  store i32 4, i32* %2, align 4
  br label %160

79:                                               ; preds = %73
  store i32 1, i32* %2, align 4
  br label %160

80:                                               ; preds = %73
  store i32 6, i32* %2, align 4
  br label %160

81:                                               ; preds = %73
  store i32 3, i32* %2, align 4
  br label %160

82:                                               ; preds = %73
  store i32 -1, i32* %2, align 4
  br label %160

83:                                               ; preds = %1
  %84 = load i64, i64* %3, align 8
  %85 = call i64 @GET_CODE(i64 %84)
  switch i64 %85, label %92 [
    i64 145, label %86
    i64 135, label %87
    i64 136, label %88
    i64 141, label %89
    i64 139, label %90
    i64 143, label %91
  ]

86:                                               ; preds = %83
  store i32 8, i32* %2, align 4
  br label %160

87:                                               ; preds = %83
  store i32 7, i32* %2, align 4
  br label %160

88:                                               ; preds = %83
  store i32 4, i32* %2, align 4
  br label %160

89:                                               ; preds = %83
  store i32 2, i32* %2, align 4
  br label %160

90:                                               ; preds = %83
  store i32 12, i32* %2, align 4
  br label %160

91:                                               ; preds = %83
  store i32 10, i32* %2, align 4
  br label %160

92:                                               ; preds = %83
  store i32 -1, i32* %2, align 4
  br label %160

93:                                               ; preds = %1
  %94 = load i64, i64* %3, align 8
  %95 = call i64 @GET_CODE(i64 %94)
  switch i64 %95, label %102 [
    i64 145, label %96
    i64 135, label %97
    i64 136, label %98
    i64 141, label %99
    i64 139, label %100
    i64 143, label %101
  ]

96:                                               ; preds = %93
  store i32 8, i32* %2, align 4
  br label %160

97:                                               ; preds = %93
  store i32 7, i32* %2, align 4
  br label %160

98:                                               ; preds = %93
  store i32 2, i32* %2, align 4
  br label %160

99:                                               ; preds = %93
  store i32 4, i32* %2, align 4
  br label %160

100:                                              ; preds = %93
  store i32 10, i32* %2, align 4
  br label %160

101:                                              ; preds = %93
  store i32 12, i32* %2, align 4
  br label %160

102:                                              ; preds = %93
  store i32 -1, i32* %2, align 4
  br label %160

103:                                              ; preds = %1
  %104 = load i64, i64* %3, align 8
  %105 = call i64 @GET_CODE(i64 %104)
  switch i64 %105, label %112 [
    i64 145, label %106
    i64 135, label %107
    i64 138, label %108
    i64 142, label %109
    i64 140, label %110
    i64 144, label %111
  ]

106:                                              ; preds = %103
  store i32 8, i32* %2, align 4
  br label %160

107:                                              ; preds = %103
  store i32 7, i32* %2, align 4
  br label %160

108:                                              ; preds = %103
  store i32 5, i32* %2, align 4
  br label %160

109:                                              ; preds = %103
  store i32 2, i32* %2, align 4
  br label %160

110:                                              ; preds = %103
  store i32 13, i32* %2, align 4
  br label %160

111:                                              ; preds = %103
  store i32 10, i32* %2, align 4
  br label %160

112:                                              ; preds = %103
  store i32 -1, i32* %2, align 4
  br label %160

113:                                              ; preds = %1
  %114 = load i64, i64* %3, align 8
  %115 = call i64 @GET_CODE(i64 %114)
  switch i64 %115, label %122 [
    i64 145, label %116
    i64 135, label %117
    i64 138, label %118
    i64 142, label %119
    i64 140, label %120
    i64 144, label %121
  ]

116:                                              ; preds = %113
  store i32 8, i32* %2, align 4
  br label %160

117:                                              ; preds = %113
  store i32 7, i32* %2, align 4
  br label %160

118:                                              ; preds = %113
  store i32 4, i32* %2, align 4
  br label %160

119:                                              ; preds = %113
  store i32 3, i32* %2, align 4
  br label %160

120:                                              ; preds = %113
  store i32 12, i32* %2, align 4
  br label %160

121:                                              ; preds = %113
  store i32 11, i32* %2, align 4
  br label %160

122:                                              ; preds = %113
  store i32 -1, i32* %2, align 4
  br label %160

123:                                              ; preds = %1
  %124 = load i64, i64* %3, align 8
  %125 = call i64 @GET_CODE(i64 %124)
  switch i64 %125, label %140 [
    i64 145, label %126
    i64 135, label %127
    i64 138, label %128
    i64 142, label %129
    i64 140, label %130
    i64 144, label %131
    i64 128, label %132
    i64 134, label %133
    i64 133, label %134
    i64 129, label %135
    i64 131, label %136
    i64 130, label %137
    i64 132, label %138
    i64 137, label %139
  ]

126:                                              ; preds = %123
  store i32 8, i32* %2, align 4
  br label %160

127:                                              ; preds = %123
  store i32 7, i32* %2, align 4
  br label %160

128:                                              ; preds = %123
  store i32 4, i32* %2, align 4
  br label %160

129:                                              ; preds = %123
  store i32 2, i32* %2, align 4
  br label %160

130:                                              ; preds = %123
  store i32 12, i32* %2, align 4
  br label %160

131:                                              ; preds = %123
  store i32 10, i32* %2, align 4
  br label %160

132:                                              ; preds = %123
  store i32 1, i32* %2, align 4
  br label %160

133:                                              ; preds = %123
  store i32 14, i32* %2, align 4
  br label %160

134:                                              ; preds = %123
  store i32 9, i32* %2, align 4
  br label %160

135:                                              ; preds = %123
  store i32 5, i32* %2, align 4
  br label %160

136:                                              ; preds = %123
  store i32 3, i32* %2, align 4
  br label %160

137:                                              ; preds = %123
  store i32 13, i32* %2, align 4
  br label %160

138:                                              ; preds = %123
  store i32 11, i32* %2, align 4
  br label %160

139:                                              ; preds = %123
  store i32 6, i32* %2, align 4
  br label %160

140:                                              ; preds = %123
  store i32 -1, i32* %2, align 4
  br label %160

141:                                              ; preds = %1
  %142 = load i64, i64* %3, align 8
  %143 = call i64 @GET_CODE(i64 %142)
  switch i64 %143, label %158 [
    i64 145, label %144
    i64 135, label %145
    i64 138, label %146
    i64 142, label %147
    i64 140, label %148
    i64 144, label %149
    i64 128, label %150
    i64 134, label %151
    i64 133, label %152
    i64 129, label %153
    i64 131, label %154
    i64 130, label %155
    i64 132, label %156
    i64 137, label %157
  ]

144:                                              ; preds = %141
  store i32 8, i32* %2, align 4
  br label %160

145:                                              ; preds = %141
  store i32 7, i32* %2, align 4
  br label %160

146:                                              ; preds = %141
  store i32 2, i32* %2, align 4
  br label %160

147:                                              ; preds = %141
  store i32 4, i32* %2, align 4
  br label %160

148:                                              ; preds = %141
  store i32 10, i32* %2, align 4
  br label %160

149:                                              ; preds = %141
  store i32 12, i32* %2, align 4
  br label %160

150:                                              ; preds = %141
  store i32 1, i32* %2, align 4
  br label %160

151:                                              ; preds = %141
  store i32 14, i32* %2, align 4
  br label %160

152:                                              ; preds = %141
  store i32 9, i32* %2, align 4
  br label %160

153:                                              ; preds = %141
  store i32 3, i32* %2, align 4
  br label %160

154:                                              ; preds = %141
  store i32 5, i32* %2, align 4
  br label %160

155:                                              ; preds = %141
  store i32 11, i32* %2, align 4
  br label %160

156:                                              ; preds = %141
  store i32 13, i32* %2, align 4
  br label %160

157:                                              ; preds = %141
  store i32 6, i32* %2, align 4
  br label %160

158:                                              ; preds = %141
  store i32 -1, i32* %2, align 4
  br label %160

159:                                              ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %158, %157, %156, %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %144, %140, %139, %138, %137, %136, %135, %134, %133, %132, %131, %130, %129, %128, %127, %126, %122, %121, %120, %119, %118, %117, %116, %112, %111, %110, %109, %108, %107, %106, %102, %101, %100, %99, %98, %97, %96, %92, %91, %90, %89, %88, %87, %86, %82, %81, %80, %79, %78, %77, %76, %72, %71, %70, %66, %65, %64, %60, %59, %58, %54, %53, %52, %48, %47, %46, %42, %41, %40, %36, %35, %34
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i32 @GET_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
