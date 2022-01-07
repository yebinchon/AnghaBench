; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_get_variable_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_get_variable_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32* (i32, i32, i32)* }

@tls_comm_section = common dso_local global i32* null, align 8
@comm_section = common dso_local global i32* null, align 8
@error_mark_node = common dso_local global i64 0, align 8
@flag_data_sections = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@lcomm_section = common dso_local global i32* null, align 8
@bss_noswitch_section = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @get_variable_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_variable_section(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @DECL_COMMON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32* @DECL_SECTION_NAME(i32 %11)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @DECL_THREAD_LOCAL_P(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32*, i32** @tls_comm_section, align 8
  store i32* %19, i32** %3, align 8
  br label %98

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @TREE_PUBLIC(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @bss_initializer_p(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32*, i32** @comm_section, align 8
  store i32* %29, i32** %3, align 8
  br label %98

30:                                               ; preds = %24, %20
  br label %31

31:                                               ; preds = %30, %10, %2
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @DECL_INITIAL(i32 %32)
  %34 = load i64, i64* @error_mark_node, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @TREE_TYPE(i32 %37)
  %39 = call i64 @contains_pointers_p(i32 %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 3, i32 0
  store i32 %42, i32* %6, align 4
  br label %53

43:                                               ; preds = %31
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @DECL_INITIAL(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @DECL_INITIAL(i32 %48)
  %50 = call i32 @compute_reloc_for_constant(i64 %49)
  store i32 %50, i32* %6, align 4
  br label %52

51:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %47
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @flag_data_sections, align 4
  %57 = call i32 @resolve_unique_section(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i64 @IN_NAMED_SECTION(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32* @get_named_section(i32 %62, i32* null, i32 %63)
  store i32* %64, i32** %3, align 8
  br label %98

65:                                               ; preds = %53
  %66 = load i32, i32* %4, align 4
  %67 = call i64 @DECL_THREAD_LOCAL_P(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %91, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 1), align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %4, align 4
  %77 = call i64 @bss_initializer_p(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = call i64 @TREE_PUBLIC(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load i32*, i32** @lcomm_section, align 8
  store i32* %84, i32** %3, align 8
  br label %98

85:                                               ; preds = %79
  %86 = load i32*, i32** @bss_noswitch_section, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32*, i32** @bss_noswitch_section, align 8
  store i32* %89, i32** %3, align 8
  br label %98

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90, %75, %72, %65
  %92 = load i32* (i32, i32, i32)*, i32* (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @DECL_ALIGN(i32 %95)
  %97 = call i32* %92(i32 %93, i32 %94, i32 %96)
  store i32* %97, i32** %3, align 8
  br label %98

98:                                               ; preds = %91, %88, %83, %61, %28, %18
  %99 = load i32*, i32** %3, align 8
  ret i32* %99
}

declare dso_local i64 @DECL_COMMON(i32) #1

declare dso_local i32* @DECL_SECTION_NAME(i32) #1

declare dso_local i64 @DECL_THREAD_LOCAL_P(i32) #1

declare dso_local i64 @TREE_PUBLIC(i32) #1

declare dso_local i64 @bss_initializer_p(i32) #1

declare dso_local i64 @DECL_INITIAL(i32) #1

declare dso_local i64 @contains_pointers_p(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @compute_reloc_for_constant(i64) #1

declare dso_local i32 @resolve_unique_section(i32, i32, i32) #1

declare dso_local i64 @IN_NAMED_SECTION(i32) #1

declare dso_local i32* @get_named_section(i32, i32*, i32) #1

declare dso_local i32 @DECL_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
