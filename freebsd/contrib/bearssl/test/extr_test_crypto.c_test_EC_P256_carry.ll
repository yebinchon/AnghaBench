; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_EC_P256_carry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_EC_P256_carry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [131 x i8] c"0435BAA24B2B6E1B3C88E22A383BD88CC4B9A3166E7BCF94FF6591663AE066B33B821EBA1B4FC8EA609A87EB9A9C9A1CCD5C9F42FA1365306F64D7CAA718B8C978\00", align 1
@.str.1 = private unnamed_addr constant [131 x i8] c"0447752A76CA890328D34E675C4971EC629132D1FC4863EDB61219B72C4E58DC5E9D51E7B293488CFD913C3CF20E438BB65C2BA66A7D09EABB45B55E804260C5EB\00", align 1
@.str.2 = private unnamed_addr constant [131 x i8] c"04DCAE9D9CE211223602024A6933BD42F77B6BF4EAB9C8915F058C149419FADD2CC9FC0707B270A1B5362BA4D249AFC8AC3DA1EFCA8270176EEACA525B49EE19E6\00", align 1
@.str.3 = private unnamed_addr constant [131 x i8] c"048DAC7B0BE9B3206FCE8B24B6B4AEB122F2A67D13E536B390B6585CA193427E63F222388B5F51D744D6F5D47536D89EEEC89552BCB269E7828019C4410DFE980A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_EC_P256_carry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EC_P256_carry(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @test_EC_P256_carry_inner(i32* %3, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @test_EC_P256_carry_inner(i32* %5, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @test_EC_P256_carry_inner(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
