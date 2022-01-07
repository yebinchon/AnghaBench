; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_print_cast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_print_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { %struct.d_print_mod*, %struct.d_print_template* }
%struct.d_print_mod = type { i32 }
%struct.d_print_template = type { %struct.d_print_template*, %struct.demangle_component* }
%struct.demangle_component = type { i64 }

@DEMANGLE_COMPONENT_TEMPLATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, %struct.demangle_component*)* @d_print_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_cast(%struct.d_print_info* %0, %struct.demangle_component* %1) #0 {
  %3 = alloca %struct.d_print_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.d_print_mod*, align 8
  %6 = alloca %struct.d_print_template, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %3, align 8
  store %struct.demangle_component* %1, %struct.demangle_component** %4, align 8
  %7 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %8 = call %struct.demangle_component* @d_left(%struct.demangle_component* %7)
  %9 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DEMANGLE_COMPONENT_TEMPLATE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %15 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %16 = call %struct.demangle_component* @d_left(%struct.demangle_component* %15)
  %17 = call i32 @d_print_comp(%struct.d_print_info* %14, %struct.demangle_component* %16)
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %20 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %19, i32 0, i32 0
  %21 = load %struct.d_print_mod*, %struct.d_print_mod** %20, align 8
  store %struct.d_print_mod* %21, %struct.d_print_mod** %5, align 8
  %22 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %23 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %22, i32 0, i32 0
  store %struct.d_print_mod* null, %struct.d_print_mod** %23, align 8
  %24 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %25 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %24, i32 0, i32 1
  %26 = load %struct.d_print_template*, %struct.d_print_template** %25, align 8
  %27 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %6, i32 0, i32 0
  store %struct.d_print_template* %26, %struct.d_print_template** %27, align 8
  %28 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %29 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %28, i32 0, i32 1
  store %struct.d_print_template* %6, %struct.d_print_template** %29, align 8
  %30 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %31 = call %struct.demangle_component* @d_left(%struct.demangle_component* %30)
  %32 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %6, i32 0, i32 1
  store %struct.demangle_component* %31, %struct.demangle_component** %32, align 8
  %33 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %34 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %35 = call %struct.demangle_component* @d_left(%struct.demangle_component* %34)
  %36 = call %struct.demangle_component* @d_left(%struct.demangle_component* %35)
  %37 = call i32 @d_print_comp(%struct.d_print_info* %33, %struct.demangle_component* %36)
  %38 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %6, i32 0, i32 0
  %39 = load %struct.d_print_template*, %struct.d_print_template** %38, align 8
  %40 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %41 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %40, i32 0, i32 1
  store %struct.d_print_template* %39, %struct.d_print_template** %41, align 8
  %42 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %43 = call signext i8 @d_last_char(%struct.d_print_info* %42)
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 60
  br i1 %45, label %46, label %49

46:                                               ; preds = %18
  %47 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %48 = call i32 @d_append_char(%struct.d_print_info* %47, i8 signext 32)
  br label %49

49:                                               ; preds = %46, %18
  %50 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %51 = call i32 @d_append_char(%struct.d_print_info* %50, i8 signext 60)
  %52 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %53 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %54 = call %struct.demangle_component* @d_left(%struct.demangle_component* %53)
  %55 = call %struct.demangle_component* @d_right(%struct.demangle_component* %54)
  %56 = call i32 @d_print_comp(%struct.d_print_info* %52, %struct.demangle_component* %55)
  %57 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %58 = call signext i8 @d_last_char(%struct.d_print_info* %57)
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 62
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %63 = call i32 @d_append_char(%struct.d_print_info* %62, i8 signext 32)
  br label %64

64:                                               ; preds = %61, %49
  %65 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %66 = call i32 @d_append_char(%struct.d_print_info* %65, i8 signext 62)
  %67 = load %struct.d_print_mod*, %struct.d_print_mod** %5, align 8
  %68 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %69 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %68, i32 0, i32 0
  store %struct.d_print_mod* %67, %struct.d_print_mod** %69, align 8
  br label %70

70:                                               ; preds = %64, %13
  ret void
}

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #1

declare dso_local i32 @d_print_comp(%struct.d_print_info*, %struct.demangle_component*) #1

declare dso_local signext i8 @d_last_char(%struct.d_print_info*) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_right(%struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
