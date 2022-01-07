; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_cp210x.c_cp210x_quantise_baudrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_cp210x.c_cp210x_quantise_baudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cp210x_quantise_baudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp210x_quantise_baudrate(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ule i32 %3, 56
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %162

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp ule i32 %7, 300
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 300, i32* %2, align 4
  br label %161

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = icmp ule i32 %11, 600
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 600, i32* %2, align 4
  br label %160

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = icmp ule i32 %15, 1200
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1200, i32* %2, align 4
  br label %159

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = icmp ule i32 %19, 1800
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1800, i32* %2, align 4
  br label %158

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = icmp ule i32 %23, 2400
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 2400, i32* %2, align 4
  br label %157

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = icmp ule i32 %27, 4000
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 4000, i32* %2, align 4
  br label %156

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = icmp ule i32 %31, 4803
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 4800, i32* %2, align 4
  br label %155

34:                                               ; preds = %30
  %35 = load i32, i32* %2, align 4
  %36 = icmp ule i32 %35, 7207
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 7200, i32* %2, align 4
  br label %154

38:                                               ; preds = %34
  %39 = load i32, i32* %2, align 4
  %40 = icmp ule i32 %39, 9612
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 9600, i32* %2, align 4
  br label %153

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = icmp ule i32 %43, 14428
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 14400, i32* %2, align 4
  br label %152

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  %48 = icmp ule i32 %47, 16062
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 16000, i32* %2, align 4
  br label %151

50:                                               ; preds = %46
  %51 = load i32, i32* %2, align 4
  %52 = icmp ule i32 %51, 19250
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 19200, i32* %2, align 4
  br label %150

54:                                               ; preds = %50
  %55 = load i32, i32* %2, align 4
  %56 = icmp ule i32 %55, 28912
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 28800, i32* %2, align 4
  br label %149

58:                                               ; preds = %54
  %59 = load i32, i32* %2, align 4
  %60 = icmp ule i32 %59, 38601
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 38400, i32* %2, align 4
  br label %148

62:                                               ; preds = %58
  %63 = load i32, i32* %2, align 4
  %64 = icmp ule i32 %63, 51558
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 51200, i32* %2, align 4
  br label %147

66:                                               ; preds = %62
  %67 = load i32, i32* %2, align 4
  %68 = icmp ule i32 %67, 56280
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 56000, i32* %2, align 4
  br label %146

70:                                               ; preds = %66
  %71 = load i32, i32* %2, align 4
  %72 = icmp ule i32 %71, 58053
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 57600, i32* %2, align 4
  br label %145

74:                                               ; preds = %70
  %75 = load i32, i32* %2, align 4
  %76 = icmp ule i32 %75, 64111
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 64000, i32* %2, align 4
  br label %144

78:                                               ; preds = %74
  %79 = load i32, i32* %2, align 4
  %80 = icmp ule i32 %79, 77608
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 76800, i32* %2, align 4
  br label %143

82:                                               ; preds = %78
  %83 = load i32, i32* %2, align 4
  %84 = icmp ule i32 %83, 117028
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 115200, i32* %2, align 4
  br label %142

86:                                               ; preds = %82
  %87 = load i32, i32* %2, align 4
  %88 = icmp ule i32 %87, 129347
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 128000, i32* %2, align 4
  br label %141

90:                                               ; preds = %86
  %91 = load i32, i32* %2, align 4
  %92 = icmp ule i32 %91, 156868
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 153600, i32* %2, align 4
  br label %140

94:                                               ; preds = %90
  %95 = load i32, i32* %2, align 4
  %96 = icmp ule i32 %95, 237832
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 230400, i32* %2, align 4
  br label %139

98:                                               ; preds = %94
  %99 = load i32, i32* %2, align 4
  %100 = icmp ule i32 %99, 254234
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 250000, i32* %2, align 4
  br label %138

102:                                              ; preds = %98
  %103 = load i32, i32* %2, align 4
  %104 = icmp ule i32 %103, 273066
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 256000, i32* %2, align 4
  br label %137

106:                                              ; preds = %102
  %107 = load i32, i32* %2, align 4
  %108 = icmp ule i32 %107, 491520
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 460800, i32* %2, align 4
  br label %136

110:                                              ; preds = %106
  %111 = load i32, i32* %2, align 4
  %112 = icmp ule i32 %111, 567138
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 500000, i32* %2, align 4
  br label %135

114:                                              ; preds = %110
  %115 = load i32, i32* %2, align 4
  %116 = icmp ule i32 %115, 670254
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 576000, i32* %2, align 4
  br label %134

118:                                              ; preds = %114
  %119 = load i32, i32* %2, align 4
  %120 = icmp ule i32 %119, 1053257
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 921600, i32* %2, align 4
  br label %133

122:                                              ; preds = %118
  %123 = load i32, i32* %2, align 4
  %124 = icmp ule i32 %123, 1474560
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 1228800, i32* %2, align 4
  br label %132

126:                                              ; preds = %122
  %127 = load i32, i32* %2, align 4
  %128 = icmp ule i32 %127, 2457600
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 1843200, i32* %2, align 4
  br label %131

130:                                              ; preds = %126
  store i32 3686400, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %129
  br label %132

132:                                              ; preds = %131, %125
  br label %133

133:                                              ; preds = %132, %121
  br label %134

134:                                              ; preds = %133, %117
  br label %135

135:                                              ; preds = %134, %113
  br label %136

136:                                              ; preds = %135, %109
  br label %137

137:                                              ; preds = %136, %105
  br label %138

138:                                              ; preds = %137, %101
  br label %139

139:                                              ; preds = %138, %97
  br label %140

140:                                              ; preds = %139, %93
  br label %141

141:                                              ; preds = %140, %89
  br label %142

142:                                              ; preds = %141, %85
  br label %143

143:                                              ; preds = %142, %81
  br label %144

144:                                              ; preds = %143, %77
  br label %145

145:                                              ; preds = %144, %73
  br label %146

146:                                              ; preds = %145, %69
  br label %147

147:                                              ; preds = %146, %65
  br label %148

148:                                              ; preds = %147, %61
  br label %149

149:                                              ; preds = %148, %57
  br label %150

150:                                              ; preds = %149, %53
  br label %151

151:                                              ; preds = %150, %49
  br label %152

152:                                              ; preds = %151, %45
  br label %153

153:                                              ; preds = %152, %41
  br label %154

154:                                              ; preds = %153, %37
  br label %155

155:                                              ; preds = %154, %33
  br label %156

156:                                              ; preds = %155, %29
  br label %157

157:                                              ; preds = %156, %25
  br label %158

158:                                              ; preds = %157, %21
  br label %159

159:                                              ; preds = %158, %17
  br label %160

160:                                              ; preds = %159, %13
  br label %161

161:                                              ; preds = %160, %9
  br label %162

162:                                              ; preds = %161, %5
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
