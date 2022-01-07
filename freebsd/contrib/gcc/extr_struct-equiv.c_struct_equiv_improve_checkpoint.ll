; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_struct_equiv_improve_checkpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_struct_equiv_improve_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.struct_equiv_checkpoint = type { i64, i32 }
%struct.equiv_info = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@IMPOSSIBLE_MOVE_FACTOR = common dso_local global i64 0, align 8
@STRUCT_EQUIV_FINAL = common dso_local global i32 0, align 4
@cc0_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.struct_equiv_checkpoint*, %struct.equiv_info*)* @struct_equiv_improve_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @struct_equiv_improve_checkpoint(%struct.struct_equiv_checkpoint* %0, %struct.equiv_info* %1) #0 {
  %3 = alloca %struct.struct_equiv_checkpoint*, align 8
  %4 = alloca %struct.equiv_info*, align 8
  store %struct.struct_equiv_checkpoint* %0, %struct.struct_equiv_checkpoint** %3, align 8
  store %struct.equiv_info* %1, %struct.equiv_info** %4, align 8
  %5 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %6 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IMPOSSIBLE_MOVE_FACTOR, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %83

12:                                               ; preds = %2
  %13 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %14 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %19 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.struct_equiv_checkpoint*, %struct.struct_equiv_checkpoint** %3, align 8
  %23 = getelementptr inbounds %struct.struct_equiv_checkpoint, %struct.struct_equiv_checkpoint* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = call i32 @COSTS_N_INSNS(i64 %25)
  %27 = sext i32 %26 to i64
  %28 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %29 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %33 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.struct_equiv_checkpoint*, %struct.struct_equiv_checkpoint** %3, align 8
  %37 = getelementptr inbounds %struct.struct_equiv_checkpoint, %struct.struct_equiv_checkpoint* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %35, %39
  %41 = mul nsw i64 %31, %40
  %42 = icmp sgt i64 %27, %41
  br i1 %42, label %58, label %83

43:                                               ; preds = %12
  %44 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %45 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.struct_equiv_checkpoint*, %struct.struct_equiv_checkpoint** %3, align 8
  %49 = getelementptr inbounds %struct.struct_equiv_checkpoint, %struct.struct_equiv_checkpoint* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %83

52:                                               ; preds = %43
  %53 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %54 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %83, label %58

58:                                               ; preds = %52, %17
  %59 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %60 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %65 = call i32 @resolve_input_conflict(%struct.equiv_info* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %83

68:                                               ; preds = %63, %58
  %69 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %70 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @STRUCT_EQUIV_FINAL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 (...) @confirm_change_group()
  br label %79

77:                                               ; preds = %68
  %78 = call i32 @cancel_changes(i32 0)
  br label %79

79:                                               ; preds = %77, %75
  %80 = load %struct.struct_equiv_checkpoint*, %struct.struct_equiv_checkpoint** %3, align 8
  %81 = load %struct.equiv_info*, %struct.equiv_info** %4, align 8
  %82 = call i32 @struct_equiv_make_checkpoint(%struct.struct_equiv_checkpoint* %80, %struct.equiv_info* %81)
  br label %83

83:                                               ; preds = %11, %67, %79, %52, %43, %17
  ret void
}

declare dso_local i32 @COSTS_N_INSNS(i64) #1

declare dso_local i32 @resolve_input_conflict(%struct.equiv_info*) #1

declare dso_local i32 @confirm_change_group(...) #1

declare dso_local i32 @cancel_changes(i32) #1

declare dso_local i32 @struct_equiv_make_checkpoint(%struct.struct_equiv_checkpoint*, %struct.equiv_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
