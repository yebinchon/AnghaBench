; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_function_arg_advance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_function_arg_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i32 }
%struct.mips_arg_info = type { i64, i64, i64, i64, i64 }

@SFmode = common dso_local global i32 0, align 4
@mips_abi = common dso_local global i64 0, align 8
@ABI_EABI = common dso_local global i64 0, align 8
@FP_INC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @function_arg_advance(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mips_arg_info, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @mips_arg_info(%struct.TYPE_4__* %10, i32 %11, i32 %12, i32 %13, %struct.mips_arg_info* %9)
  %15 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %9, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %9, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SFmode, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = mul nsw i32 %39, 2
  %41 = shl i32 %35, %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %30, %26, %21
  %47 = load i64, i64* @mips_abi, align 8
  %48 = load i64, i64* @ABI_EABI, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %9, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50, %46
  %55 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %9, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %56, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  br label %75

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %9, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i64, i64* @FP_INC, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  br label %74

74:                                               ; preds = %66, %62
  br label %75

75:                                               ; preds = %74, %54
  %76 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %9, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %9, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.mips_arg_info, %struct.mips_arg_info* %9, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %81, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %79, %75
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  ret void
}

declare dso_local i32 @mips_arg_info(%struct.TYPE_4__*, i32, i32, i32, %struct.mips_arg_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
