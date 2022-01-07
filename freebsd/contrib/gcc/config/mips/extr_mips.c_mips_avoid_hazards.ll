; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_avoid_hazards.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_avoid_hazards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@current_function_profile = common dso_local global i64 0, align 8
@TARGET_FIX_VR4120 = common dso_local global i64 0, align 8
@TARGET_FIX_VR4130 = common dso_local global i64 0, align 8
@ISA_HAS_MACCHI = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@LO_REGNUM = common dso_local global i32 0, align 4
@SEQUENCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_avoid_hazards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_avoid_hazards() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @split_all_insns_noflow()
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = call i64 (...) @get_insns()
  %13 = call i32 @shorten_branches(i64 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load i64, i64* @current_function_profile, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %0
  %26 = load i64, i64* @TARGET_FIX_VR4120, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i64, i64* @TARGET_FIX_VR4130, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* @ISA_HAS_MACCHI, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %36, %33
  store i64 0, i64* %2, align 8
  store i32 2, i32* %5, align 4
  store i64 0, i64* %4, align 8
  %45 = load i32, i32* @SImode, align 4
  %46 = load i32, i32* @LO_REGNUM, align 4
  %47 = call i64 @gen_rtx_REG(i32 %45, i32 %46)
  store i64 %47, i64* %3, align 8
  %48 = call i64 (...) @get_insns()
  store i64 %48, i64* %1, align 8
  br label %49

49:                                               ; preds = %89, %44
  %50 = load i64, i64* %1, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %49
  %53 = load i64, i64* %1, align 8
  %54 = call i64 @INSN_P(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %52
  %57 = load i64, i64* %1, align 8
  %58 = call i32 @PATTERN(i64 %57)
  %59 = call i64 @GET_CODE(i32 %58)
  %60 = load i64, i64* @SEQUENCE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %77, %62
  %64 = load i32, i32* %6, align 4
  %65 = load i64, i64* %1, align 8
  %66 = call i32 @PATTERN(i64 %65)
  %67 = call i32 @XVECLEN(i32 %66, i32 0)
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load i64, i64* %2, align 8
  %71 = load i64, i64* %1, align 8
  %72 = call i32 @PATTERN(i64 %71)
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @XVECEXP(i32 %72, i32 0, i32 %73)
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @mips_avoid_hazard(i64 %70, i64 %74, i32* %5, i64* %4, i64 %75)
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %63

80:                                               ; preds = %63
  br label %86

81:                                               ; preds = %56
  %82 = load i64, i64* %2, align 8
  %83 = load i64, i64* %1, align 8
  %84 = load i64, i64* %3, align 8
  %85 = call i32 @mips_avoid_hazard(i64 %82, i64 %83, i32* %5, i64* %4, i64 %84)
  br label %86

86:                                               ; preds = %81, %80
  %87 = load i64, i64* %1, align 8
  store i64 %87, i64* %2, align 8
  br label %88

88:                                               ; preds = %86, %52
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %1, align 8
  %91 = call i64 @NEXT_INSN(i64 %90)
  store i64 %91, i64* %1, align 8
  br label %49

92:                                               ; preds = %49
  ret void
}

declare dso_local i32 @split_all_insns_noflow(...) #1

declare dso_local i32 @shorten_branches(i64) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @mips_avoid_hazard(i64, i64, i32*, i64*, i64) #1

declare dso_local i64 @XVECEXP(i32, i32, i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
