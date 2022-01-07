; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_libunwind-frame.c_libunwind_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_libunwind-frame.c_libunwind_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIBUNWIND_SO = common dso_local global i32 0, align 4
@RTLD_NOW = common dso_local global i32 0, align 4
@get_reg_name = common dso_local global i32 0, align 4
@unw_get_reg_p = common dso_local global i32* null, align 8
@get_fpreg_name = common dso_local global i32 0, align 4
@unw_get_fpreg_p = common dso_local global i32* null, align 8
@get_saveloc_name = common dso_local global i32 0, align 4
@unw_get_saveloc_p = common dso_local global i32* null, align 8
@step_name = common dso_local global i32 0, align 4
@unw_step_p = common dso_local global i32* null, align 8
@init_remote_name = common dso_local global i32 0, align 4
@unw_init_remote_p = common dso_local global i32* null, align 8
@create_addr_space_name = common dso_local global i32 0, align 4
@unw_create_addr_space_p = common dso_local global i32* null, align 8
@search_unwind_table_name = common dso_local global i32 0, align 4
@unw_search_unwind_table_p = common dso_local global i32* null, align 8
@find_dyn_list_name = common dso_local global i32 0, align 4
@unw_find_dyn_list_p = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @libunwind_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libunwind_load() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @LIBUNWIND_SO, align 4
  %4 = load i32, i32* @RTLD_NOW, align 4
  %5 = call i8* @dlopen(i32 %3, i32 %4)
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %74

9:                                                ; preds = %0
  %10 = load i8*, i8** %2, align 8
  %11 = load i32, i32* @get_reg_name, align 4
  %12 = call i8* @dlsym(i8* %10, i32 %11)
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** @unw_get_reg_p, align 8
  %14 = load i32*, i32** @unw_get_reg_p, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %74

17:                                               ; preds = %9
  %18 = load i8*, i8** %2, align 8
  %19 = load i32, i32* @get_fpreg_name, align 4
  %20 = call i8* @dlsym(i8* %18, i32 %19)
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** @unw_get_fpreg_p, align 8
  %22 = load i32*, i32** @unw_get_fpreg_p, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %74

25:                                               ; preds = %17
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* @get_saveloc_name, align 4
  %28 = call i8* @dlsym(i8* %26, i32 %27)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** @unw_get_saveloc_p, align 8
  %30 = load i32*, i32** @unw_get_saveloc_p, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %74

33:                                               ; preds = %25
  %34 = load i8*, i8** %2, align 8
  %35 = load i32, i32* @step_name, align 4
  %36 = call i8* @dlsym(i8* %34, i32 %35)
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** @unw_step_p, align 8
  %38 = load i32*, i32** @unw_step_p, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %1, align 4
  br label %74

41:                                               ; preds = %33
  %42 = load i8*, i8** %2, align 8
  %43 = load i32, i32* @init_remote_name, align 4
  %44 = call i8* @dlsym(i8* %42, i32 %43)
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** @unw_init_remote_p, align 8
  %46 = load i32*, i32** @unw_init_remote_p, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %1, align 4
  br label %74

49:                                               ; preds = %41
  %50 = load i8*, i8** %2, align 8
  %51 = load i32, i32* @create_addr_space_name, align 4
  %52 = call i8* @dlsym(i8* %50, i32 %51)
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** @unw_create_addr_space_p, align 8
  %54 = load i32*, i32** @unw_create_addr_space_p, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %1, align 4
  br label %74

57:                                               ; preds = %49
  %58 = load i8*, i8** %2, align 8
  %59 = load i32, i32* @search_unwind_table_name, align 4
  %60 = call i8* @dlsym(i8* %58, i32 %59)
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** @unw_search_unwind_table_p, align 8
  %62 = load i32*, i32** @unw_search_unwind_table_p, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %1, align 4
  br label %74

65:                                               ; preds = %57
  %66 = load i8*, i8** %2, align 8
  %67 = load i32, i32* @find_dyn_list_name, align 4
  %68 = call i8* @dlsym(i8* %66, i32 %67)
  %69 = bitcast i8* %68 to i32*
  store i32* %69, i32** @unw_find_dyn_list_p, align 8
  %70 = load i32*, i32** @unw_find_dyn_list_p, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 0, i32* %1, align 4
  br label %74

73:                                               ; preds = %65
  store i32 1, i32* %1, align 4
  br label %74

74:                                               ; preds = %73, %72, %64, %56, %48, %40, %32, %24, %16, %8
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i8* @dlopen(i32, i32) #1

declare dso_local i8* @dlsym(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
