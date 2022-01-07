; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_classify_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_classify_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_address_info = type { i64, i8*, i8*, i8* }

@ADDRESS_REG = common dso_local global i8* null, align 8
@const0_rtx = common dso_local global i8* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@ADDRESS_LO_SUM = common dso_local global i8* null, align 8
@mips_lo_relocs = common dso_local global i32* null, align 8
@ADDRESS_CONST_INT = common dso_local global i8* null, align 8
@TARGET_MIPS16 = common dso_local global i32 0, align 4
@ADDRESS_SYMBOLIC = common dso_local global i8* null, align 8
@mips_split_p = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips_address_info*, i8*, i32, i32)* @mips_classify_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_classify_address(%struct.mips_address_info* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mips_address_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mips_address_info* %0, %struct.mips_address_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @GET_CODE(i8* %10)
  switch i32 %11, label %141 [
    i32 130, label %12
    i32 129, label %12
    i32 131, label %28
    i32 132, label %57
    i32 134, label %100
    i32 135, label %113
    i32 133, label %113
    i32 128, label %113
  ]

12:                                               ; preds = %4, %4
  %13 = load i8*, i8** @ADDRESS_REG, align 8
  %14 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %15 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %18 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @const0_rtx, align 8
  %20 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %21 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %23 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @mips_valid_base_register_p(i8* %24, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %142

28:                                               ; preds = %4
  %29 = load i8*, i8** @ADDRESS_REG, align 8
  %30 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %31 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @XEXP(i8* %32, i32 0)
  %34 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %35 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @XEXP(i8* %36, i32 1)
  %38 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %39 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %41 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @mips_valid_base_register_p(i8* %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %28
  %48 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %49 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @VOIDmode, align 4
  %52 = call i32 @const_arith_operand(i8* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %47, %28
  %55 = phi i1 [ false, %28 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %142

57:                                               ; preds = %4
  %58 = load i8*, i8** @ADDRESS_LO_SUM, align 8
  %59 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %60 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i8* @XEXP(i8* %61, i32 0)
  %63 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %64 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i8* @XEXP(i8* %65, i32 1)
  %67 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %68 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %70 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @mips_classify_symbolic_expression(i8* %71)
  %73 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %74 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %76 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @mips_valid_base_register_p(i8* %77, i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %57
  %83 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %84 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @mips_symbolic_address_p(i64 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load i32*, i32** @mips_lo_relocs, align 8
  %91 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %92 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br label %97

97:                                               ; preds = %89, %82, %57
  %98 = phi i1 [ false, %82 ], [ false, %57 ], [ %96, %89 ]
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %5, align 4
  br label %142

100:                                              ; preds = %4
  %101 = load i8*, i8** @ADDRESS_CONST_INT, align 8
  %102 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %103 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @TARGET_MIPS16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @SMALL_INT(i8* %107)
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %106, %100
  %111 = phi i1 [ false, %100 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %5, align 4
  br label %142

113:                                              ; preds = %4, %4, %4
  %114 = load i8*, i8** @ADDRESS_SYMBOLIC, align 8
  %115 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %116 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %119 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %118, i32 0, i32 0
  %120 = call i32 @mips_symbolic_constant_p(i8* %117, i64* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %113
  %123 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %124 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @mips_symbolic_address_p(i64 %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load i32*, i32** @mips_split_p, align 8
  %131 = load %struct.mips_address_info*, %struct.mips_address_info** %6, align 8
  %132 = getelementptr inbounds %struct.mips_address_info, %struct.mips_address_info* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  br label %138

138:                                              ; preds = %129, %122, %113
  %139 = phi i1 [ false, %122 ], [ false, %113 ], [ %137, %129 ]
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %5, align 4
  br label %142

141:                                              ; preds = %4
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %141, %138, %110, %97, %54, %12
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @GET_CODE(i8*) #1

declare dso_local i32 @mips_valid_base_register_p(i8*, i32, i32) #1

declare dso_local i8* @XEXP(i8*, i32) #1

declare dso_local i32 @const_arith_operand(i8*, i32) #1

declare dso_local i64 @mips_classify_symbolic_expression(i8*) #1

declare dso_local i32 @mips_symbolic_address_p(i64, i32) #1

declare dso_local i32 @SMALL_INT(i8*) #1

declare dso_local i32 @mips_symbolic_constant_p(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
