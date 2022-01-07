; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_ppc_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_ppc_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"  Tag_GNU_Power_ABI_FP: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"  Tag_GNU_Power_ABI_Vector: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @dump_ppc_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ppc_attributes(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ult i32* %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @_decode_uleb128(i32** %3, i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %31 [
    i32 129, label %15
    i32 128, label %21
    i32 32, label %27
  ]

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @_decode_uleb128(i32** %3, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @ppc_abi_fp(i32 %18)
  %20 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %36

21:                                               ; preds = %11
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @_decode_uleb128(i32** %3, i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @ppc_abi_vector(i32 %24)
  %26 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %36

27:                                               ; preds = %11
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32* @dump_compatibility_tag(i32* %28, i32* %29)
  store i32* %30, i32** %3, align 8
  br label %36

31:                                               ; preds = %11
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @dump_unknown_tag(i32 %32, i32* %33, i32* %34)
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %31, %27, %21, %15
  br label %7

37:                                               ; preds = %7
  ret void
}

declare dso_local i32 @_decode_uleb128(i32**, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @ppc_abi_fp(i32) #1

declare dso_local i8* @ppc_abi_vector(i32) #1

declare dso_local i32* @dump_compatibility_tag(i32*, i32*) #1

declare dso_local i32* @dump_unknown_tag(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
