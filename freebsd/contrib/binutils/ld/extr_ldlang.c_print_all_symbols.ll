; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_print_all_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_print_all_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_user_section_struct = type { %struct.map_symbol_def*, i64* }
%struct.map_symbol_def = type { i32, %struct.map_symbol_def* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_all_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_all_symbols(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.fat_user_section_struct*, align 8
  %4 = alloca %struct.map_symbol_def*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.fat_user_section_struct* @get_userdata(i32* %5)
  store %struct.fat_user_section_struct* %6, %struct.fat_user_section_struct** %3, align 8
  %7 = load %struct.fat_user_section_struct*, %struct.fat_user_section_struct** %3, align 8
  %8 = icmp ne %struct.fat_user_section_struct* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.fat_user_section_struct*, %struct.fat_user_section_struct** %3, align 8
  %12 = getelementptr inbounds %struct.fat_user_section_struct, %struct.fat_user_section_struct* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.fat_user_section_struct*, %struct.fat_user_section_struct** %3, align 8
  %15 = getelementptr inbounds %struct.fat_user_section_struct, %struct.fat_user_section_struct* %14, i32 0, i32 0
  %16 = load %struct.map_symbol_def*, %struct.map_symbol_def** %15, align 8
  store %struct.map_symbol_def* %16, %struct.map_symbol_def** %4, align 8
  br label %17

17:                                               ; preds = %26, %10
  %18 = load %struct.map_symbol_def*, %struct.map_symbol_def** %4, align 8
  %19 = icmp ne %struct.map_symbol_def* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.map_symbol_def*, %struct.map_symbol_def** %4, align 8
  %22 = getelementptr inbounds %struct.map_symbol_def, %struct.map_symbol_def* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @print_one_symbol(i32 %23, i32* %24)
  br label %26

26:                                               ; preds = %20
  %27 = load %struct.map_symbol_def*, %struct.map_symbol_def** %4, align 8
  %28 = getelementptr inbounds %struct.map_symbol_def, %struct.map_symbol_def* %27, i32 0, i32 1
  %29 = load %struct.map_symbol_def*, %struct.map_symbol_def** %28, align 8
  store %struct.map_symbol_def* %29, %struct.map_symbol_def** %4, align 8
  br label %17

30:                                               ; preds = %9, %17
  ret void
}

declare dso_local %struct.fat_user_section_struct* @get_userdata(i32*) #1

declare dso_local i32 @print_one_symbol(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
