; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_check.c_atf_check_result_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_check.c_atf_check_result_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s/stdout\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/stderr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8**, i32*)* @atf_check_result_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atf_check_result_init(%struct.TYPE_4__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = call %struct.TYPE_5__* @malloc(i32 4)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 (...) @atf_no_memory_error()
  store i32 %17, i32* %4, align 4
  br label %91

18:                                               ; preds = %3
  %19 = load i8**, i8*** %6, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @array_to_list(i8** %19, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @atf_is_error(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %89

29:                                               ; preds = %18
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @atf_fs_path_copy(i32* %33, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @atf_is_error(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %83

40:                                               ; preds = %29
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @atf_fs_path_cstring(i32* %45)
  %47 = call i32 @atf_fs_path_init_fmt(i32* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @atf_is_error(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %77

52:                                               ; preds = %40
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @atf_fs_path_cstring(i32* %57)
  %59 = call i32 @atf_fs_path_init_fmt(i32* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @atf_is_error(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %71

64:                                               ; preds = %52
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @atf_is_error(i32 %65)
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @INV(i32 %69)
  br label %89

71:                                               ; preds = %63
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = call i32 @atf_fs_path_fini(i32* %75)
  br label %77

77:                                               ; preds = %71, %51
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = call i32 @atf_fs_path_fini(i32* %81)
  br label %83

83:                                               ; preds = %77, %39
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = call i32 @atf_list_fini(i32* %87)
  br label %89

89:                                               ; preds = %83, %64, %28
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %16
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i32 @atf_no_memory_error(...) #1

declare dso_local i32 @array_to_list(i8**, i32*) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @atf_fs_path_copy(i32*, i32*) #1

declare dso_local i32 @atf_fs_path_init_fmt(i32*, i8*, i32) #1

declare dso_local i32 @atf_fs_path_cstring(i32*) #1

declare dso_local i32 @INV(i32) #1

declare dso_local i32 @atf_fs_path_fini(i32*) #1

declare dso_local i32 @atf_list_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
