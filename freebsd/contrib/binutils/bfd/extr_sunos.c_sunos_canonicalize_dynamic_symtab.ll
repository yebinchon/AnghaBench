; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_canonicalize_dynamic_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_canonicalize_dynamic_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunos_dynamic_info = type { i64, i32*, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@BYTES_IN_WORD = common dso_local global i32 0, align 4
@HASH_ENTRY_SIZE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32**)* @sunos_canonicalize_dynamic_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sunos_canonicalize_dynamic_symtab(i32* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.sunos_dynamic_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @sunos_slurp_dynamic_symtab(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i64 -1, i64* %3, align 8
  br label %102

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @obj_aout_dynamic_info(i32* %15)
  %17 = inttoptr i64 %16 to %struct.sunos_dynamic_info*
  store %struct.sunos_dynamic_info* %17, %struct.sunos_dynamic_info** %6, align 8
  %18 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %19 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %79

22:                                               ; preds = %14
  %23 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %24 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %28 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = mul i64 %29, 4
  store i64 %30, i64* %8, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32* @bfd_alloc(i32* %31, i64 %32)
  %34 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %35 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %37 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %22
  %41 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %42 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i64 -1, i64* %3, align 8
  br label %102

46:                                               ; preds = %40, %22
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %49 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %52 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %55 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %58 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @aout_32_translate_symbol_table(i32* %47, i32* %50, %struct.TYPE_4__* %53, i64 %56, i64 %59, i64 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %46
  %65 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %66 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %72 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @bfd_release(i32* %70, i32* %73)
  %75 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %76 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %69, %64
  store i64 -1, i64* %3, align 8
  br label %102

78:                                               ; preds = %46
  br label %79

79:                                               ; preds = %78, %14
  store i64 0, i64* %7, align 8
  br label %80

80:                                               ; preds = %94, %79
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %83 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %88 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32**, i32*** %5, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i32 1
  store i32** %93, i32*** %5, align 8
  store i32* %91, i32** %92, align 8
  br label %94

94:                                               ; preds = %86
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %7, align 8
  br label %80

97:                                               ; preds = %80
  %98 = load i32**, i32*** %5, align 8
  store i32* null, i32** %98, align 8
  %99 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %6, align 8
  %100 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %3, align 8
  br label %102

102:                                              ; preds = %97, %77, %45, %13
  %103 = load i64, i64* %3, align 8
  ret i64 %103
}

declare dso_local i32 @sunos_slurp_dynamic_symtab(i32*) #1

declare dso_local i64 @obj_aout_dynamic_info(i32*) #1

declare dso_local i32* @bfd_alloc(i32*, i64) #1

declare dso_local i32 @aout_32_translate_symbol_table(i32*, i32*, %struct.TYPE_4__*, i64, i64, i64, i32) #1

declare dso_local i32 @bfd_release(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
