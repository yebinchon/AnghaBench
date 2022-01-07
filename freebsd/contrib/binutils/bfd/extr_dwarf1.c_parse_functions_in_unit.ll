; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf1.c_parse_functions_in_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf1.c_parse_functions_in_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf1_debug = type { i8*, i8*, i32 }
%struct.dwarf1_unit = type { i8* }
%struct.die_info = type { i64, i32, i32, i32, i32 }
%struct.dwarf1_func = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TAG_global_subroutine = common dso_local global i64 0, align 8
@TAG_subroutine = common dso_local global i64 0, align 8
@TAG_inlined_subroutine = common dso_local global i64 0, align 8
@TAG_entry_point = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwarf1_debug*, %struct.dwarf1_unit*)* @parse_functions_in_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_functions_in_unit(%struct.dwarf1_debug* %0, %struct.dwarf1_unit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwarf1_debug*, align 8
  %5 = alloca %struct.dwarf1_unit*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.die_info, align 8
  %8 = alloca %struct.dwarf1_func*, align 8
  store %struct.dwarf1_debug* %0, %struct.dwarf1_debug** %4, align 8
  store %struct.dwarf1_unit* %1, %struct.dwarf1_unit** %5, align 8
  %9 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %5, align 8
  %10 = getelementptr inbounds %struct.dwarf1_unit, %struct.dwarf1_unit* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %86

13:                                               ; preds = %2
  %14 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %5, align 8
  %15 = getelementptr inbounds %struct.dwarf1_unit, %struct.dwarf1_unit* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  br label %17

17:                                               ; preds = %84, %13
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.dwarf1_debug*, %struct.dwarf1_debug** %4, align 8
  %20 = getelementptr inbounds %struct.dwarf1_debug, %struct.dwarf1_debug* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ult i8* %18, %21
  br i1 %22, label %23, label %85

23:                                               ; preds = %17
  %24 = load %struct.dwarf1_debug*, %struct.dwarf1_debug** %4, align 8
  %25 = getelementptr inbounds %struct.dwarf1_debug, %struct.dwarf1_debug* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.dwarf1_debug*, %struct.dwarf1_debug** %4, align 8
  %29 = getelementptr inbounds %struct.dwarf1_debug, %struct.dwarf1_debug* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @parse_die(i32 %26, %struct.die_info* %7, i8* %27, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %3, align 4
  br label %88

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.die_info, %struct.die_info* %7, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TAG_global_subroutine, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.die_info, %struct.die_info* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TAG_subroutine, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.die_info, %struct.die_info* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TAG_inlined_subroutine, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.die_info, %struct.die_info* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TAG_entry_point, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %50, %45, %40, %35
  %56 = load %struct.dwarf1_debug*, %struct.dwarf1_debug** %4, align 8
  %57 = load %struct.dwarf1_unit*, %struct.dwarf1_unit** %5, align 8
  %58 = call %struct.dwarf1_func* @alloc_dwarf1_func(%struct.dwarf1_debug* %56, %struct.dwarf1_unit* %57)
  store %struct.dwarf1_func* %58, %struct.dwarf1_func** %8, align 8
  %59 = getelementptr inbounds %struct.die_info, %struct.die_info* %7, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dwarf1_func*, %struct.dwarf1_func** %8, align 8
  %62 = getelementptr inbounds %struct.dwarf1_func, %struct.dwarf1_func* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.die_info, %struct.die_info* %7, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.dwarf1_func*, %struct.dwarf1_func** %8, align 8
  %66 = getelementptr inbounds %struct.dwarf1_func, %struct.dwarf1_func* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.die_info, %struct.die_info* %7, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dwarf1_func*, %struct.dwarf1_func** %8, align 8
  %70 = getelementptr inbounds %struct.dwarf1_func, %struct.dwarf1_func* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %55, %50
  %72 = getelementptr inbounds %struct.die_info, %struct.die_info* %7, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.dwarf1_debug*, %struct.dwarf1_debug** %4, align 8
  %77 = getelementptr inbounds %struct.dwarf1_debug, %struct.dwarf1_debug* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds %struct.die_info, %struct.die_info* %7, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8* %82, i8** %6, align 8
  br label %84

83:                                               ; preds = %71
  br label %85

84:                                               ; preds = %75
  br label %17

85:                                               ; preds = %83, %17
  br label %86

86:                                               ; preds = %85, %2
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %33
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @parse_die(i32, %struct.die_info*, i8*, i8*) #1

declare dso_local %struct.dwarf1_func* @alloc_dwarf1_func(%struct.dwarf1_debug*, %struct.dwarf1_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
