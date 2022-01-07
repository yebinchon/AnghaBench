; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-ia64.c_elfNN_ia64_relax_br.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-ia64.c_elfNN_ia64_relax_br.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@PREDICATE_BITS = common dso_local global i32 0, align 4
@X4_SHIFT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @elfNN_ia64_relax_br to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elfNN_ia64_relax_br(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = and i64 %21, 3
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = sub i64 0, %23
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %15, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i32 @bfd_getl64(i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %15, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  %32 = call i32 @bfd_getl64(i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 30
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 5
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, 2199023255551
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = ashr i32 %40, 46
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 %42, 18
  %44 = or i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, 2199023255551
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = ashr i32 %48, 23
  %50 = sext i32 %49 to i64
  %51 = and i64 %50, 2199023255551
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load i64, i64* %14, align 8
  switch i64 %53, label %131 [
    i64 0, label %54
    i64 1, label %66
    i64 2, label %88
  ]

54:                                               ; preds = %2
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @IS_NOP_B(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @IS_NOP_B(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %3, align 4
  br label %193

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %13, align 4
  br label %133

66:                                               ; preds = %2
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 18
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @IS_NOP_B(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 22
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @IS_NOP_B(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @IS_NOP_B(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80, %76, %73
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %3, align 4
  br label %193

86:                                               ; preds = %80, %69
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %13, align 4
  br label %133

88:                                               ; preds = %2
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 16
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @IS_NOP_I(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %129, label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 18
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @IS_NOP_B(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %129, label %102

102:                                              ; preds = %98, %95
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 22
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @IS_NOP_B(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @IS_NOP_B(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %109, %105, %102
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 24
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @IS_NOP_M(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 28
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @IS_NOP_F(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123, %120
  %128 = load i32, i32* @FALSE, align 4
  store i32 %128, i32* %3, align 4
  br label %193

129:                                              ; preds = %123, %116, %109, %98, %91
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %13, align 4
  br label %133

131:                                              ; preds = %2
  %132 = call i32 (...) @abort() #3
  unreachable

133:                                              ; preds = %129, %86, %64
  %134 = load i32, i32* %13, align 4
  %135 = call i64 @IS_BR_COND(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %13, align 4
  %139 = call i64 @IS_BR_CALL(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* @FALSE, align 4
  store i32 %142, i32* %3, align 4
  br label %193

143:                                              ; preds = %137, %133
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = or i64 %145, 1099511627776
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %8, align 4
  %149 = and i32 %148, 1
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  store i32 5, i32* %7, align 4
  br label %153

152:                                              ; preds = %143
  store i32 4, i32* %7, align 4
  br label %153

153:                                              ; preds = %152, %151
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %154, 22
  br i1 %155, label %156, label %174

156:                                              ; preds = %153
  %157 = load i64, i64* %14, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 0, i32* %8, align 4
  br label %165

160:                                              ; preds = %156
  %161 = load i32, i32* @PREDICATE_BITS, align 4
  %162 = shl i32 %161, 5
  %163 = load i32, i32* %8, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %160, %159
  %166 = load i32, i32* @X4_SHIFT, align 4
  %167 = add nsw i32 %166, 5
  %168 = zext i32 %167 to i64
  %169 = shl i64 1, %168
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = or i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %8, align 4
  br label %179

174:                                              ; preds = %153
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = and i64 %176, 70368744177632
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %174, %165
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %8, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %13, align 4
  %184 = shl i32 %183, 23
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %8, align 4
  %186 = load i32*, i32** %15, align 8
  %187 = call i32 @bfd_putl64(i32 %185, i32* %186)
  %188 = load i32, i32* %9, align 4
  %189 = load i32*, i32** %15, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 8
  %191 = call i32 @bfd_putl64(i32 %188, i32* %190)
  %192 = load i32, i32* @TRUE, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %179, %141, %127, %84, %62
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @bfd_getl64(i32*) #1

declare dso_local i32 @IS_NOP_B(i32) #1

declare dso_local i32 @IS_NOP_I(i32) #1

declare dso_local i32 @IS_NOP_M(i32) #1

declare dso_local i32 @IS_NOP_F(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @IS_BR_COND(i32) #1

declare dso_local i64 @IS_BR_CALL(i32) #1

declare dso_local i32 @bfd_putl64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
