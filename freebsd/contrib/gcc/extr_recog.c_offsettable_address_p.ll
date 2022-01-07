; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_offsettable_address_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_offsettable_address_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIGGEST_ALIGNMENT = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@QImode = common dso_local global i32 0, align 4
@RTX_AUTOINC = common dso_local global i64 0, align 8
@LO_SUM = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @offsettable_address_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32 (i32, i32)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @GET_CODE(i32 %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 (i32, i32)* @strict_memory_address_p, i32 (i32, i32)* @memory_address_p
  store i32 (i32, i32)* %22, i32 (i32, i32)** %12, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @GET_MODE_SIZE(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @CONSTANT_ADDRESS_P(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %107

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @mode_dependent_address_p(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %107

34:                                               ; preds = %29
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  %39 = load i32, i32* @BITS_PER_UNIT, align 4
  %40 = udiv i32 %38, %39
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PLUS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = call i32* @find_constant_term_loc(i32* %10)
  store i32* %46, i32** %11, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sub i32 %53, 1
  %55 = call i32 @plus_constant(i32 %52, i32 %54)
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %58 = load i32, i32* @QImode, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 %57(i32 %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %4, align 4
  br label %107

64:                                               ; preds = %45, %41
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @GET_RTX_CLASS(i32 %65)
  %67 = load i64, i64* @RTX_AUTOINC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %107

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @GET_CODE(i32 %71)
  %73 = load i64, i64* @LO_SUM, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @BLKmode, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @GET_MODE_ALIGNMENT(i32 %81)
  %83 = load i32, i32* @BITS_PER_UNIT, align 4
  %84 = udiv i32 %82, %83
  %85 = icmp ule i32 %80, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @GET_MODE(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @XEXP(i32 %89, i32 0)
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @XEXP(i32 %91, i32 1)
  %93 = load i32, i32* %13, align 4
  %94 = sub i32 %93, 1
  %95 = call i32 @plus_constant(i32 %92, i32 %94)
  %96 = call i32 @gen_rtx_LO_SUM(i32 %88, i32 %90, i32 %95)
  store i32 %96, i32* %9, align 4
  br label %102

97:                                               ; preds = %79, %75, %70
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %13, align 4
  %100 = sub i32 %99, 1
  %101 = call i32 @plus_constant(i32 %98, i32 %100)
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %97, %86
  %103 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %104 = load i32, i32* @QImode, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 %103(i32 %104, i32 %105)
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %102, %69, %48, %33, %28
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @strict_memory_address_p(i32, i32) #1

declare dso_local i32 @memory_address_p(i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @CONSTANT_ADDRESS_P(i32) #1

declare dso_local i64 @mode_dependent_address_p(i32) #1

declare dso_local i32* @find_constant_term_loc(i32*) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i64 @GET_RTX_CLASS(i32) #1

declare dso_local i32 @GET_MODE_ALIGNMENT(i32) #1

declare dso_local i32 @gen_rtx_LO_SUM(i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
