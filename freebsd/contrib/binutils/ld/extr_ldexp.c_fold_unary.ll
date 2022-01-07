; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldexp.c_fold_unary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldexp.c_fold_unary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@expld = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@lang_first_phase_enum = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@bfd_abs_section_ptr = common dso_local global i32 0, align 4
@exp_dataseg_align_seen = common dso_local global i32 0, align 4
@exp_dataseg_relro_seen = common dso_local global i32 0, align 4
@exp_dataseg_adjust = common dso_local global i32 0, align 4
@exp_dataseg_relro_adjust = common dso_local global i32 0, align 4
@lang_final_phase_enum = common dso_local global i32 0, align 4
@exp_dataseg_end_seen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @fold_unary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fold_unary(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %3 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @exp_fold_tree_1(i32 %6)
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 1), align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %101

10:                                               ; preds = %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %98 [
    i32 130, label %15
    i32 131, label %27
    i32 126, label %29
    i32 33, label %33
    i32 45, label %39
    i32 128, label %43
    i32 129, label %55
  ]

15:                                               ; preds = %10
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 2), align 8
  %17 = load i32, i32* @lang_first_phase_enum, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 4), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 0), align 8
  %22 = call i32 @align_n(i32 %20, i32 %21)
  %23 = call i32 @new_rel_from_abs(i32 %22)
  br label %26

24:                                               ; preds = %15
  %25 = load i8*, i8** @FALSE, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 1), align 8
  br label %26

26:                                               ; preds = %24, %19
  br label %100

27:                                               ; preds = %10
  %28 = call i32 (...) @make_abs()
  br label %100

29:                                               ; preds = %10
  %30 = call i32 (...) @make_abs()
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 0), align 8
  %32 = xor i32 %31, -1
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 0), align 8
  br label %100

33:                                               ; preds = %10
  %34 = call i32 (...) @make_abs()
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 0), align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 0), align 8
  br label %100

39:                                               ; preds = %10
  %40 = call i32 (...) @make_abs()
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 0), align 8
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 0), align 8
  br label %100

43:                                               ; preds = %10
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 2), align 8
  %45 = load i32, i32* @lang_first_phase_enum, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = call i32 (...) @make_abs()
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 4), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 0), align 8
  %51 = call i32 @align_n(i32 %49, i32 %50)
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 0), align 8
  br label %54

52:                                               ; preds = %43
  %53 = load i8*, i8** @FALSE, align 8
  store i8* %53, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 1), align 8
  br label %54

54:                                               ; preds = %52, %47
  br label %100

55:                                               ; preds = %10
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 2), align 8
  %57 = load i32, i32* @lang_first_phase_enum, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %95

59:                                               ; preds = %55
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 3), align 4
  %61 = load i32, i32* @bfd_abs_section_ptr, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %59
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 1, i32 1), align 4
  %65 = load i32, i32* @exp_dataseg_align_seen, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %83, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 1, i32 1), align 4
  %69 = load i32, i32* @exp_dataseg_relro_seen, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 1, i32 1), align 4
  %73 = load i32, i32* @exp_dataseg_adjust, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 1, i32 1), align 4
  %77 = load i32, i32* @exp_dataseg_relro_adjust, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 2), align 8
  %81 = load i32, i32* @lang_final_phase_enum, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79, %75, %71, %67, %63
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 1, i32 1), align 4
  %85 = load i32, i32* @exp_dataseg_align_seen, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 1, i32 1), align 4
  %89 = load i32, i32* @exp_dataseg_relro_seen, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87, %83
  %92 = load i32, i32* @exp_dataseg_end_seen, align 4
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 1, i32 1), align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 0), align 8
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 1, i32 0), align 8
  br label %94

94:                                               ; preds = %91, %87
  br label %97

95:                                               ; preds = %79, %59, %55
  %96 = load i8*, i8** @FALSE, align 8
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expld, i32 0, i32 0, i32 1), align 8
  br label %97

97:                                               ; preds = %95, %94
  br label %100

98:                                               ; preds = %10
  %99 = call i32 (...) @FAIL()
  br label %100

100:                                              ; preds = %98, %97, %54, %39, %33, %29, %27, %26
  br label %101

101:                                              ; preds = %100, %1
  ret void
}

declare dso_local i32 @exp_fold_tree_1(i32) #1

declare dso_local i32 @new_rel_from_abs(i32) #1

declare dso_local i32 @align_n(i32, i32) #1

declare dso_local i32 @make_abs(...) #1

declare dso_local i32 @FAIL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
