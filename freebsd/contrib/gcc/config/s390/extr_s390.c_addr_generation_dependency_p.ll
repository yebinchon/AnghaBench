; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_addr_generation_dependency_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_addr_generation_dependency_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@STRICT_LOW_PART = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@TYPE_LA = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@ATYPE_AGEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @addr_generation_dependency_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_generation_dependency_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @GET_CODE(i32 %9)
  %11 = load i64, i64* @INSN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @PATTERN(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @SET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %93

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @SET_DEST(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @GET_CODE(i32 %24)
  %26 = load i64, i64* @STRICT_LOW_PART, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @XEXP(i32 %29, i32 0)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %21
  br label %32

32:                                               ; preds = %37, %31
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @GET_CODE(i32 %33)
  %35 = load i64, i64* @SUBREG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @SUBREG_REG(i32 %38)
  store i32 %39, i32* %6, align 4
  br label %32

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @GET_CODE(i32 %41)
  %43 = load i64, i64* @REG, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %92

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @REGNO(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @s390_safe_attr_type(i32 %48)
  %50 = load i64, i64* @TYPE_LA, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @PATTERN(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @GET_CODE(i32 %55)
  %57 = load i64, i64* @PARALLEL, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @XVECLEN(i32 %60, i32 0)
  %62 = icmp eq i32 %61, 2
  %63 = zext i1 %62 to i32
  %64 = call i32 @gcc_assert(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @XVECEXP(i32 %65, i32 0, i32 0)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %59, %52
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @GET_CODE(i32 %68)
  %70 = load i64, i64* @SET, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @gcc_assert(i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @SET_SRC(i32 %77)
  %79 = call i32 @refers_to_regno_p(i32 %74, i32 %76, i32 %78, i32 0)
  store i32 %79, i32* %3, align 4
  br label %94

80:                                               ; preds = %45
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @get_attr_atype(i32 %81)
  %83 = load i64, i64* @ATYPE_AGEN, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @PATTERN(i32 %87)
  %89 = call i32 @reg_used_in_mem_p(i32 %86, i32 %88)
  store i32 %89, i32* %3, align 4
  br label %94

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %40
  br label %93

93:                                               ; preds = %92, %16
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %85, %67
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @s390_safe_attr_type(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @refers_to_regno_p(i32, i32, i32, i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i64 @get_attr_atype(i32) #1

declare dso_local i32 @reg_used_in_mem_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
