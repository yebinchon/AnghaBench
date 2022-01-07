; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_ARRAY_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_array_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_array_type(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca i8*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %7 = load %struct.d_info*, %struct.d_info** %3, align 8
  %8 = call i32 @d_check_char(%struct.d_info* %7, i8 signext 65)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %69

11:                                               ; preds = %1
  %12 = load %struct.d_info*, %struct.d_info** %3, align 8
  %13 = call signext i8 @d_peek_char(%struct.d_info* %12)
  store i8 %13, i8* %4, align 1
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 95
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store %struct.demangle_component* null, %struct.demangle_component** %5, align 8
  br label %57

18:                                               ; preds = %11
  %19 = load i8, i8* %4, align 1
  %20 = call i64 @IS_DIGIT(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = load %struct.d_info*, %struct.d_info** %3, align 8
  %24 = call i8* @d_str(%struct.d_info* %23)
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %30, %22
  %26 = load %struct.d_info*, %struct.d_info** %3, align 8
  %27 = call i32 @d_advance(%struct.d_info* %26, i32 1)
  %28 = load %struct.d_info*, %struct.d_info** %3, align 8
  %29 = call signext i8 @d_peek_char(%struct.d_info* %28)
  store i8 %29, i8* %4, align 1
  br label %30

30:                                               ; preds = %25
  %31 = load i8, i8* %4, align 1
  %32 = call i64 @IS_DIGIT(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %25, label %34

34:                                               ; preds = %30
  %35 = load %struct.d_info*, %struct.d_info** %3, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.d_info*, %struct.d_info** %3, align 8
  %38 = call i8* @d_str(%struct.d_info* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = call %struct.demangle_component* @d_make_name(%struct.d_info* %35, i8* %36, i32 %43)
  store %struct.demangle_component* %44, %struct.demangle_component** %5, align 8
  %45 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %46 = icmp eq %struct.demangle_component* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %69

48:                                               ; preds = %34
  br label %56

49:                                               ; preds = %18
  %50 = load %struct.d_info*, %struct.d_info** %3, align 8
  %51 = call %struct.demangle_component* @d_expression(%struct.d_info* %50)
  store %struct.demangle_component* %51, %struct.demangle_component** %5, align 8
  %52 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %53 = icmp eq %struct.demangle_component* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %69

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %48
  br label %57

57:                                               ; preds = %56, %17
  %58 = load %struct.d_info*, %struct.d_info** %3, align 8
  %59 = call i32 @d_check_char(%struct.d_info* %58, i8 signext 95)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %69

62:                                               ; preds = %57
  %63 = load %struct.d_info*, %struct.d_info** %3, align 8
  %64 = load i32, i32* @DEMANGLE_COMPONENT_ARRAY_TYPE, align 4
  %65 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %66 = load %struct.d_info*, %struct.d_info** %3, align 8
  %67 = call i32 @cplus_demangle_type(%struct.d_info* %66)
  %68 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %63, i32 %64, %struct.demangle_component* %65, i32 %67)
  store %struct.demangle_component* %68, %struct.demangle_component** %2, align 8
  br label %69

69:                                               ; preds = %62, %61, %54, %47, %10
  %70 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %70
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i64 @IS_DIGIT(i8 signext) #1

declare dso_local i8* @d_str(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_make_name(%struct.d_info*, i8*, i32) #1

declare dso_local %struct.demangle_component* @d_expression(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, i32) #1

declare dso_local i32 @cplus_demangle_type(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
