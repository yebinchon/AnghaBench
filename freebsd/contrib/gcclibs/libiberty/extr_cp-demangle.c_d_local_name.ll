; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_local_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_local_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_LOCAL_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"string literal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_local_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_local_name(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %6 = load %struct.d_info*, %struct.d_info** %3, align 8
  %7 = call i32 @d_check_char(%struct.d_info* %6, i8 signext 90)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %49

10:                                               ; preds = %1
  %11 = load %struct.d_info*, %struct.d_info** %3, align 8
  %12 = call %struct.demangle_component* @d_encoding(%struct.d_info* %11, i32 0)
  store %struct.demangle_component* %12, %struct.demangle_component** %4, align 8
  %13 = load %struct.d_info*, %struct.d_info** %3, align 8
  %14 = call i32 @d_check_char(%struct.d_info* %13, i8 signext 69)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %49

17:                                               ; preds = %10
  %18 = load %struct.d_info*, %struct.d_info** %3, align 8
  %19 = call signext i8 @d_peek_char(%struct.d_info* %18)
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 115
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.d_info*, %struct.d_info** %3, align 8
  %24 = call i32 @d_advance(%struct.d_info* %23, i32 1)
  %25 = load %struct.d_info*, %struct.d_info** %3, align 8
  %26 = call i32 @d_discriminator(%struct.d_info* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %49

29:                                               ; preds = %22
  %30 = load %struct.d_info*, %struct.d_info** %3, align 8
  %31 = load i32, i32* @DEMANGLE_COMPONENT_LOCAL_NAME, align 4
  %32 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %33 = load %struct.d_info*, %struct.d_info** %3, align 8
  %34 = call %struct.demangle_component* @d_make_name(%struct.d_info* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 14)
  %35 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %30, i32 %31, %struct.demangle_component* %32, %struct.demangle_component* %34)
  store %struct.demangle_component* %35, %struct.demangle_component** %2, align 8
  br label %49

36:                                               ; preds = %17
  %37 = load %struct.d_info*, %struct.d_info** %3, align 8
  %38 = call %struct.demangle_component* @d_name(%struct.d_info* %37)
  store %struct.demangle_component* %38, %struct.demangle_component** %5, align 8
  %39 = load %struct.d_info*, %struct.d_info** %3, align 8
  %40 = call i32 @d_discriminator(%struct.d_info* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %49

43:                                               ; preds = %36
  %44 = load %struct.d_info*, %struct.d_info** %3, align 8
  %45 = load i32, i32* @DEMANGLE_COMPONENT_LOCAL_NAME, align 4
  %46 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %47 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %48 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %44, i32 %45, %struct.demangle_component* %46, %struct.demangle_component* %47)
  store %struct.demangle_component* %48, %struct.demangle_component** %2, align 8
  br label %49

49:                                               ; preds = %43, %42, %29, %28, %16, %9
  %50 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %50
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_encoding(%struct.d_info*, i32) #1

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local i32 @d_discriminator(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_make_name(%struct.d_info*, i8*, i32) #1

declare dso_local %struct.demangle_component* @d_name(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
