; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mips-dis.c_choose_arch_by_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mips-dis.c_choose_arch_by_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_arch_choice = type { i64, i64 }

@choose_arch_by_number.hint_bfd_mach = internal global i64 0, align 8
@choose_arch_by_number.hint_arch_choice = internal global %struct.mips_arch_choice* null, align 8
@mips_arch_choices = common dso_local global %struct.mips_arch_choice* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mips_arch_choice* (i64)* @choose_arch_by_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mips_arch_choice* @choose_arch_by_number(i64 %0) #0 {
  %2 = alloca %struct.mips_arch_choice*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mips_arch_choice*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* @choose_arch_by_number.hint_bfd_mach, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @choose_arch_by_number.hint_arch_choice, align 8
  %11 = icmp ne %struct.mips_arch_choice* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @choose_arch_by_number.hint_arch_choice, align 8
  %14 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @choose_arch_by_number.hint_bfd_mach, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @choose_arch_by_number.hint_arch_choice, align 8
  store %struct.mips_arch_choice* %19, %struct.mips_arch_choice** %2, align 8
  br label %61

20:                                               ; preds = %12, %9, %1
  store i32 0, i32* %5, align 4
  store %struct.mips_arch_choice* null, %struct.mips_arch_choice** %4, align 8
  br label %21

21:                                               ; preds = %56, %20
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @mips_arch_choices, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.mips_arch_choice* %23)
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %4, align 8
  %28 = icmp eq %struct.mips_arch_choice* %27, null
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i1 [ false, %21 ], [ %28, %26 ]
  br i1 %30, label %31, label %59

31:                                               ; preds = %29
  %32 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @mips_arch_choices, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %32, i64 %34
  %36 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %31
  %40 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @mips_arch_choices, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %40, i64 %42
  %44 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** @mips_arch_choices, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %49, i64 %51
  store %struct.mips_arch_choice* %52, %struct.mips_arch_choice** %4, align 8
  %53 = load i64, i64* %3, align 8
  store i64 %53, i64* @choose_arch_by_number.hint_bfd_mach, align 8
  %54 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %4, align 8
  store %struct.mips_arch_choice* %54, %struct.mips_arch_choice** @choose_arch_by_number.hint_arch_choice, align 8
  br label %55

55:                                               ; preds = %48, %39, %31
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %21

59:                                               ; preds = %29
  %60 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %4, align 8
  store %struct.mips_arch_choice* %60, %struct.mips_arch_choice** %2, align 8
  br label %61

61:                                               ; preds = %59, %18
  %62 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %2, align 8
  ret %struct.mips_arch_choice* %62
}

declare dso_local i32 @ARRAY_SIZE(%struct.mips_arch_choice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
