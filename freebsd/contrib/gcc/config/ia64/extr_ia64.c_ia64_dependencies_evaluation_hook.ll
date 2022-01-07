; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_dependencies_evaluation_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_dependencies_evaluation_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }

@reload_completed = common dso_local global i32 0, align 4
@ITANIUM_CLASS_IALU = common dso_local global i64 0, align 8
@REG_DEP_TRUE = common dso_local global i64 0, align 8
@ITANIUM_CLASS_ST = common dso_local global i32 0, align 4
@ITANIUM_CLASS_STF = common dso_local global i32 0, align 4
@ITANIUM_CLASS_LD = common dso_local global i32 0, align 4
@ITANIUM_CLASS_FLD = common dso_local global i32 0, align 4
@ITANIUM_CLASS_FLDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_17__*)* @ia64_dependencies_evaluation_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_dependencies_evaluation_hook(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %10 = load i32, i32* @reload_completed, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %111

13:                                               ; preds = %2
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = call %struct.TYPE_17__* @NEXT_INSN(%struct.TYPE_17__* %14)
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %8, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %5, align 8
  br label %17

17:                                               ; preds = %29, %13
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = icmp ne %struct.TYPE_17__* %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = call i64 @INSN_P(%struct.TYPE_17__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = call %struct.TYPE_17__* @NEXT_INSN(%struct.TYPE_17__* %30)
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %5, align 8
  br label %17

32:                                               ; preds = %17
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %5, align 8
  br label %34

34:                                               ; preds = %108, %32
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = icmp ne %struct.TYPE_17__* %35, %36
  br i1 %37, label %38, label %111

38:                                               ; preds = %34
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = call i64 @INSN_P(%struct.TYPE_17__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %107

42:                                               ; preds = %38
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = call i64 @ia64_safe_itanium_class(%struct.TYPE_17__* %43)
  %45 = load i64, i64* @ITANIUM_CLASS_IALU, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %107

47:                                               ; preds = %42
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = call %struct.TYPE_17__* @INSN_DEPEND(%struct.TYPE_17__* %48)
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %6, align 8
  br label %50

50:                                               ; preds = %98, %47
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = icmp ne %struct.TYPE_17__* %51, null
  br i1 %52, label %53, label %101

53:                                               ; preds = %50
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = call i64 @REG_NOTE_KIND(%struct.TYPE_17__* %54)
  %56 = load i64, i64* @REG_DEP_TRUE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %98

59:                                               ; preds = %53
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = call %struct.TYPE_17__* @XEXP(%struct.TYPE_17__* %60, i32 0)
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %7, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = call i64 @ia64_safe_itanium_class(%struct.TYPE_17__* %62)
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @ITANIUM_CLASS_ST, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ITANIUM_CLASS_STF, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68, %59
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %75 = call i64 @ia64_st_address_bypass_p(%struct.TYPE_17__* %73, %struct.TYPE_17__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %101

78:                                               ; preds = %72, %68
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @ITANIUM_CLASS_LD, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @ITANIUM_CLASS_FLD, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @ITANIUM_CLASS_FLDP, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86, %82, %78
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %93 = call i64 @ia64_ld_address_bypass_p(%struct.TYPE_17__* %91, %struct.TYPE_17__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %101

96:                                               ; preds = %90, %86
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %58
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = call %struct.TYPE_17__* @XEXP(%struct.TYPE_17__* %99, i32 1)
  store %struct.TYPE_17__* %100, %struct.TYPE_17__** %6, align 8
  br label %50

101:                                              ; preds = %95, %77, %50
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %103 = icmp ne %struct.TYPE_17__* %102, null
  %104 = zext i1 %103 to i32
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %42, %38
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %110 = call %struct.TYPE_17__* @NEXT_INSN(%struct.TYPE_17__* %109)
  store %struct.TYPE_17__* %110, %struct.TYPE_17__** %5, align 8
  br label %34

111:                                              ; preds = %12, %34
  ret void
}

declare dso_local %struct.TYPE_17__* @NEXT_INSN(%struct.TYPE_17__*) #1

declare dso_local i64 @INSN_P(%struct.TYPE_17__*) #1

declare dso_local i64 @ia64_safe_itanium_class(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @INSN_DEPEND(%struct.TYPE_17__*) #1

declare dso_local i64 @REG_NOTE_KIND(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @XEXP(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @ia64_st_address_bypass_p(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i64 @ia64_ld_address_bypass_p(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
