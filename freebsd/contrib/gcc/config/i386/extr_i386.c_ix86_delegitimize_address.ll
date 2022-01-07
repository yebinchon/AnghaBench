; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_delegitimize_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_delegitimize_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@UNSPEC_GOTPCREL = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i64 0, align 8
@MULT = common dso_local global i64 0, align 8
@ASHIFT = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@UNSPEC_GOT = common dso_local global i64 0, align 8
@UNSPEC_GOTOFF = common dso_local global i64 0, align 8
@TARGET_MACHO = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @ix86_delegitimize_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ix86_delegitimize_address(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* @NULL_RTX, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* @NULL_RTX, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* @NULL_RTX, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @GET_CODE(i64 %12)
  %14 = load i64, i64* @MEM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @XEXP(i64 %17, i32 0)
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i64, i64* @TARGET_64BIT, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %19
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @GET_CODE(i64 %23)
  %25 = load i64, i64* @CONST, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %44, label %27

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @XEXP(i64 %28, i32 0)
  %30 = call i64 @GET_CODE(i64 %29)
  %31 = load i64, i64* @UNSPEC, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @XEXP(i64 %34, i32 0)
  %36 = call i64 @XINT(i64 %35, i32 1)
  %37 = load i64, i64* @UNSPEC_GOTPCREL, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @GET_CODE(i64 %40)
  %42 = load i64, i64* @MEM, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %33, %27, %22
  %45 = load i64, i64* %3, align 8
  store i64 %45, i64* %2, align 8
  br label %223

46:                                               ; preds = %39
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @XEXP(i64 %47, i32 0)
  %49 = call i64 @XVECEXP(i64 %48, i32 0, i32 0)
  store i64 %49, i64* %2, align 8
  br label %223

50:                                               ; preds = %19
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @GET_CODE(i64 %51)
  %53 = load i64, i64* @PLUS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @XEXP(i64 %56, i32 1)
  %58 = call i64 @GET_CODE(i64 %57)
  %59 = load i64, i64* @CONST, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55, %50
  %62 = load i64, i64* %3, align 8
  store i64 %62, i64* %2, align 8
  br label %223

63:                                               ; preds = %55
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @XEXP(i64 %64, i32 0)
  %66 = call i64 @GET_CODE(i64 %65)
  %67 = load i64, i64* @REG, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i64, i64* %4, align 8
  %71 = call i64 @XEXP(i64 %70, i32 0)
  %72 = call i64 @REGNO(i64 %71)
  %73 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %138

76:                                               ; preds = %69, %63
  %77 = load i64, i64* %4, align 8
  %78 = call i64 @XEXP(i64 %77, i32 0)
  %79 = call i64 @GET_CODE(i64 %78)
  %80 = load i64, i64* @PLUS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %135

82:                                               ; preds = %76
  %83 = load i64, i64* %4, align 8
  %84 = call i64 @XEXP(i64 %83, i32 0)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @XEXP(i64 %85, i32 0)
  %87 = call i64 @GET_CODE(i64 %86)
  %88 = load i64, i64* @REG, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load i64, i64* %5, align 8
  %92 = call i64 @XEXP(i64 %91, i32 0)
  %93 = call i64 @REGNO(i64 %92)
  %94 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i64, i64* %5, align 8
  %98 = call i64 @XEXP(i64 %97, i32 1)
  store i64 %98, i64* %5, align 8
  br label %117

99:                                               ; preds = %90, %82
  %100 = load i64, i64* %5, align 8
  %101 = call i64 @XEXP(i64 %100, i32 1)
  %102 = call i64 @GET_CODE(i64 %101)
  %103 = load i64, i64* @REG, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load i64, i64* %5, align 8
  %107 = call i64 @XEXP(i64 %106, i32 1)
  %108 = call i64 @REGNO(i64 %107)
  %109 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i64, i64* %5, align 8
  %113 = call i64 @XEXP(i64 %112, i32 0)
  store i64 %113, i64* %5, align 8
  br label %116

114:                                              ; preds = %105, %99
  %115 = load i64, i64* %3, align 8
  store i64 %115, i64* %2, align 8
  br label %223

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %96
  %118 = load i64, i64* %5, align 8
  %119 = call i64 @GET_CODE(i64 %118)
  %120 = load i64, i64* @REG, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %117
  %123 = load i64, i64* %5, align 8
  %124 = call i64 @GET_CODE(i64 %123)
  %125 = load i64, i64* @MULT, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i64, i64* %5, align 8
  %129 = call i64 @GET_CODE(i64 %128)
  %130 = load i64, i64* @ASHIFT, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i64, i64* %3, align 8
  store i64 %133, i64* %2, align 8
  br label %223

134:                                              ; preds = %127, %122, %117
  br label %137

135:                                              ; preds = %76
  %136 = load i64, i64* %3, align 8
  store i64 %136, i64* %2, align 8
  br label %223

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %137, %75
  %139 = load i64, i64* %4, align 8
  %140 = call i64 @XEXP(i64 %139, i32 1)
  %141 = call i64 @XEXP(i64 %140, i32 0)
  store i64 %141, i64* %4, align 8
  %142 = load i64, i64* %4, align 8
  %143 = call i64 @GET_CODE(i64 %142)
  %144 = load i64, i64* @PLUS, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %138
  %147 = load i64, i64* %4, align 8
  %148 = call i64 @XEXP(i64 %147, i32 1)
  %149 = call i64 @GET_CODE(i64 %148)
  %150 = load i64, i64* @CONST_INT, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load i64, i64* %4, align 8
  %154 = call i64 @XEXP(i64 %153, i32 1)
  store i64 %154, i64* %6, align 8
  %155 = load i64, i64* %4, align 8
  %156 = call i64 @XEXP(i64 %155, i32 0)
  store i64 %156, i64* %4, align 8
  br label %157

157:                                              ; preds = %152, %146, %138
  %158 = load i64, i64* %4, align 8
  %159 = call i64 @GET_CODE(i64 %158)
  %160 = load i64, i64* @UNSPEC, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %185

162:                                              ; preds = %157
  %163 = load i64, i64* %4, align 8
  %164 = call i64 @XINT(i64 %163, i32 1)
  %165 = load i64, i64* @UNSPEC_GOT, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load i64, i64* %3, align 8
  %169 = call i64 @GET_CODE(i64 %168)
  %170 = load i64, i64* @MEM, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %182, label %172

172:                                              ; preds = %167, %162
  %173 = load i64, i64* %4, align 8
  %174 = call i64 @XINT(i64 %173, i32 1)
  %175 = load i64, i64* @UNSPEC_GOTOFF, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load i64, i64* %3, align 8
  %179 = call i64 @GET_CODE(i64 %178)
  %180 = load i64, i64* @MEM, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177, %167
  %183 = load i64, i64* %4, align 8
  %184 = call i64 @XVECEXP(i64 %183, i32 0, i32 0)
  store i64 %184, i64* %7, align 8
  br label %185

185:                                              ; preds = %182, %177, %172, %157
  %186 = load i64, i64* @TARGET_MACHO, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %185
  %189 = load i64, i64* %4, align 8
  %190 = call i64 @darwin_local_data_pic(i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %188
  %193 = load i64, i64* %3, align 8
  %194 = call i64 @GET_CODE(i64 %193)
  %195 = load i64, i64* @MEM, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i64, i64* %4, align 8
  %199 = call i64 @XEXP(i64 %198, i32 0)
  store i64 %199, i64* %7, align 8
  br label %200

200:                                              ; preds = %197, %192, %188, %185
  %201 = load i64, i64* %7, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = load i64, i64* %3, align 8
  store i64 %204, i64* %2, align 8
  br label %223

205:                                              ; preds = %200
  %206 = load i64, i64* %6, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load i32, i32* @Pmode, align 4
  %210 = load i64, i64* %7, align 8
  %211 = load i64, i64* %6, align 8
  %212 = call i64 @gen_rtx_PLUS(i32 %209, i64 %210, i64 %211)
  store i64 %212, i64* %7, align 8
  br label %213

213:                                              ; preds = %208, %205
  %214 = load i64, i64* %5, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load i32, i32* @Pmode, align 4
  %218 = load i64, i64* %5, align 8
  %219 = load i64, i64* %7, align 8
  %220 = call i64 @gen_rtx_PLUS(i32 %217, i64 %218, i64 %219)
  store i64 %220, i64* %7, align 8
  br label %221

221:                                              ; preds = %216, %213
  %222 = load i64, i64* %7, align 8
  store i64 %222, i64* %2, align 8
  br label %223

223:                                              ; preds = %221, %203, %135, %132, %114, %61, %46, %44
  %224 = load i64, i64* %2, align 8
  ret i64 %224
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @XINT(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @darwin_local_data_pic(i64) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
