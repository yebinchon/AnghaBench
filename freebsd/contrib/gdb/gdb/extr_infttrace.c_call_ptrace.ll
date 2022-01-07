; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_call_ptrace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_call_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TT_NIL = common dso_local global i32 0, align 4
@TT_PROC_RDTEXT = common dso_local global i32 0, align 4
@TT_PROC_RDDATA = common dso_local global i32 0, align 4
@TT_PROC_ATTACH = common dso_local global i32 0, align 4
@TT_VERSION = common dso_local global i32 0, align 4
@TT_PROC_DETACH = common dso_local global i32 0, align 4
@TT_PROC_WRTEXT = common dso_local global i32 0, align 4
@TT_PROC_WRDATA = common dso_local global i32 0, align 4
@TT_PROC_CONTINUE = common dso_local global i32 0, align 4
@TT_LWP_SINGLE = common dso_local global i32 0, align 4
@TT_PROC_EXIT = common dso_local global i32 0, align 4
@TT_PROC_GET_PATHNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @call_ptrace(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @TT_NIL, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %102 [
    i32 134, label %21
    i32 135, label %23
    i32 128, label %33
    i32 136, label %39
    i32 137, label %51
    i32 144, label %63
    i32 142, label %78
    i32 130, label %80
    i32 131, label %83
    i32 138, label %86
    i32 139, label %88
    i32 129, label %90
    i32 132, label %92
    i32 143, label %94
    i32 133, label %96
    i32 140, label %98
    i32 141, label %100
  ]

21:                                               ; preds = %4
  %22 = call i32 @parent_attach_all(i32 0, i32 0, i32 0)
  store i32 %22, i32* %5, align 4
  br label %111

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @read_from_register_save_state(i32 %24, i32 %25, i32* %15, i32 4)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %111

31:                                               ; preds = %23
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %5, align 4
  br label %111

33:                                               ; preds = %4
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @write_to_register_save_state(i32 %35, i32 %36, i32* %15, i32 4)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %5, align 4
  br label %111

39:                                               ; preds = %4
  %40 = load i32, i32* @TT_PROC_RDTEXT, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %11, align 4
  %43 = ptrtoint i32* %16 to i32
  %44 = call i32 @call_ttrace(i32 %40, i32 %41, i32 %42, i32 4, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %5, align 4
  br label %111

49:                                               ; preds = %39
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %5, align 4
  br label %111

51:                                               ; preds = %4
  %52 = load i32, i32* @TT_PROC_RDDATA, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %11, align 4
  %55 = ptrtoint i32* %16 to i32
  %56 = call i32 @call_ttrace(i32 %52, i32 %53, i32 %54, i32 4, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %5, align 4
  br label %111

61:                                               ; preds = %51
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %5, align 4
  br label %111

63:                                               ; preds = %4
  %64 = load i32, i32* @TT_PROC_ATTACH, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @map_from_gdb_tid(i32 %65)
  %67 = load i32, i32* @TT_NIL, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @TT_VERSION, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @call_real_ttrace(i32 %64, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %5, align 4
  br label %111

76:                                               ; preds = %63
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %5, align 4
  br label %111

78:                                               ; preds = %4
  %79 = load i32, i32* @TT_PROC_DETACH, align 4
  store i32 %79, i32* %10, align 4
  br label %104

80:                                               ; preds = %4
  %81 = load i32, i32* @TT_PROC_WRTEXT, align 4
  store i32 %81, i32* %10, align 4
  store i32 4, i32* %12, align 4
  %82 = ptrtoint i32* %9 to i32
  store i32 %82, i32* %13, align 4
  br label %104

83:                                               ; preds = %4
  %84 = load i32, i32* @TT_PROC_WRDATA, align 4
  store i32 %84, i32* %10, align 4
  store i32 4, i32* %12, align 4
  %85 = ptrtoint i32* %9 to i32
  store i32 %85, i32* %13, align 4
  br label %104

86:                                               ; preds = %4
  %87 = load i32, i32* @TT_PROC_RDTEXT, align 4
  store i32 %87, i32* %10, align 4
  br label %104

88:                                               ; preds = %4
  %89 = load i32, i32* @TT_PROC_RDDATA, align 4
  store i32 %89, i32* %10, align 4
  br label %104

90:                                               ; preds = %4
  %91 = load i32, i32* @TT_PROC_WRTEXT, align 4
  store i32 %91, i32* %10, align 4
  br label %104

92:                                               ; preds = %4
  %93 = load i32, i32* @TT_PROC_WRDATA, align 4
  store i32 %93, i32* %10, align 4
  br label %104

94:                                               ; preds = %4
  %95 = load i32, i32* @TT_PROC_CONTINUE, align 4
  store i32 %95, i32* %10, align 4
  br label %104

96:                                               ; preds = %4
  %97 = load i32, i32* @TT_LWP_SINGLE, align 4
  store i32 %97, i32* %10, align 4
  br label %104

98:                                               ; preds = %4
  %99 = load i32, i32* @TT_PROC_EXIT, align 4
  store i32 %99, i32* %10, align 4
  br label %104

100:                                              ; preds = %4
  %101 = load i32, i32* @TT_PROC_GET_PATHNAME, align 4
  store i32 %101, i32* %10, align 4
  br label %104

102:                                              ; preds = %4
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %102, %100, %98, %96, %94, %92, %90, %88, %86, %83, %80, %78
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @call_ttrace(i32 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %104, %76, %74, %61, %59, %49, %47, %33, %31, %29, %21
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @parent_attach_all(i32, i32, i32) #1

declare dso_local i32 @read_from_register_save_state(i32, i32, i32*, i32) #1

declare dso_local i32 @write_to_register_save_state(i32, i32, i32*, i32) #1

declare dso_local i32 @call_ttrace(i32, i32, i32, i32, i32) #1

declare dso_local i32 @call_real_ttrace(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @map_from_gdb_tid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
