; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_no_conflict_move_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_no_conflict_move_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.no_conflict_data = type { i32, i64, i64, i32 }

@USE = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @no_conflict_move_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @no_conflict_move_test(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.no_conflict_data*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.no_conflict_data*
  store %struct.no_conflict_data* %9, %struct.no_conflict_data** %7, align 8
  %10 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %11 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @reg_overlap_mentioned_p(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %18 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %108

19:                                               ; preds = %3
  %20 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %21 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %24 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %108

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %31 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @PATTERN(i64 %32)
  %34 = call i64 @reg_overlap_mentioned_p(i32 %29, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %103, label %36

36:                                               ; preds = %28
  %37 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %38 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @CALL_P(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %44 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @USE, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @find_reg_fusage(i64 %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %103, label %50

50:                                               ; preds = %42, %36
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %53 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %56 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @reg_used_between_p(i32 %51, i64 %54, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %103, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @GET_CODE(i32 %61)
  %63 = load i64, i64* @SET, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %106

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @SET_SRC(i32 %66)
  %68 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %69 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @modified_in_p(i32 %67, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %103, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @SET_DEST(i32 %74)
  %76 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %77 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @modified_in_p(i32 %75, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @SET_SRC(i32 %82)
  %84 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %85 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %88 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @modified_between_p(i32 %83, i64 %86, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @SET_DEST(i32 %93)
  %95 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %96 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %99 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @modified_between_p(i32 %94, i64 %97, i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %92, %81, %73, %65, %50, %42, %28
  %104 = load %struct.no_conflict_data*, %struct.no_conflict_data** %7, align 8
  %105 = getelementptr inbounds %struct.no_conflict_data, %struct.no_conflict_data* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %92, %60
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %27, %107, %16
  ret void
}

declare dso_local i64 @reg_overlap_mentioned_p(i32, i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @find_reg_fusage(i64, i32, i32) #1

declare dso_local i64 @reg_used_between_p(i32, i64, i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @modified_in_p(i32, i64) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i64 @modified_between_p(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
