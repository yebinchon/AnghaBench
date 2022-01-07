; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"  Tag_GNU_MIPS_ABI_FP: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i32*, i32*)* @dump_mips_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_mips_attributes(%struct.readelf* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.readelf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.readelf*, %struct.readelf** %4, align 8
  br label %10

10:                                               ; preds = %33, %3
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ult i32* %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @_decode_uleb128(i32** %5, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %28 [
    i32 128, label %18
    i32 32, label %24
  ]

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @_decode_uleb128(i32** %5, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i8* @mips_abi_fp(i32 %21)
  %23 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %33

24:                                               ; preds = %14
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32* @dump_compatibility_tag(i32* %25, i32* %26)
  store i32* %27, i32** %5, align 8
  br label %33

28:                                               ; preds = %14
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* @dump_unknown_tag(i32 %29, i32* %30, i32* %31)
  store i32* %32, i32** %5, align 8
  br label %33

33:                                               ; preds = %28, %24, %18
  br label %10

34:                                               ; preds = %10
  ret void
}

declare dso_local i32 @_decode_uleb128(i32**, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @mips_abi_fp(i32) #1

declare dso_local i32* @dump_compatibility_tag(i32*, i32*) #1

declare dso_local i32* @dump_unknown_tag(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
