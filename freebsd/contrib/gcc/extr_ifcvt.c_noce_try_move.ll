; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noce_if_info = type { i32, i32, i32, i32, i32, i32 }

@NE = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.noce_if_info*)* @noce_try_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noce_try_move(%struct.noce_if_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.noce_if_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.noce_if_info* %0, %struct.noce_if_info** %3, align 8
  %8 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %9 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @GET_CODE(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @NE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @EQ, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %117

22:                                               ; preds = %16, %1
  %23 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %24 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GET_MODE(i32 %25)
  %27 = call i64 @HONOR_NANS(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %31 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @GET_MODE(i32 %32)
  %34 = call i64 @HONOR_SIGNED_ZEROS(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29, %22
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %2, align 4
  br label %117

38:                                               ; preds = %29
  %39 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %40 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @XEXP(i32 %42, i32 0)
  %44 = call i64 @rtx_equal_p(i32 %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %48 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @XEXP(i32 %50, i32 1)
  %52 = call i64 @rtx_equal_p(i32 %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %46, %38
  %55 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %56 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @XEXP(i32 %58, i32 1)
  %60 = call i64 @rtx_equal_p(i32 %57, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %54
  %63 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %64 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @XEXP(i32 %66, i32 0)
  %68 = call i64 @rtx_equal_p(i32 %65, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %62, %46
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @EQ, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %76 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  br label %82

78:                                               ; preds = %70
  %79 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %80 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i32 [ %77, %74 ], [ %81, %78 ]
  store i32 %83, i32* %6, align 4
  %84 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %85 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i64 @rtx_equal_p(i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %113, label %90

90:                                               ; preds = %82
  %91 = call i32 (...) @start_sequence()
  %92 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %93 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @noce_emit_move_insn(i32 %94, i32 %95)
  %97 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %98 = call i32 @end_ifcvt_sequence(%struct.noce_if_info* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %90
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %2, align 4
  br label %117

103:                                              ; preds = %90
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %106 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %109 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @INSN_LOCATOR(i32 %110)
  %112 = call i32 @emit_insn_before_setloc(i32 %104, i32 %107, i32 %111)
  br label %113

113:                                              ; preds = %103, %82
  %114 = load i32, i32* @TRUE, align 4
  store i32 %114, i32* %2, align 4
  br label %117

115:                                              ; preds = %62, %54
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %113, %101, %36, %20
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i64 @HONOR_NANS(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @HONOR_SIGNED_ZEROS(i32) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @noce_emit_move_insn(i32, i32) #1

declare dso_local i32 @end_ifcvt_sequence(%struct.noce_if_info*) #1

declare dso_local i32 @emit_insn_before_setloc(i32, i32, i32) #1

declare dso_local i32 @INSN_LOCATOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
