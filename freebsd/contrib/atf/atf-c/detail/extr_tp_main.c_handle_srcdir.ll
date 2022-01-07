; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_tp_main.c_handle_srcdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_tp_main.c_handle_srcdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c".libs\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@progname = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"srcdir\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Cannot find the test program in the source directory `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.params*)* @handle_srcdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_srcdir(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  %10 = load %struct.params*, %struct.params** %2, align 8
  %11 = getelementptr inbounds %struct.params, %struct.params* %10, i32 0, i32 1
  %12 = call i32 @atf_fs_path_copy(i32* %6, i32* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @atf_is_error(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %84

17:                                               ; preds = %1
  %18 = call i32 @atf_fs_path_is_absolute(i32* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = call i32 @atf_fs_path_to_absolute(i32* %6, i32* %8)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @atf_is_error(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %82

26:                                               ; preds = %20
  %27 = call i32 @atf_fs_path_fini(i32* %6)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %17
  %30 = call i32 @atf_fs_path_leaf_name(i32* %6, i32* %4)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @atf_is_error(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %82

35:                                               ; preds = %29
  %36 = call i32 @atf_equal_dynstr_cstring(i32* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %9, align 4
  %37 = call i32 @atf_dynstr_fini(i32* %4)
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = call i32 @srcdir_strip_libtool(i32* %6)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @atf_is_error(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %84

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %35
  br label %48

48:                                               ; preds = %47
  %49 = call i32 @atf_fs_path_copy(i32* %5, i32* %6)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @atf_is_error(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %82

54:                                               ; preds = %48
  %55 = load i32, i32* @progname, align 4
  %56 = call i32 @atf_fs_path_append_fmt(i32* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i64 @atf_is_error(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %80

61:                                               ; preds = %54
  %62 = call i32 @atf_fs_exists(i32* %5, i32* %7)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i64 @atf_is_error(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.params*, %struct.params** %2, align 8
  %71 = getelementptr inbounds %struct.params, %struct.params* %70, i32 0, i32 0
  %72 = call i32 @atf_fs_path_cstring(i32* %6)
  %73 = call i32 @strdup(i32 %72)
  %74 = call i32 @atf_map_insert(i32* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 1)
  store i32 %74, i32* %3, align 4
  br label %78

75:                                               ; preds = %66
  %76 = call i32 @atf_fs_path_cstring(i32* %6)
  %77 = call i32 @user_error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %69
  br label %79

79:                                               ; preds = %78, %61
  br label %80

80:                                               ; preds = %79, %60
  %81 = call i32 @atf_fs_path_fini(i32* %5)
  br label %82

82:                                               ; preds = %80, %53, %34, %25
  %83 = call i32 @atf_fs_path_fini(i32* %6)
  br label %84

84:                                               ; preds = %82, %45, %16
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @atf_fs_path_copy(i32*, i32*) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @atf_fs_path_is_absolute(i32*) #1

declare dso_local i32 @atf_fs_path_to_absolute(i32*, i32*) #1

declare dso_local i32 @atf_fs_path_fini(i32*) #1

declare dso_local i32 @atf_fs_path_leaf_name(i32*, i32*) #1

declare dso_local i32 @atf_equal_dynstr_cstring(i32*, i8*) #1

declare dso_local i32 @atf_dynstr_fini(i32*) #1

declare dso_local i32 @srcdir_strip_libtool(i32*) #1

declare dso_local i32 @atf_fs_path_append_fmt(i32*, i8*, i32) #1

declare dso_local i32 @atf_fs_exists(i32*, i32*) #1

declare dso_local i32 @atf_map_insert(i32*, i8*, i32, i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @atf_fs_path_cstring(i32*) #1

declare dso_local i32 @user_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
