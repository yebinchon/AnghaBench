; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_read_tag_string_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_read_tag_string_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dieinfo = type { i32, i32, i64 }
%struct.type = type { i32 }

@current_objfile = common dso_local global i32 0, align 4
@FT_INTEGER = common dso_local global i32 0, align 4
@TYPE_CODE_UNDEF = common dso_local global i64 0, align 8
@DIE_ID = common dso_local global i32 0, align 4
@DIE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dieinfo*)* @read_tag_string_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_tag_string_type(%struct.dieinfo* %0) #0 {
  %2 = alloca %struct.dieinfo*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.dieinfo* %0, %struct.dieinfo** %2, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %9 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %14 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  br label %19

18:                                               ; preds = %1
  store i64 1, i64* %7, align 8
  br label %19

19:                                               ; preds = %18, %12
  %20 = load i32, i32* @current_objfile, align 4
  %21 = load i32, i32* @FT_INTEGER, align 4
  %22 = call %struct.type* @dwarf_fundamental_type(i32 %20, i32 %21)
  store %struct.type* %22, %struct.type** %4, align 8
  %23 = load %struct.type*, %struct.type** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call %struct.type* @create_range_type(%struct.type* null, %struct.type* %23, i64 %24, i64 %25)
  store %struct.type* %26, %struct.type** %5, align 8
  %27 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %28 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.type* @lookup_utype(i32 %29)
  store %struct.type* %30, %struct.type** %3, align 8
  %31 = load %struct.type*, %struct.type** %3, align 8
  %32 = icmp eq %struct.type* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %35 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.type* @alloc_utype(i32 %36, %struct.type* null)
  store %struct.type* %37, %struct.type** %3, align 8
  br label %48

38:                                               ; preds = %19
  %39 = load %struct.type*, %struct.type** %3, align 8
  %40 = call i64 @TYPE_CODE(%struct.type* %39)
  %41 = load i64, i64* @TYPE_CODE_UNDEF, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @DIE_ID, align 4
  %45 = load i32, i32* @DIE_NAME, align 4
  %46 = call i32 @dup_user_type_definition_complaint(i32 %44, i32 %45)
  br label %52

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %33
  %49 = load %struct.type*, %struct.type** %3, align 8
  %50 = load %struct.type*, %struct.type** %5, align 8
  %51 = call %struct.type* @create_string_type(%struct.type* %49, %struct.type* %50)
  store %struct.type* %51, %struct.type** %3, align 8
  br label %52

52:                                               ; preds = %48, %43
  ret void
}

declare dso_local %struct.type* @dwarf_fundamental_type(i32, i32) #1

declare dso_local %struct.type* @create_range_type(%struct.type*, %struct.type*, i64, i64) #1

declare dso_local %struct.type* @lookup_utype(i32) #1

declare dso_local %struct.type* @alloc_utype(i32, %struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @dup_user_type_definition_complaint(i32, i32) #1

declare dso_local %struct.type* @create_string_type(%struct.type*, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
