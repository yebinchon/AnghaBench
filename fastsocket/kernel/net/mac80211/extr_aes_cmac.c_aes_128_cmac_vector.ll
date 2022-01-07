; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_aes_cmac.c_aes_128_cmac_vector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_aes_cmac.c_aes_128_cmac_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@CMAC_TLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_cipher*, i64, i32**, i64*, i32*)* @aes_128_cmac_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_128_cmac_vector(%struct.crypto_cipher* %0, i64 %1, i32** %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.crypto_cipher*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.crypto_cipher* %0, %struct.crypto_cipher** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %27 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %28 = call i32 @memset(i32* %23, i32 0, i32 %27)
  store i64 0, i64* %19, align 8
  store i64 0, i64* %17, align 8
  br label %29

29:                                               ; preds = %40, %5
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i64*, i64** %9, align 8
  %35 = load i64, i64* %17, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %19, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %19, align 8
  br label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %17, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %17, align 8
  br label %29

43:                                               ; preds = %29
  %44 = load i64, i64* %19, align 8
  store i64 %44, i64* %18, align 8
  store i64 0, i64* %17, align 8
  %45 = load i32**, i32*** %8, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %14, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32* %52, i32** %15, align 8
  br label %53

53:                                               ; preds = %100, %43
  %54 = load i64, i64* %18, align 8
  %55 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp uge i64 %54, %56
  br i1 %57, label %58, label %105

58:                                               ; preds = %53
  store i64 0, i64* %16, align 8
  br label %59

59:                                               ; preds = %89, %58
  %60 = load i64, i64* %16, align 8
  %61 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %60, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %59
  %65 = load i32*, i32** %14, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %14, align 8
  %67 = load i32, i32* %65, align 4
  %68 = load i64, i64* %16, align 8
  %69 = getelementptr inbounds i32, i32* %23, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32*, i32** %14, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = icmp uge i32* %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %64
  %76 = load i64, i64* %17, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %17, align 8
  %78 = load i32**, i32*** %8, align 8
  %79 = load i64, i64* %17, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 %79
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %14, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %17, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  store i32* %87, i32** %15, align 8
  br label %88

88:                                               ; preds = %75, %64
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %16, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %16, align 8
  br label %59

92:                                               ; preds = %59
  %93 = load i64, i64* %18, align 8
  %94 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ugt i64 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %99 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %98, i32* %23, i32* %23)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %18, align 8
  %104 = sub i64 %103, %102
  store i64 %104, i64* %18, align 8
  br label %53

105:                                              ; preds = %53
  %106 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %107 = call i32 @memset(i32* %26, i32 0, i32 %106)
  %108 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %109 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %108, i32* %26, i32* %26)
  %110 = call i32 @gf_mulx(i32* %26)
  %111 = load i64, i64* %18, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %105
  %114 = load i64, i64* %19, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %155

116:                                              ; preds = %113, %105
  store i64 0, i64* %16, align 8
  br label %117

117:                                              ; preds = %146, %116
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* %18, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %117
  %122 = load i32*, i32** %14, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %14, align 8
  %124 = load i32, i32* %122, align 4
  %125 = load i64, i64* %16, align 8
  %126 = getelementptr inbounds i32, i32* %23, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load i32*, i32** %14, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = icmp uge i32* %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %121
  %133 = load i64, i64* %17, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %17, align 8
  %135 = load i32**, i32*** %8, align 8
  %136 = load i64, i64* %17, align 8
  %137 = getelementptr inbounds i32*, i32** %135, i64 %136
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %14, align 8
  %139 = load i32*, i32** %14, align 8
  %140 = load i64*, i64** %9, align 8
  %141 = load i64, i64* %17, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  store i32* %144, i32** %15, align 8
  br label %145

145:                                              ; preds = %132, %121
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %16, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %16, align 8
  br label %117

149:                                              ; preds = %117
  %150 = load i64, i64* %18, align 8
  %151 = getelementptr inbounds i32, i32* %23, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = xor i32 %152, 128
  store i32 %153, i32* %151, align 4
  %154 = call i32 @gf_mulx(i32* %26)
  br label %155

155:                                              ; preds = %149, %113
  store i64 0, i64* %16, align 8
  br label %156

156:                                              ; preds = %169, %155
  %157 = load i64, i64* %16, align 8
  %158 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp ult i64 %157, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %156
  %162 = load i64, i64* %16, align 8
  %163 = getelementptr inbounds i32, i32* %23, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i64, i64* %16, align 8
  %166 = getelementptr inbounds i32, i32* %26, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = xor i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %161
  %170 = load i64, i64* %16, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %16, align 8
  br label %156

172:                                              ; preds = %156
  %173 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %174 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %173, i32* %26, i32* %26)
  %175 = load i32*, i32** %10, align 8
  %176 = load i32, i32* @CMAC_TLEN, align 4
  %177 = call i32 @memcpy(i32* %175, i32* %26, i32 %176)
  %178 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %178)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher*, i32*, i32*) #2

declare dso_local i32 @gf_mulx(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
