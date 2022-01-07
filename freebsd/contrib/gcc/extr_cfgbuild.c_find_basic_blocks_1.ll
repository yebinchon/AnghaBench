; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgbuild.c_find_basic_blocks_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgbuild.c_find_basic_blocks_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@ENTRY_BLOCK_PTR = common dso_local global i32 0, align 4
@NOTE_INSN_BASIC_BLOCK = common dso_local global i32 0, align 4
@last_basic_block = common dso_local global i64 0, align 8
@n_basic_blocks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @find_basic_blocks_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_basic_blocks_1(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* @NULL_RTX, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* @NULL_RTX, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* @NULL_RTX, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* @ENTRY_BLOCK_PTR, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i64, i64* %2, align 8
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %92, %1
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %94

19:                                               ; preds = %16
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @GET_CODE(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @NEXT_INSN(i64 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @LABEL_P(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @BARRIER_P(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27, %19
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @create_basic_block_structure(i64 %35, i64 %36, i64 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i64, i64* @NULL_RTX, align 8
  store i64 %40, i64* %7, align 8
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* @NULL_RTX, align 8
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %34, %31, %27
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @inside_basic_block_p(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @NULL_RTX, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i64, i64* %3, align 8
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %52, %42
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i64, i64* %3, align 8
  %59 = call i64 @control_flow_insn_p(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @create_basic_block_structure(i64 %62, i64 %63, i64 %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i64, i64* @NULL_RTX, align 8
  store i64 %67, i64* %7, align 8
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* @NULL_RTX, align 8
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %61, %57, %54
  %70 = load i32, i32* %9, align 4
  switch i32 %70, label %89 [
    i32 128, label %71
    i32 131, label %88
    i32 129, label %88
    i32 132, label %88
    i32 130, label %88
    i32 133, label %88
  ]

71:                                               ; preds = %69
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @NOTE_LINE_NUMBER(i64 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @NOTE_INSN_BASIC_BLOCK, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @NULL_RTX, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i64, i64* %3, align 8
  store i64 %82, i64* %5, align 8
  br label %86

83:                                               ; preds = %77
  %84 = load i64, i64* %3, align 8
  %85 = call i64 @delete_insn(i64 %84)
  store i64 %85, i64* %4, align 8
  br label %86

86:                                               ; preds = %83, %81
  br label %87

87:                                               ; preds = %86, %71
  br label %91

88:                                               ; preds = %69, %69, %69, %69, %69
  br label %91

89:                                               ; preds = %69
  %90 = call i32 (...) @gcc_unreachable()
  br label %91

91:                                               ; preds = %89, %88, %87
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %4, align 8
  store i64 %93, i64* %3, align 8
  br label %16

94:                                               ; preds = %16
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @NULL_RTX, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %5, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @create_basic_block_structure(i64 %99, i64 %100, i64 %101, i32 %102)
  br label %111

104:                                              ; preds = %94
  %105 = load i64, i64* %5, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i64, i64* %5, align 8
  %109 = call i64 @delete_insn(i64 %108)
  br label %110

110:                                              ; preds = %107, %104
  br label %111

111:                                              ; preds = %110, %98
  %112 = load i64, i64* @last_basic_block, align 8
  %113 = load i64, i64* @n_basic_blocks, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @gcc_assert(i32 %115)
  %117 = call i32 (...) @clear_aux_for_blocks()
  ret void
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @LABEL_P(i64) #1

declare dso_local i64 @BARRIER_P(i64) #1

declare dso_local i32 @create_basic_block_structure(i64, i64, i64, i32) #1

declare dso_local i64 @inside_basic_block_p(i64) #1

declare dso_local i64 @control_flow_insn_p(i64) #1

declare dso_local i32 @NOTE_LINE_NUMBER(i64) #1

declare dso_local i64 @delete_insn(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @clear_aux_for_blocks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
