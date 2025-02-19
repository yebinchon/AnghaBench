; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips16_rewrite_pool_refs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips16_rewrite_pool_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips16_constant_pool = type { i32 }

@SYMBOL_REF = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @mips16_rewrite_pool_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips16_rewrite_pool_refs(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mips16_constant_pool*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.mips16_constant_pool*
  store %struct.mips16_constant_pool* %7, %struct.mips16_constant_pool** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @GET_CODE(i32 %9)
  %11 = load i64, i64* @SYMBOL_REF, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @CONSTANT_POOL_ADDRESS_P(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i32, i32* @Pmode, align 4
  %20 = load %struct.mips16_constant_pool*, %struct.mips16_constant_pool** %5, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_pool_constant(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @get_pool_mode(i32 %25)
  %27 = call i32 @add_constant(%struct.mips16_constant_pool* %20, i32 %23, i32 %26)
  %28 = call i32 @gen_rtx_LABEL_REF(i32 %19, i32 %27)
  %29 = load i32*, i32** %3, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %18, %13, %2
  ret i32 0
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i32) #1

declare dso_local i32 @gen_rtx_LABEL_REF(i32, i32) #1

declare dso_local i32 @add_constant(%struct.mips16_constant_pool*, i32, i32) #1

declare dso_local i32 @get_pool_constant(i32) #1

declare dso_local i32 @get_pool_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
