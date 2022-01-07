; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_urec_mark_reg_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_urec_mark_reg_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_urec_bb_info = type { i32, i32 }

@SUBREG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i64** null, align 8
@CLOBBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @df_urec_mark_reg_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_urec_mark_reg_change(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.df_urec_bb_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.df_urec_bb_info*
  store %struct.df_urec_bb_info* %12, %struct.df_urec_bb_info** %10, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @GET_CODE(i32 %13)
  %15 = load i64, i64* @SUBREG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @SUBREG_REG(i32 %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @REG_P(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %100

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @REGNO(i32 %26)
  store i32 %27, i32* %7, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %25
  %32 = load i64**, i64*** @hard_regno_nregs, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64*, i64** %32, i64 %34
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @GET_MODE(i32 %37)
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %73, %31
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  %51 = load %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %10, align 8
  %52 = getelementptr inbounds %struct.df_urec_bb_info, %struct.df_urec_bb_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @bitmap_set_bit(i32 %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @GET_CODE(i32 %56)
  %58 = load i64, i64* @CLOBBER, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %10, align 8
  %62 = getelementptr inbounds %struct.df_urec_bb_info, %struct.df_urec_bb_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @bitmap_set_bit(i32 %63, i32 %64)
  br label %72

66:                                               ; preds = %50
  %67 = load %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %10, align 8
  %68 = getelementptr inbounds %struct.df_urec_bb_info, %struct.df_urec_bb_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @bitmap_clear_bit(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %46

76:                                               ; preds = %46
  br label %100

77:                                               ; preds = %25
  %78 = load %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %10, align 8
  %79 = getelementptr inbounds %struct.df_urec_bb_info, %struct.df_urec_bb_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @bitmap_set_bit(i32 %80, i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @GET_CODE(i32 %83)
  %85 = load i64, i64* @CLOBBER, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %77
  %88 = load %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %10, align 8
  %89 = getelementptr inbounds %struct.df_urec_bb_info, %struct.df_urec_bb_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @bitmap_set_bit(i32 %90, i32 %91)
  br label %99

93:                                               ; preds = %77
  %94 = load %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %10, align 8
  %95 = getelementptr inbounds %struct.df_urec_bb_info, %struct.df_urec_bb_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @bitmap_clear_bit(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %87
  br label %100

100:                                              ; preds = %24, %99, %76
  ret void
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @bitmap_clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
