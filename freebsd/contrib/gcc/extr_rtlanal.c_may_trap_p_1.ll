; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_may_trap_p_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_may_trap_p_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MTP_UNALIGNED_MEMS = common dso_local global i32 0, align 4
@MTP_AFTER_MOVE = common dso_local global i32 0, align 4
@STRICT_ALIGNMENT = common dso_local global i32 0, align 4
@flag_trapping_math = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @may_trap_p_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_trap_p_1(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MTP_UNALIGNED_MEMS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %204

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @GET_CODE(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %133 [
    i32 152, label %23
    i32 153, label %23
    i32 151, label %23
    i32 132, label %23
    i32 144, label %23
    i32 154, label %23
    i32 136, label %23
    i32 156, label %23
    i32 135, label %23
    i32 134, label %23
    i32 158, label %24
    i32 128, label %24
    i32 131, label %24
    i32 157, label %25
    i32 140, label %28
    i32 150, label %51
    i32 139, label %51
    i32 130, label %51
    i32 129, label %51
    i32 148, label %76
    i32 146, label %77
    i32 145, label %77
    i32 143, label %77
    i32 142, label %77
    i32 141, label %77
    i32 155, label %77
    i32 149, label %101
    i32 138, label %101
    i32 147, label %121
    i32 137, label %132
    i32 159, label %132
    i32 133, label %132
  ]

23:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  store i32 0, i32* %3, align 4
  br label %204

24:                                               ; preds = %19, %19, %19
  store i32 1, i32* %3, align 4
  br label %204

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @MEM_VOLATILE_P(i64 %26)
  store i32 %27, i32* %3, align 4
  br label %204

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MTP_AFTER_MOVE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @MEM_NOTRAP_P(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* @STRICT_ALIGNMENT, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40, %37
  store i32 0, i32* %3, align 4
  br label %204

44:                                               ; preds = %40, %33, %28
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @XEXP(i64 %45, i32 0)
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @GET_MODE(i64 %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @rtx_addr_can_trap_p_1(i64 %46, i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %204

51:                                               ; preds = %19, %19, %19, %19
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @GET_MODE(i64 %52)
  %54 = call i32 @HONOR_SNANS(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %204

57:                                               ; preds = %51
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @GET_MODE(i64 %58)
  %60 = call i32 @SCALAR_FLOAT_MODE_P(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @flag_trapping_math, align 4
  store i32 %63, i32* %3, align 4
  br label %204

64:                                               ; preds = %57
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @XEXP(i64 %65, i32 1)
  %67 = call i32 @CONSTANT_P(i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i64, i64* %4, align 8
  %71 = call i64 @XEXP(i64 %70, i32 1)
  %72 = load i64, i64* @const0_rtx, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %64
  store i32 1, i32* %3, align 4
  br label %204

75:                                               ; preds = %69
  br label %143

76:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %204

77:                                               ; preds = %19, %19, %19, %19, %19, %19
  %78 = load i32, i32* @flag_trapping_math, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  br label %143

81:                                               ; preds = %77
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @GET_MODE(i64 %82)
  %84 = call i32 @HONOR_NANS(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %204

87:                                               ; preds = %81
  %88 = load i64, i64* %4, align 8
  %89 = call i64 @XEXP(i64 %88, i32 0)
  %90 = call i32 @GET_MODE(i64 %89)
  %91 = call i32 @HONOR_NANS(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load i64, i64* %4, align 8
  %95 = call i64 @XEXP(i64 %94, i32 1)
  %96 = call i32 @GET_MODE(i64 %95)
  %97 = call i32 @HONOR_NANS(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %87
  store i32 1, i32* %3, align 4
  br label %204

100:                                              ; preds = %93
  br label %143

101:                                              ; preds = %19, %19
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @GET_MODE(i64 %102)
  %104 = call i32 @HONOR_SNANS(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 1, i32* %3, align 4
  br label %204

107:                                              ; preds = %101
  %108 = load i64, i64* %4, align 8
  %109 = call i64 @XEXP(i64 %108, i32 0)
  %110 = call i32 @GET_MODE(i64 %109)
  %111 = call i32 @HONOR_SNANS(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load i64, i64* %4, align 8
  %115 = call i64 @XEXP(i64 %114, i32 1)
  %116 = call i32 @GET_MODE(i64 %115)
  %117 = call i32 @HONOR_SNANS(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113, %107
  store i32 1, i32* %3, align 4
  br label %204

120:                                              ; preds = %113
  br label %143

121:                                              ; preds = %19
  %122 = load i32, i32* @flag_trapping_math, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i64, i64* %4, align 8
  %126 = call i64 @XEXP(i64 %125, i32 0)
  %127 = call i32 @GET_MODE(i64 %126)
  %128 = call i32 @HONOR_NANS(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 1, i32* %3, align 4
  br label %204

131:                                              ; preds = %124, %121
  br label %143

132:                                              ; preds = %19, %19, %19
  br label %143

133:                                              ; preds = %19
  %134 = load i64, i64* %4, align 8
  %135 = call i32 @GET_MODE(i64 %134)
  %136 = call i32 @SCALAR_FLOAT_MODE_P(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32, i32* @flag_trapping_math, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 1, i32* %3, align 4
  br label %204

142:                                              ; preds = %138, %133
  br label %143

143:                                              ; preds = %142, %132, %131, %120, %100, %80, %75
  %144 = load i32, i32* %7, align 4
  %145 = call i8* @GET_RTX_FORMAT(i32 %144)
  store i8* %145, i8** %8, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @GET_RTX_LENGTH(i32 %146)
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %200, %143
  %150 = load i32, i32* %6, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %203

152:                                              ; preds = %149
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 101
  br i1 %159, label %160, label %169

160:                                              ; preds = %152
  %161 = load i64, i64* %4, align 8
  %162 = load i32, i32* %6, align 4
  %163 = call i64 @XEXP(i64 %161, i32 %162)
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @may_trap_p_1(i64 %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  store i32 1, i32* %3, align 4
  br label %204

168:                                              ; preds = %160
  br label %199

169:                                              ; preds = %152
  %170 = load i8*, i8** %8, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 69
  br i1 %176, label %177, label %198

177:                                              ; preds = %169
  store i32 0, i32* %10, align 4
  br label %178

178:                                              ; preds = %194, %177
  %179 = load i32, i32* %10, align 4
  %180 = load i64, i64* %4, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @XVECLEN(i64 %180, i32 %181)
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %178
  %185 = load i64, i64* %4, align 8
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %10, align 4
  %188 = call i64 @XVECEXP(i64 %185, i32 %186, i32 %187)
  %189 = load i32, i32* %5, align 4
  %190 = call i32 @may_trap_p_1(i64 %188, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  store i32 1, i32* %3, align 4
  br label %204

193:                                              ; preds = %184
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  br label %178

197:                                              ; preds = %178
  br label %198

198:                                              ; preds = %197, %169
  br label %199

199:                                              ; preds = %198, %168
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %6, align 4
  br label %149

203:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %192, %167, %141, %130, %119, %106, %99, %86, %76, %74, %62, %56, %44, %43, %25, %24, %23, %18
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @MEM_VOLATILE_P(i64) #1

declare dso_local i32 @MEM_NOTRAP_P(i64) #1

declare dso_local i32 @rtx_addr_can_trap_p_1(i64, i32, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @HONOR_SNANS(i32) #1

declare dso_local i32 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i32 @CONSTANT_P(i64) #1

declare dso_local i32 @HONOR_NANS(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
