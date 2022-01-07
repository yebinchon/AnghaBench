; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_unqualified_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_unqualified_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_OPERATOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_unqualified_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_unqualified_name(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %7 = load %struct.d_info*, %struct.d_info** %3, align 8
  %8 = call signext i8 @d_peek_char(%struct.d_info* %7)
  store i8 %8, i8* %4, align 1
  %9 = load i8, i8* %4, align 1
  %10 = call i64 @IS_DIGIT(i8 signext %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.d_info*, %struct.d_info** %3, align 8
  %14 = call %struct.demangle_component* @d_source_name(%struct.d_info* %13)
  store %struct.demangle_component* %14, %struct.demangle_component** %2, align 8
  br label %80

15:                                               ; preds = %1
  %16 = load i8, i8* %4, align 1
  %17 = call i64 @IS_LOWER(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  %20 = load %struct.d_info*, %struct.d_info** %3, align 8
  %21 = call %struct.demangle_component* @d_operator_name(%struct.d_info* %20)
  store %struct.demangle_component* %21, %struct.demangle_component** %5, align 8
  %22 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %23 = icmp ne %struct.demangle_component* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %26 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DEMANGLE_COMPONENT_OPERATOR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %32 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 9, %38
  %40 = sub i64 %39, 2
  %41 = load %struct.d_info*, %struct.d_info** %3, align 8
  %42 = getelementptr inbounds %struct.d_info, %struct.d_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  br label %47

47:                                               ; preds = %30, %24, %19
  %48 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  store %struct.demangle_component* %48, %struct.demangle_component** %2, align 8
  br label %80

49:                                               ; preds = %15
  %50 = load i8, i8* %4, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 67
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8, i8* %4, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 68
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %49
  %58 = load %struct.d_info*, %struct.d_info** %3, align 8
  %59 = call %struct.demangle_component* @d_ctor_dtor_name(%struct.d_info* %58)
  store %struct.demangle_component* %59, %struct.demangle_component** %2, align 8
  br label %80

60:                                               ; preds = %53
  %61 = load i8, i8* %4, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 76
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load %struct.d_info*, %struct.d_info** %3, align 8
  %66 = call i32 @d_advance(%struct.d_info* %65, i32 1)
  %67 = load %struct.d_info*, %struct.d_info** %3, align 8
  %68 = call %struct.demangle_component* @d_source_name(%struct.d_info* %67)
  store %struct.demangle_component* %68, %struct.demangle_component** %6, align 8
  %69 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %70 = icmp eq %struct.demangle_component* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %80

72:                                               ; preds = %64
  %73 = load %struct.d_info*, %struct.d_info** %3, align 8
  %74 = call i32 @d_discriminator(%struct.d_info* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %80

77:                                               ; preds = %72
  %78 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  store %struct.demangle_component* %78, %struct.demangle_component** %2, align 8
  br label %80

79:                                               ; preds = %60
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %80

80:                                               ; preds = %79, %77, %76, %71, %57, %47, %12
  %81 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %81
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i64 @IS_DIGIT(i8 signext) #1

declare dso_local %struct.demangle_component* @d_source_name(%struct.d_info*) #1

declare dso_local i64 @IS_LOWER(i8 signext) #1

declare dso_local %struct.demangle_component* @d_operator_name(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_ctor_dtor_name(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local i32 @d_discriminator(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
