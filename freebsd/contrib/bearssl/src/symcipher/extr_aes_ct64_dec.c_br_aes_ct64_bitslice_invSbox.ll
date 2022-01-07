; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_dec.c_br_aes_ct64_bitslice_invSbox.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_dec.c_br_aes_ct64_bitslice_invSbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct64_bitslice_invSbox(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, -1
  store i32 %14, i32* %3, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -1
  store i32 %18, i32* %4, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %30, -1
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 6
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, -1
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 7
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %7, align 4
  %41 = xor i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = xor i32 %41, %42
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %6, align 4
  %48 = xor i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = xor i32 %48, %49
  %51 = load i32*, i32** %2, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 6
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %5, align 4
  %55 = xor i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = xor i32 %55, %56
  %58 = load i32*, i32** %2, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %4, align 4
  %62 = xor i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = xor i32 %62, %63
  %65 = load i32*, i32** %2, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %3, align 4
  %69 = xor i32 %67, %68
  %70 = load i32, i32* %5, align 4
  %71 = xor i32 %69, %70
  %72 = load i32*, i32** %2, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %10, align 4
  %76 = xor i32 %74, %75
  %77 = load i32, i32* %4, align 4
  %78 = xor i32 %76, %77
  %79 = load i32*, i32** %2, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %9, align 4
  %83 = xor i32 %81, %82
  %84 = load i32, i32* %3, align 4
  %85 = xor i32 %83, %84
  %86 = load i32*, i32** %2, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %8, align 4
  %90 = xor i32 %88, %89
  %91 = load i32, i32* %10, align 4
  %92 = xor i32 %90, %91
  %93 = load i32*, i32** %2, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @br_aes_ct64_bitslice_Sbox(i32* %95)
  %97 = load i32*, i32** %2, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = xor i32 %99, -1
  store i32 %100, i32* %3, align 4
  %101 = load i32*, i32** %2, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = xor i32 %103, -1
  store i32 %104, i32* %4, align 4
  %105 = load i32*, i32** %2, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %5, align 4
  %108 = load i32*, i32** %2, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %6, align 4
  %111 = load i32*, i32** %2, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %7, align 4
  %114 = load i32*, i32** %2, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 5
  %116 = load i32, i32* %115, align 4
  %117 = xor i32 %116, -1
  store i32 %117, i32* %8, align 4
  %118 = load i32*, i32** %2, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 6
  %120 = load i32, i32* %119, align 4
  %121 = xor i32 %120, -1
  store i32 %121, i32* %9, align 4
  %122 = load i32*, i32** %2, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 7
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %7, align 4
  %127 = xor i32 %125, %126
  %128 = load i32, i32* %9, align 4
  %129 = xor i32 %127, %128
  %130 = load i32*, i32** %2, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 7
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* %6, align 4
  %134 = xor i32 %132, %133
  %135 = load i32, i32* %8, align 4
  %136 = xor i32 %134, %135
  %137 = load i32*, i32** %2, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 6
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %5, align 4
  %141 = xor i32 %139, %140
  %142 = load i32, i32* %7, align 4
  %143 = xor i32 %141, %142
  %144 = load i32*, i32** %2, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 5
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %4, align 4
  %148 = xor i32 %146, %147
  %149 = load i32, i32* %6, align 4
  %150 = xor i32 %148, %149
  %151 = load i32*, i32** %2, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %3, align 4
  %155 = xor i32 %153, %154
  %156 = load i32, i32* %5, align 4
  %157 = xor i32 %155, %156
  %158 = load i32*, i32** %2, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 3
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %10, align 4
  %162 = xor i32 %160, %161
  %163 = load i32, i32* %4, align 4
  %164 = xor i32 %162, %163
  %165 = load i32*, i32** %2, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %9, align 4
  %169 = xor i32 %167, %168
  %170 = load i32, i32* %3, align 4
  %171 = xor i32 %169, %170
  %172 = load i32*, i32** %2, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %8, align 4
  %176 = xor i32 %174, %175
  %177 = load i32, i32* %10, align 4
  %178 = xor i32 %176, %177
  %179 = load i32*, i32** %2, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  store i32 %178, i32* %180, align 4
  ret void
}

declare dso_local i32 @br_aes_ct64_bitslice_Sbox(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
