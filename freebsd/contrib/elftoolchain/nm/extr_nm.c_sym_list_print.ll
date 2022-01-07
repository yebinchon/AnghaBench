; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_list_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_list_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sym_print_data = type { i64 }
%struct.func_info_head = type { i32 }
%struct.var_info_head = type { i32 }
%struct.line_info_head = type { i32 }
%struct.sym_entry = type { i32 }

@nm_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_print_data*, %struct.func_info_head*, %struct.var_info_head*, %struct.line_info_head*)* @sym_list_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_list_print(%struct.sym_print_data* %0, %struct.func_info_head* %1, %struct.var_info_head* %2, %struct.line_info_head* %3) #0 {
  %5 = alloca %struct.sym_print_data*, align 8
  %6 = alloca %struct.func_info_head*, align 8
  %7 = alloca %struct.var_info_head*, align 8
  %8 = alloca %struct.line_info_head*, align 8
  %9 = alloca %struct.sym_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sym_print_data* %0, %struct.sym_print_data** %5, align 8
  store %struct.func_info_head* %1, %struct.func_info_head** %6, align 8
  store %struct.var_info_head* %2, %struct.var_info_head** %7, align 8
  store %struct.line_info_head* %3, %struct.line_info_head** %8, align 8
  %12 = load %struct.sym_print_data*, %struct.sym_print_data** %5, align 8
  %13 = icmp eq %struct.sym_print_data* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load %struct.sym_print_data*, %struct.sym_print_data** %5, align 8
  %16 = call i64 @CHECK_SYM_PRINT_DATA(%struct.sym_print_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %4
  br label %73

19:                                               ; preds = %14
  %20 = load %struct.sym_print_data*, %struct.sym_print_data** %5, align 8
  %21 = call %struct.sym_entry* @sym_list_sort(%struct.sym_print_data* %20)
  store %struct.sym_entry* %21, %struct.sym_entry** %9, align 8
  %22 = icmp eq %struct.sym_entry* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %73

24:                                               ; preds = %19
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 0), align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.sym_print_data*, %struct.sym_print_data** %5, align 8
  %31 = getelementptr inbounds %struct.sym_print_data, %struct.sym_print_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.sym_entry*, %struct.sym_entry** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %35, i64 %36
  %38 = load %struct.sym_print_data*, %struct.sym_print_data** %5, align 8
  %39 = load %struct.func_info_head*, %struct.func_info_head** %6, align 8
  %40 = load %struct.var_info_head*, %struct.var_info_head** %7, align 8
  %41 = load %struct.line_info_head*, %struct.line_info_head** %8, align 8
  %42 = call i32 @sym_list_print_each(%struct.sym_entry* %37, %struct.sym_print_data* %38, %struct.func_info_head* %39, %struct.var_info_head* %40, %struct.line_info_head* %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %28

46:                                               ; preds = %28
  br label %70

47:                                               ; preds = %24
  %48 = load %struct.sym_print_data*, %struct.sym_print_data** %5, align 8
  %49 = getelementptr inbounds %struct.sym_print_data, %struct.sym_print_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %50, 1
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %66, %47
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.sym_entry*, %struct.sym_entry** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %57, i64 %59
  %61 = load %struct.sym_print_data*, %struct.sym_print_data** %5, align 8
  %62 = load %struct.func_info_head*, %struct.func_info_head** %6, align 8
  %63 = load %struct.var_info_head*, %struct.var_info_head** %7, align 8
  %64 = load %struct.line_info_head*, %struct.line_info_head** %8, align 8
  %65 = call i32 @sym_list_print_each(%struct.sym_entry* %60, %struct.sym_print_data* %61, %struct.func_info_head* %62, %struct.var_info_head* %63, %struct.line_info_head* %64)
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %11, align 4
  br label %53

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69, %46
  %71 = load %struct.sym_entry*, %struct.sym_entry** %9, align 8
  %72 = call i32 @free(%struct.sym_entry* %71)
  br label %73

73:                                               ; preds = %70, %23, %18
  ret void
}

declare dso_local i64 @CHECK_SYM_PRINT_DATA(%struct.sym_print_data*) #1

declare dso_local %struct.sym_entry* @sym_list_sort(%struct.sym_print_data*) #1

declare dso_local i32 @sym_list_print_each(%struct.sym_entry*, %struct.sym_print_data*, %struct.func_info_head*, %struct.var_info_head*, %struct.line_info_head*) #1

declare dso_local i32 @free(%struct.sym_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
