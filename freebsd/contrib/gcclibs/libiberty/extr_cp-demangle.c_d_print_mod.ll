; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i32 }
%struct.demangle_component = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c" restrict\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@DMGL_JAVA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"complex \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"imaginary \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, %struct.demangle_component*)* @d_print_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_mod(%struct.d_print_info* %0, %struct.demangle_component* %1) #0 {
  %3 = alloca %struct.d_print_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %3, align 8
  store %struct.demangle_component* %1, %struct.demangle_component** %4, align 8
  %5 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %6 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %64 [
    i32 133, label %8
    i32 132, label %8
    i32 129, label %11
    i32 128, label %11
    i32 139, label %14
    i32 138, label %14
    i32 130, label %17
    i32 136, label %24
    i32 134, label %35
    i32 140, label %38
    i32 137, label %41
    i32 135, label %44
    i32 131, label %59
  ]

8:                                                ; preds = %2, %2
  %9 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %10 = call i32 @d_append_string_constant(%struct.d_print_info* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %68

11:                                               ; preds = %2, %2
  %12 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %13 = call i32 @d_append_string_constant(%struct.d_print_info* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %68

14:                                               ; preds = %2, %2
  %15 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %16 = call i32 @d_append_string_constant(%struct.d_print_info* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %68

17:                                               ; preds = %2
  %18 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %19 = call i32 @d_append_char(%struct.d_print_info* %18, i8 signext 32)
  %20 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %21 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %22 = call %struct.demangle_component* @d_right(%struct.demangle_component* %21)
  %23 = call i32 @d_print_comp(%struct.d_print_info* %20, %struct.demangle_component* %22)
  br label %68

24:                                               ; preds = %2
  %25 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %26 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMGL_JAVA, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %33 = call i32 @d_append_char(%struct.d_print_info* %32, i8 signext 42)
  br label %34

34:                                               ; preds = %31, %24
  br label %68

35:                                               ; preds = %2
  %36 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %37 = call i32 @d_append_char(%struct.d_print_info* %36, i8 signext 38)
  br label %68

38:                                               ; preds = %2
  %39 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %40 = call i32 @d_append_string_constant(%struct.d_print_info* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %68

41:                                               ; preds = %2
  %42 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %43 = call i32 @d_append_string_constant(%struct.d_print_info* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %68

44:                                               ; preds = %2
  %45 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %46 = call signext i8 @d_last_char(%struct.d_print_info* %45)
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 40
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %51 = call i32 @d_append_char(%struct.d_print_info* %50, i8 signext 32)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %54 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %55 = call %struct.demangle_component* @d_left(%struct.demangle_component* %54)
  %56 = call i32 @d_print_comp(%struct.d_print_info* %53, %struct.demangle_component* %55)
  %57 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %58 = call i32 @d_append_string_constant(%struct.d_print_info* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %68

59:                                               ; preds = %2
  %60 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %61 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %62 = call %struct.demangle_component* @d_left(%struct.demangle_component* %61)
  %63 = call i32 @d_print_comp(%struct.d_print_info* %60, %struct.demangle_component* %62)
  br label %68

64:                                               ; preds = %2
  %65 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %66 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %67 = call i32 @d_print_comp(%struct.d_print_info* %65, %struct.demangle_component* %66)
  br label %68

68:                                               ; preds = %64, %59, %52, %41, %38, %35, %34, %17, %14, %11, %8
  ret void
}

declare dso_local i32 @d_append_string_constant(%struct.d_print_info*, i8*) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

declare dso_local i32 @d_print_comp(%struct.d_print_info*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_right(%struct.demangle_component*) #1

declare dso_local signext i8 @d_last_char(%struct.d_print_info*) #1

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
