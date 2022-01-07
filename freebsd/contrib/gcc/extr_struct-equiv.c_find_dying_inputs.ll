; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_find_dying_inputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_find_dying_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.equiv_info = type { i32*, i64, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.equiv_info*)* @find_dying_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_dying_inputs(%struct.equiv_info* %0) #0 {
  %2 = alloca %struct.equiv_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.equiv_info* %0, %struct.equiv_info** %2, align 8
  %7 = load %struct.equiv_info*, %struct.equiv_info** %2, align 8
  %8 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.equiv_info*, %struct.equiv_info** %2, align 8
  %10 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %77, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %80

17:                                               ; preds = %14
  %18 = load %struct.equiv_info*, %struct.equiv_info** %2, align 8
  %19 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @REGNO(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %41

31:                                               ; preds = %17
  %32 = load i32**, i32*** @hard_regno_nregs, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @GET_MODE(i32 %37)
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  br label %41

41:                                               ; preds = %31, %30
  %42 = phi i32 [ 1, %30 ], [ %40, %31 ]
  store i32 %42, i32* %6, align 4
  %43 = load %struct.equiv_info*, %struct.equiv_info** %2, align 8
  %44 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %71, %41
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load %struct.equiv_info*, %struct.equiv_info** %2, align 8
  %54 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @REGNO_REG_SET_P(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.equiv_info*, %struct.equiv_info** %2, align 8
  %61 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.equiv_info*, %struct.equiv_info** %2, align 8
  %65 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 1, i32* %69, align 4
  br label %76

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %6, align 4
  br label %49

76:                                               ; preds = %59, %49
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %3, align 4
  br label %14

80:                                               ; preds = %14
  ret void
}

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i64 @REGNO_REG_SET_P(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
