; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_frgr_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_frgr_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_state_record = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UNW_REG_R4 = common dso_local global i32 0, align 4
@UNW_WHERE_SPILL_HOME = common dso_local global i32 0, align 4
@UNW_REG_F2 = common dso_local global i32 0, align 4
@UNW_REG_F16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32, %struct.unw_state_record*)* @desc_frgr_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desc_frgr_mem(i8 zeroext %0, i32 %1, %struct.unw_state_record* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.unw_state_record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  store %struct.unw_state_record* %2, %struct.unw_state_record** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %43, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %19 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @UNW_REG_R4, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @UNW_WHERE_SPILL_HOME, align 4
  %27 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %28 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %31 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @set_reg(i32 %25, i32 %26, i64 %34, i32 0)
  %36 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %37 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %17, %12
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i32
  %41 = ashr i32 %40, 1
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %4, align 1
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %9

46:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %87, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 20
  br i1 %49, label %50, label %90

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @UNW_REG_F2, align 4
  br label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @UNW_REG_F16, align 4
  %61 = sub nsw i32 %60, 4
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %61, %59 ]
  store i32 %63, i32* %8, align 4
  %64 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %65 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %69, %70
  %72 = load i32, i32* @UNW_WHERE_SPILL_HOME, align 4
  %73 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %74 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %77 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = sub nsw i64 %79, 1
  %81 = call i32 @set_reg(i32 %71, i32 %72, i64 %80, i32 0)
  %82 = load %struct.unw_state_record*, %struct.unw_state_record** %6, align 8
  %83 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %62, %50
  %85 = load i32, i32* %5, align 4
  %86 = ashr i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %47

90:                                               ; preds = %47
  ret void
}

declare dso_local i32 @set_reg(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
