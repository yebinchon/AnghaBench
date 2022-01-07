; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_minmax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noce_if_info = type { i8*, i8*, i8*, i32, i32, i32, i32 }

@no_new_pseudos = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SMAX = common dso_local global i32 0, align 4
@SMIN = common dso_local global i32 0, align 4
@UMAX = common dso_local global i32 0, align 4
@UMIN = common dso_local global i32 0, align 4
@OPTAB_WIDEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.noce_if_info*)* @noce_try_minmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noce_try_minmax(%struct.noce_if_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.noce_if_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.noce_if_info* %0, %struct.noce_if_info** %3, align 8
  %11 = load i64, i64* @no_new_pseudos, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %2, align 4
  br label %158

15:                                               ; preds = %1
  %16 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %17 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @GET_MODE(i8* %18)
  %20 = call i64 @HONOR_SIGNED_ZEROS(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %24 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @GET_MODE(i8* %25)
  %27 = call i64 @HONOR_NANS(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22, %15
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %158

31:                                               ; preds = %22
  %32 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %33 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %34 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @noce_get_alt_condition(%struct.noce_if_info* %32, i32 %35, i8** %5)
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %2, align 4
  br label %158

41:                                               ; preds = %31
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @GET_CODE(i8* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @XEXP(i8* %44, i32 0)
  %46 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %47 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @rtx_equal_p(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @XEXP(i8* %52, i32 1)
  %54 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %55 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @rtx_equal_p(i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %2, align 4
  br label %158

61:                                               ; preds = %51
  br label %86

62:                                               ; preds = %41
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @XEXP(i8* %63, i32 1)
  %65 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %66 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @rtx_equal_p(i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %62
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @XEXP(i8* %71, i32 0)
  %73 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %74 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @rtx_equal_p(i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %2, align 4
  br label %158

80:                                               ; preds = %70
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @swap_condition(i32 %81)
  store i32 %82, i32* %8, align 4
  br label %85

83:                                               ; preds = %62
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %2, align 4
  br label %158

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %61
  %87 = load i32, i32* %8, align 4
  switch i32 %87, label %96 [
    i32 133, label %88
    i32 135, label %88
    i32 128, label %88
    i32 129, label %88
    i32 137, label %90
    i32 139, label %90
    i32 130, label %90
    i32 131, label %90
    i32 132, label %92
    i32 134, label %92
    i32 136, label %94
    i32 138, label %94
  ]

88:                                               ; preds = %86, %86, %86, %86
  %89 = load i32, i32* @SMAX, align 4
  store i32 %89, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %98

90:                                               ; preds = %86, %86, %86, %86
  %91 = load i32, i32* @SMIN, align 4
  store i32 %91, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %98

92:                                               ; preds = %86, %86
  %93 = load i32, i32* @UMAX, align 4
  store i32 %93, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %98

94:                                               ; preds = %86, %86
  %95 = load i32, i32* @UMIN, align 4
  store i32 %95, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %98

96:                                               ; preds = %86
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %2, align 4
  br label %158

98:                                               ; preds = %94, %92, %90, %88
  %99 = call i32 (...) @start_sequence()
  %100 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %101 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @GET_MODE(i8* %102)
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %106 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %109 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %112 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @OPTAB_WIDEN, align 4
  %116 = call i8* @expand_simple_binop(i32 %103, i32 %104, i32 %107, i32 %110, i8* %113, i32 %114, i32 %115)
  store i8* %116, i8** %6, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %98
  %120 = call i32 (...) @end_sequence()
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %2, align 4
  br label %158

122:                                              ; preds = %98
  %123 = load i8*, i8** %6, align 8
  %124 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %125 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %123, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %130 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @noce_emit_move_insn(i8* %131, i8* %132)
  br label %134

134:                                              ; preds = %128, %122
  %135 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %136 = call i8* @end_ifcvt_sequence(%struct.noce_if_info* %135)
  store i8* %136, i8** %7, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* @FALSE, align 4
  store i32 %140, i32* %2, align 4
  br label %158

141:                                              ; preds = %134
  %142 = load i8*, i8** %7, align 8
  %143 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %144 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %147 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @INSN_LOCATOR(i32 %148)
  %150 = call i32 @emit_insn_before_setloc(i8* %142, i32 %145, i32 %149)
  %151 = load i8*, i8** %4, align 8
  %152 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %153 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %156 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* @TRUE, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %141, %139, %119, %96, %83, %78, %59, %39, %29, %13
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i64 @HONOR_SIGNED_ZEROS(i32) #1

declare dso_local i32 @GET_MODE(i8*) #1

declare dso_local i64 @HONOR_NANS(i32) #1

declare dso_local i8* @noce_get_alt_condition(%struct.noce_if_info*, i32, i8**) #1

declare dso_local i32 @GET_CODE(i8*) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @XEXP(i8*, i32) #1

declare dso_local i32 @swap_condition(i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i8* @expand_simple_binop(i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @noce_emit_move_insn(i8*, i8*) #1

declare dso_local i8* @end_ifcvt_sequence(%struct.noce_if_info*) #1

declare dso_local i32 @emit_insn_before_setloc(i8*, i32, i32) #1

declare dso_local i32 @INSN_LOCATOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
