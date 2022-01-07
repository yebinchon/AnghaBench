; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_dump_enabled_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_dump_enabled_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.dump_file_info = type { i32 }

@TDI_tree_all = common dso_local global i32 0, align 4
@TDI_none = common dso_local global i32 0, align 4
@TDI_end = common dso_local global i64 0, align 8
@dump_files = common dso_local global %struct.TYPE_4__* null, align 8
@extra_dump_files_in_use = common dso_local global i64 0, align 8
@extra_dump_files = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_enabled_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.dump_file_info*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @TDI_tree_all, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load i32, i32* @TDI_none, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %26, %9
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @TDI_end, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dump_files, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %53

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %13

29:                                               ; preds = %13
  store i64 0, i64* %4, align 8
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @extra_dump_files_in_use, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @extra_dump_files, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %53

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %30

46:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %53

47:                                               ; preds = %1
  %48 = load i32, i32* %3, align 4
  %49 = call %struct.dump_file_info* @get_dump_file_info(i32 %48)
  store %struct.dump_file_info* %49, %struct.dump_file_info** %5, align 8
  %50 = load %struct.dump_file_info*, %struct.dump_file_info** %5, align 8
  %51 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %47, %46, %41, %24
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.dump_file_info* @get_dump_file_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
