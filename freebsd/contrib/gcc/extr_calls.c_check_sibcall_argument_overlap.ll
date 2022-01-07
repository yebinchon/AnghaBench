; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_check_sibcall_argument_overlap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_check_sibcall_argument_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NULL_RTX = common dso_local global i64 0, align 8
@stored_args_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.arg_data*, i32)* @check_sibcall_argument_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_sibcall_argument_overlap(i64 %0, %struct.arg_data* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.arg_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.arg_data* %1, %struct.arg_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @NULL_RTX, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i64 (...) @get_insns()
  store i64 %13, i64* %4, align 8
  br label %17

14:                                               ; preds = %3
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @NEXT_INSN(i64 %15)
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %14, %12
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @INSN_P(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @PATTERN(i64 %26)
  %28 = call i64 @check_sibcall_argument_overlap_1(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %35

31:                                               ; preds = %25, %21
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @NEXT_INSN(i64 %33)
  store i64 %34, i64* %4, align 8
  br label %18

35:                                               ; preds = %30, %18
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %40 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %46 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %44, %49
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %59, %38
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* @stored_args_map, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @SET_BIT(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %51

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %35
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @NULL_RTX, align 8
  %66 = icmp ne i64 %64, %65
  %67 = zext i1 %66 to i32
  ret i32 %67
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @check_sibcall_argument_overlap_1(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
