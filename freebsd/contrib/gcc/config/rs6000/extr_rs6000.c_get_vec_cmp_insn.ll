; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_get_vec_cmp_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_get_vec_cmp_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_ALTIVEC = common dso_local global i32 0, align 4
@INSN_NOT_AVAILABLE = common dso_local global i32 0, align 4
@V16QImode = common dso_local global i32 0, align 4
@UNSPEC_VCMPEQUB = common dso_local global i32 0, align 4
@V8HImode = common dso_local global i32 0, align 4
@UNSPEC_VCMPEQUH = common dso_local global i32 0, align 4
@V4SImode = common dso_local global i32 0, align 4
@UNSPEC_VCMPEQUW = common dso_local global i32 0, align 4
@V4SFmode = common dso_local global i32 0, align 4
@UNSPEC_VCMPEQFP = common dso_local global i32 0, align 4
@UNSPEC_VCMPGEFP = common dso_local global i32 0, align 4
@UNSPEC_VCMPGTSB = common dso_local global i32 0, align 4
@UNSPEC_VCMPGTSH = common dso_local global i32 0, align 4
@UNSPEC_VCMPGTSW = common dso_local global i32 0, align 4
@UNSPEC_VCMPGTFP = common dso_local global i32 0, align 4
@UNSPEC_VCMPGTUB = common dso_local global i32 0, align 4
@UNSPEC_VCMPGTUH = common dso_local global i32 0, align 4
@UNSPEC_VCMPGTUW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @get_vec_cmp_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vec_cmp_insn(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @TARGET_ALTIVEC, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @INSN_NOT_AVAILABLE, align 4
  store i32 %11, i32* %4, align 4
  br label %141

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %138 [
    i32 131, label %14
    i32 130, label %55
    i32 129, label %66
    i32 128, label %107
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @V16QImode, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @V16QImode, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @UNSPEC_VCMPEQUB, align 4
  store i32 %23, i32* %4, align 4
  br label %141

24:                                               ; preds = %18, %14
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @V8HImode, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @V8HImode, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @UNSPEC_VCMPEQUH, align 4
  store i32 %33, i32* %4, align 4
  br label %141

34:                                               ; preds = %28, %24
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @V4SImode, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @V4SImode, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @UNSPEC_VCMPEQUW, align 4
  store i32 %43, i32* %4, align 4
  br label %141

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @V4SImode, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @V4SFmode, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @UNSPEC_VCMPEQFP, align 4
  store i32 %53, i32* %4, align 4
  br label %141

54:                                               ; preds = %48, %44
  br label %139

55:                                               ; preds = %12
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @V4SImode, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @V4SFmode, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @UNSPEC_VCMPGEFP, align 4
  store i32 %64, i32* %4, align 4
  br label %141

65:                                               ; preds = %59, %55
  br label %66

66:                                               ; preds = %12, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @V16QImode, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @V16QImode, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @UNSPEC_VCMPGTSB, align 4
  store i32 %75, i32* %4, align 4
  br label %141

76:                                               ; preds = %70, %66
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @V8HImode, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @V8HImode, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @UNSPEC_VCMPGTSH, align 4
  store i32 %85, i32* %4, align 4
  br label %141

86:                                               ; preds = %80, %76
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @V4SImode, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @V4SImode, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @UNSPEC_VCMPGTSW, align 4
  store i32 %95, i32* %4, align 4
  br label %141

96:                                               ; preds = %90, %86
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @V4SImode, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @V4SFmode, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @UNSPEC_VCMPGTFP, align 4
  store i32 %105, i32* %4, align 4
  br label %141

106:                                              ; preds = %100, %96
  br label %139

107:                                              ; preds = %12
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @V16QImode, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @V16QImode, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @UNSPEC_VCMPGTUB, align 4
  store i32 %116, i32* %4, align 4
  br label %141

117:                                              ; preds = %111, %107
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @V8HImode, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @V8HImode, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* @UNSPEC_VCMPGTUH, align 4
  store i32 %126, i32* %4, align 4
  br label %141

127:                                              ; preds = %121, %117
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @V4SImode, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @V4SImode, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* @UNSPEC_VCMPGTUW, align 4
  store i32 %136, i32* %4, align 4
  br label %141

137:                                              ; preds = %131, %127
  br label %139

138:                                              ; preds = %12
  br label %139

139:                                              ; preds = %138, %137, %106, %54
  %140 = load i32, i32* @INSN_NOT_AVAILABLE, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %135, %125, %115, %104, %94, %84, %74, %63, %52, %42, %32, %22, %10
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
