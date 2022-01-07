; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gadget_chips.h_usb_gadget_controller_number.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_gadget_chips.h_usb_gadget_controller_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @usb_gadget_controller_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_gadget_controller_number(%struct.usb_gadget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  %4 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %5 = call i64 @gadget_is_net2280(%struct.usb_gadget* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %155

8:                                                ; preds = %1
  %9 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %10 = call i64 @gadget_is_dummy(%struct.usb_gadget* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 2, i32* %2, align 4
  br label %155

13:                                               ; preds = %8
  %14 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %15 = call i64 @gadget_is_pxa(%struct.usb_gadget* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 3, i32* %2, align 4
  br label %155

18:                                               ; preds = %13
  %19 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %20 = call i64 @gadget_is_sh(%struct.usb_gadget* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 4, i32* %2, align 4
  br label %155

23:                                               ; preds = %18
  %24 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %25 = call i64 @gadget_is_sa1100(%struct.usb_gadget* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 5, i32* %2, align 4
  br label %155

28:                                               ; preds = %23
  %29 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %30 = call i64 @gadget_is_goku(%struct.usb_gadget* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 6, i32* %2, align 4
  br label %155

33:                                               ; preds = %28
  %34 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %35 = call i64 @gadget_is_mq11xx(%struct.usb_gadget* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 7, i32* %2, align 4
  br label %155

38:                                               ; preds = %33
  %39 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %40 = call i64 @gadget_is_omap(%struct.usb_gadget* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 8, i32* %2, align 4
  br label %155

43:                                               ; preds = %38
  %44 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %45 = call i64 @gadget_is_lh7a40x(%struct.usb_gadget* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 9, i32* %2, align 4
  br label %155

48:                                               ; preds = %43
  %49 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %50 = call i64 @gadget_is_n9604(%struct.usb_gadget* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 16, i32* %2, align 4
  br label %155

53:                                               ; preds = %48
  %54 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %55 = call i64 @gadget_is_pxa27x(%struct.usb_gadget* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 17, i32* %2, align 4
  br label %155

58:                                               ; preds = %53
  %59 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %60 = call i64 @gadget_is_s3c2410(%struct.usb_gadget* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 18, i32* %2, align 4
  br label %155

63:                                               ; preds = %58
  %64 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %65 = call i64 @gadget_is_at91(%struct.usb_gadget* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 19, i32* %2, align 4
  br label %155

68:                                               ; preds = %63
  %69 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %70 = call i64 @gadget_is_imx(%struct.usb_gadget* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 20, i32* %2, align 4
  br label %155

73:                                               ; preds = %68
  %74 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %75 = call i64 @gadget_is_musbhsfc(%struct.usb_gadget* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 21, i32* %2, align 4
  br label %155

78:                                               ; preds = %73
  %79 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %80 = call i64 @gadget_is_musbhdrc(%struct.usb_gadget* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 22, i32* %2, align 4
  br label %155

83:                                               ; preds = %78
  %84 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %85 = call i64 @gadget_is_mpc8272(%struct.usb_gadget* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 23, i32* %2, align 4
  br label %155

88:                                               ; preds = %83
  %89 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %90 = call i64 @gadget_is_atmel_usba(%struct.usb_gadget* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 24, i32* %2, align 4
  br label %155

93:                                               ; preds = %88
  %94 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %95 = call i64 @gadget_is_fsl_usb2(%struct.usb_gadget* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 25, i32* %2, align 4
  br label %155

98:                                               ; preds = %93
  %99 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %100 = call i64 @gadget_is_amd5536udc(%struct.usb_gadget* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 32, i32* %2, align 4
  br label %155

103:                                              ; preds = %98
  %104 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %105 = call i64 @gadget_is_m66592(%struct.usb_gadget* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 33, i32* %2, align 4
  br label %155

108:                                              ; preds = %103
  %109 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %110 = call i64 @gadget_is_fsl_qe(%struct.usb_gadget* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 34, i32* %2, align 4
  br label %155

113:                                              ; preds = %108
  %114 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %115 = call i64 @gadget_is_ci13xxx(%struct.usb_gadget* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 35, i32* %2, align 4
  br label %155

118:                                              ; preds = %113
  %119 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %120 = call i64 @gadget_is_langwell(%struct.usb_gadget* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 36, i32* %2, align 4
  br label %155

123:                                              ; preds = %118
  %124 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %125 = call i64 @gadget_is_r8a66597(%struct.usb_gadget* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 37, i32* %2, align 4
  br label %155

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
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
  %153 = load i32, i32* @ENOENT, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %152, %127, %122, %117, %112, %107, %102, %97, %92, %87, %82, %77, %72, %67, %62, %57, %52, %47, %42, %37, %32, %27, %22, %17, %12, %7
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i64 @gadget_is_net2280(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_dummy(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_pxa(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_sh(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_sa1100(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_goku(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_mq11xx(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_omap(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_lh7a40x(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_n9604(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_pxa27x(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_s3c2410(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_at91(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_imx(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_musbhsfc(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_musbhdrc(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_mpc8272(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_atmel_usba(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_fsl_usb2(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_amd5536udc(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_m66592(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_fsl_qe(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_ci13xxx(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_langwell(%struct.usb_gadget*) #1

declare dso_local i64 @gadget_is_r8a66597(%struct.usb_gadget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
