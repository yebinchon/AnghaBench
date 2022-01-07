; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_function_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_function_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { %struct.d_print_mod* }
%struct.demangle_component = type { i32 }
%struct.d_print_mod = type { %struct.TYPE_2__*, i64, %struct.d_print_mod* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, %struct.demangle_component*, %struct.d_print_mod*)* @d_print_function_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_function_type(%struct.d_print_info* %0, %struct.demangle_component* %1, %struct.d_print_mod* %2) #0 {
  %4 = alloca %struct.d_print_info*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca %struct.d_print_mod*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.d_print_mod*, align 8
  %11 = alloca %struct.d_print_mod*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %4, align 8
  store %struct.demangle_component* %1, %struct.demangle_component** %5, align 8
  store %struct.d_print_mod* %2, %struct.d_print_mod** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.d_print_mod*, %struct.d_print_mod** %6, align 8
  store %struct.d_print_mod* %12, %struct.d_print_mod** %10, align 8
  br label %13

13:                                               ; preds = %37, %3
  %14 = load %struct.d_print_mod*, %struct.d_print_mod** %10, align 8
  %15 = icmp ne %struct.d_print_mod* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load %struct.d_print_mod*, %struct.d_print_mod** %10, align 8
  %18 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %41

22:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  %23 = load %struct.d_print_mod*, %struct.d_print_mod** %10, align 8
  %24 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %31 [
    i32 135, label %28
    i32 133, label %28
    i32 132, label %29
    i32 129, label %29
    i32 138, label %29
    i32 130, label %29
    i32 139, label %29
    i32 136, label %29
    i32 134, label %29
    i32 131, label %30
    i32 128, label %30
    i32 137, label %30
  ]

28:                                               ; preds = %22, %22
  store i32 1, i32* %7, align 4
  br label %32

29:                                               ; preds = %22, %22, %22, %22, %22, %22, %22
  store i32 1, i32* %9, align 4
  store i32 1, i32* %7, align 4
  br label %32

30:                                               ; preds = %22, %22, %22
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %30, %29, %28
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %41

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.d_print_mod*, %struct.d_print_mod** %10, align 8
  %39 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %38, i32 0, i32 2
  %40 = load %struct.d_print_mod*, %struct.d_print_mod** %39, align 8
  store %struct.d_print_mod* %40, %struct.d_print_mod** %10, align 8
  br label %13

41:                                               ; preds = %35, %21, %13
  %42 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %43 = call i32* @d_left(%struct.demangle_component* %42)
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %45, %41
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %57 = call signext i8 @d_last_char(%struct.d_print_info* %56)
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 40
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %62 = call signext i8 @d_last_char(%struct.d_print_info* %61)
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 42
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %60, %55
  br label %67

67:                                               ; preds = %66, %52
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %72 = call signext i8 @d_last_char(%struct.d_print_info* %71)
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 32
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %77 = call i32 @d_append_char(%struct.d_print_info* %76, i8 signext 32)
  br label %78

78:                                               ; preds = %75, %70, %67
  %79 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %80 = call i32 @d_append_char(%struct.d_print_info* %79, i8 signext 40)
  br label %81

81:                                               ; preds = %78, %49
  %82 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %83 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %82, i32 0, i32 0
  %84 = load %struct.d_print_mod*, %struct.d_print_mod** %83, align 8
  store %struct.d_print_mod* %84, %struct.d_print_mod** %11, align 8
  %85 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %86 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %85, i32 0, i32 0
  store %struct.d_print_mod* null, %struct.d_print_mod** %86, align 8
  %87 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %88 = load %struct.d_print_mod*, %struct.d_print_mod** %6, align 8
  %89 = call i32 @d_print_mod_list(%struct.d_print_info* %87, %struct.d_print_mod* %88, i32 0)
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %94 = call i32 @d_append_char(%struct.d_print_info* %93, i8 signext 41)
  br label %95

95:                                               ; preds = %92, %81
  %96 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %97 = call i32 @d_append_char(%struct.d_print_info* %96, i8 signext 40)
  %98 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %99 = call i32* @d_right(%struct.demangle_component* %98)
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %103 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %104 = call i32* @d_right(%struct.demangle_component* %103)
  %105 = call i32 @d_print_comp(%struct.d_print_info* %102, i32* %104)
  br label %106

106:                                              ; preds = %101, %95
  %107 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %108 = call i32 @d_append_char(%struct.d_print_info* %107, i8 signext 41)
  %109 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %110 = load %struct.d_print_mod*, %struct.d_print_mod** %6, align 8
  %111 = call i32 @d_print_mod_list(%struct.d_print_info* %109, %struct.d_print_mod* %110, i32 1)
  %112 = load %struct.d_print_mod*, %struct.d_print_mod** %11, align 8
  %113 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %114 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %113, i32 0, i32 0
  store %struct.d_print_mod* %112, %struct.d_print_mod** %114, align 8
  ret void
}

declare dso_local i32* @d_left(%struct.demangle_component*) #1

declare dso_local signext i8 @d_last_char(%struct.d_print_info*) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

declare dso_local i32 @d_print_mod_list(%struct.d_print_info*, %struct.d_print_mod*, i32) #1

declare dso_local i32* @d_right(%struct.demangle_component*) #1

declare dso_local i32 @d_print_comp(%struct.d_print_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
