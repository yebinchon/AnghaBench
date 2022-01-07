; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_is_cracked_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_is_cracked_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USE = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@rs6000_sched_groups = common dso_local global i64 0, align 8
@TYPE_LOAD_U = common dso_local global i32 0, align 4
@TYPE_STORE_U = common dso_local global i32 0, align 4
@TYPE_FPLOAD_U = common dso_local global i32 0, align 4
@TYPE_FPSTORE_U = common dso_local global i32 0, align 4
@TYPE_FPLOAD_UX = common dso_local global i32 0, align 4
@TYPE_FPSTORE_UX = common dso_local global i32 0, align 4
@TYPE_LOAD_EXT = common dso_local global i32 0, align 4
@TYPE_DELAYED_CR = common dso_local global i32 0, align 4
@TYPE_COMPARE = common dso_local global i32 0, align 4
@TYPE_DELAYED_COMPARE = common dso_local global i32 0, align 4
@TYPE_IMUL_COMPARE = common dso_local global i32 0, align 4
@TYPE_LMUL_COMPARE = common dso_local global i32 0, align 4
@TYPE_IDIV = common dso_local global i32 0, align 4
@TYPE_LDIV = common dso_local global i32 0, align 4
@TYPE_INSERT_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_cracked_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_cracked_insn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @INSN_P(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @PATTERN(i32 %12)
  %14 = call i64 @GET_CODE(i32 %13)
  %15 = load i64, i64* @USE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @PATTERN(i32 %18)
  %20 = call i64 @GET_CODE(i32 %19)
  %21 = load i64, i64* @CLOBBER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %11, %7, %1
  store i32 0, i32* %2, align 4
  br label %92

24:                                               ; preds = %17
  %25 = load i64, i64* @rs6000_sched_groups, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %91

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @get_attr_type(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TYPE_LOAD_U, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %89, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @TYPE_STORE_U, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %89, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @TYPE_FPLOAD_U, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %89, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @TYPE_FPSTORE_U, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %89, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @TYPE_FPLOAD_UX, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %89, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @TYPE_FPSTORE_UX, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %89, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @TYPE_LOAD_EXT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %89, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @TYPE_DELAYED_CR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %89, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @TYPE_COMPARE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %89, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @TYPE_DELAYED_COMPARE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @TYPE_IMUL_COMPARE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %89, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @TYPE_LMUL_COMPARE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @TYPE_IDIV, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @TYPE_LDIV, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @TYPE_INSERT_WORD, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %27
  store i32 1, i32* %2, align 4
  br label %92

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90, %24
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %89, %23
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @INSN_P(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @get_attr_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
