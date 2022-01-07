; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_get_symbol_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_get_symbol_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kallsyms_addresses = common dso_local global i64* null, align 8
@kallsyms_num_syms = common dso_local global i64 0, align 8
@_einittext = common dso_local global i64 0, align 8
@all_var = common dso_local global i64 0, align 8
@_end = common dso_local global i64 0, align 8
@_etext = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64*)* @get_symbol_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_symbol_pos(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load i64*, i64** @kallsyms_addresses, align 8
  %14 = icmp ne i64* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  store i64 0, i64* %10, align 8
  %18 = load i64, i64* @kallsyms_num_syms, align 8
  store i64 %18, i64* %11, align 8
  br label %19

19:                                               ; preds = %41, %3
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %10, align 8
  %22 = sub i64 %20, %21
  %23 = icmp ugt i64 %22, 1
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %10, align 8
  %28 = sub i64 %26, %27
  %29 = udiv i64 %28, 2
  %30 = add i64 %25, %29
  store i64 %30, i64* %12, align 8
  %31 = load i64*, i64** @kallsyms_addresses, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i64, i64* %12, align 8
  store i64 %38, i64* %10, align 8
  br label %41

39:                                               ; preds = %24
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %39, %37
  br label %19

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i64*, i64** @kallsyms_addresses, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** @kallsyms_addresses, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %51, %55
  br label %57

57:                                               ; preds = %46, %43
  %58 = phi i1 [ false, %43 ], [ %56, %46 ]
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %10, align 8
  br label %43

62:                                               ; preds = %57
  %63 = load i64*, i64** @kallsyms_addresses, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %9, align 8
  br label %69

69:                                               ; preds = %86, %62
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @kallsyms_num_syms, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load i64*, i64** @kallsyms_addresses, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i64*, i64** @kallsyms_addresses, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %8, align 8
  br label %89

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %9, align 8
  br label %69

89:                                               ; preds = %80, %69
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* %4, align 8
  %94 = call i64 @is_kernel_inittext(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i64, i64* @_einittext, align 8
  store i64 %97, i64* %8, align 8
  br label %106

98:                                               ; preds = %92
  %99 = load i64, i64* @all_var, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i64, i64* @_end, align 8
  store i64 %102, i64* %8, align 8
  br label %105

103:                                              ; preds = %98
  %104 = load i64, i64* @_etext, align 8
  store i64 %104, i64* %8, align 8
  br label %105

105:                                              ; preds = %103, %101
  br label %106

106:                                              ; preds = %105, %96
  br label %107

107:                                              ; preds = %106, %89
  %108 = load i64*, i64** %5, align 8
  %109 = icmp ne i64* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %7, align 8
  %113 = sub i64 %111, %112
  %114 = load i64*, i64** %5, align 8
  store i64 %113, i64* %114, align 8
  br label %115

115:                                              ; preds = %110, %107
  %116 = load i64*, i64** %6, align 8
  %117 = icmp ne i64* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* %7, align 8
  %121 = sub i64 %119, %120
  %122 = load i64*, i64** %6, align 8
  store i64 %121, i64* %122, align 8
  br label %123

123:                                              ; preds = %118, %115
  %124 = load i64, i64* %10, align 8
  ret i64 %124
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @is_kernel_inittext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
