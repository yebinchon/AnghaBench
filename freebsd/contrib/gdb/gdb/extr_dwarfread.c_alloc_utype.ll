; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_alloc_utype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_alloc_utype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@dbroff = common dso_local global i32 0, align 4
@utypes = common dso_local global %struct.type** null, align 8
@numutypes = common dso_local global i32 0, align 4
@current_objfile = common dso_local global i32 0, align 4
@FT_INTEGER = common dso_local global i32 0, align 4
@DIE_ID = common dso_local global i32 0, align 4
@DIE_NAME = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"DIE @ 0x%x \22%s\22, internal error: duplicate user type allocation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (i32, %struct.type*)* @alloc_utype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @alloc_utype(i32 %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.type* %1, %struct.type** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @dbroff, align 4
  %9 = sub nsw i32 %7, %8
  %10 = sdiv i32 %9, 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.type**, %struct.type*** @utypes, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.type*, %struct.type** %11, i64 %13
  store %struct.type** %14, %struct.type*** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @numutypes, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @current_objfile, align 4
  %23 = load i32, i32* @FT_INTEGER, align 4
  %24 = call %struct.type* @dwarf_fundamental_type(i32 %22, i32 %23)
  store %struct.type* %24, %struct.type** %4, align 8
  %25 = load i32, i32* @DIE_ID, align 4
  %26 = load i32, i32* @DIE_NAME, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @bad_die_ref_complaint(i32 %25, i32 %26, i32 %27)
  br label %49

29:                                               ; preds = %17
  %30 = load %struct.type**, %struct.type*** %5, align 8
  %31 = load %struct.type*, %struct.type** %30, align 8
  %32 = icmp ne %struct.type* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.type**, %struct.type*** %5, align 8
  %35 = load %struct.type*, %struct.type** %34, align 8
  store %struct.type* %35, %struct.type** %4, align 8
  %36 = load i32, i32* @DIE_ID, align 4
  %37 = load i32, i32* @DIE_NAME, align 4
  %38 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %48

39:                                               ; preds = %29
  %40 = load %struct.type*, %struct.type** %4, align 8
  %41 = icmp eq %struct.type* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @current_objfile, align 4
  %44 = call %struct.type* @alloc_type(i32 %43)
  store %struct.type* %44, %struct.type** %4, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.type*, %struct.type** %4, align 8
  %47 = load %struct.type**, %struct.type*** %5, align 8
  store %struct.type* %46, %struct.type** %47, align 8
  br label %48

48:                                               ; preds = %45, %33
  br label %49

49:                                               ; preds = %48, %21
  %50 = load %struct.type*, %struct.type** %4, align 8
  ret %struct.type* %50
}

declare dso_local %struct.type* @dwarf_fundamental_type(i32, i32) #1

declare dso_local i32 @bad_die_ref_complaint(i32, i32, i32) #1

declare dso_local i32 @complaint(i32*, i8*, i32, i32) #1

declare dso_local %struct.type* @alloc_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
