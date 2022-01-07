; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_set_offsets_for_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_set_offsets_for_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elim_table = type { i64, i64, i64, i64 }

@num_not_at_initial_offset = common dso_local global i64 0, align 8
@reg_eliminate = common dso_local global %struct.elim_table* null, align 8
@NUM_ELIMINABLE_REGS = common dso_local global i32 0, align 4
@offsets_at = common dso_local global i64** null, align 8
@first_label_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_offsets_for_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_offsets_for_label(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.elim_table*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @CODE_LABEL_NUMBER(i32 %6)
  store i32 %7, i32* %4, align 4
  store i64 0, i64* @num_not_at_initial_offset, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.elim_table*, %struct.elim_table** @reg_eliminate, align 8
  store %struct.elim_table* %8, %struct.elim_table** %5, align 8
  br label %9

9:                                                ; preds = %45, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @NUM_ELIMINABLE_REGS, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %9
  %14 = load i64**, i64*** @offsets_at, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @first_label_num, align 4
  %17 = sub nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64*, i64** %14, i64 %18
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %26 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %28 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %27, i32 0, i32 0
  store i64 %24, i64* %28, align 8
  %29 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %30 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %13
  %34 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %35 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %38 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i64, i64* @num_not_at_initial_offset, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* @num_not_at_initial_offset, align 8
  br label %44

44:                                               ; preds = %41, %33, %13
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.elim_table*, %struct.elim_table** %5, align 8
  %47 = getelementptr inbounds %struct.elim_table, %struct.elim_table* %46, i32 1
  store %struct.elim_table* %47, %struct.elim_table** %5, align 8
  %48 = load i32, i32* %3, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %9

50:                                               ; preds = %9
  ret void
}

declare dso_local i32 @CODE_LABEL_NUMBER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
