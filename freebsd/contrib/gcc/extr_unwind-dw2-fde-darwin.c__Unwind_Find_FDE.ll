; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde-darwin.c__Unwind_Find_FDE.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde-darwin.c__Unwind_Find_FDE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf_eh_bases = type { i32 }
%struct.km_object_info = type { i32, i32 }

@KEYMGR_GCC3_DW2_OBJ_LIST = common dso_local global i32 0, align 4
@seen_objects = common dso_local global i32 0, align 4
@unseen_objects = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_Unwind_Find_FDE(i8* %0, %struct.dwarf_eh_bases* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dwarf_eh_bases*, align 8
  %5 = alloca %struct.km_object_info*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dwarf_eh_bases* %1, %struct.dwarf_eh_bases** %4, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* @KEYMGR_GCC3_DW2_OBJ_LIST, align 4
  %8 = call %struct.km_object_info* @_keymgr_get_and_lock_processwide_ptr(i32 %7)
  store %struct.km_object_info* %8, %struct.km_object_info** %5, align 8
  %9 = load %struct.km_object_info*, %struct.km_object_info** %5, align 8
  %10 = icmp ne %struct.km_object_info* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call %struct.km_object_info* @calloc(i32 1, i32 8)
  store %struct.km_object_info* %12, %struct.km_object_info** %5, align 8
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.km_object_info*, %struct.km_object_info** %5, align 8
  %15 = icmp ne %struct.km_object_info* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.km_object_info*, %struct.km_object_info** %5, align 8
  %18 = getelementptr inbounds %struct.km_object_info, %struct.km_object_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @seen_objects, align 4
  %20 = load %struct.km_object_info*, %struct.km_object_info** %5, align 8
  %21 = getelementptr inbounds %struct.km_object_info, %struct.km_object_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* @unseen_objects, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.dwarf_eh_bases*, %struct.dwarf_eh_bases** %4, align 8
  %25 = call i32* @_Unwind_Find_registered_FDE(i8* %23, %struct.dwarf_eh_bases* %24)
  store i32* %25, i32** %6, align 8
  br label %26

26:                                               ; preds = %16, %13
  %27 = load i32*, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.dwarf_eh_bases*, %struct.dwarf_eh_bases** %4, align 8
  %32 = load %struct.km_object_info*, %struct.km_object_info** %5, align 8
  %33 = icmp eq %struct.km_object_info* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32* @examine_objects(i8* %30, %struct.dwarf_eh_bases* %31, i32 %34)
  store i32* %35, i32** %6, align 8
  br label %36

36:                                               ; preds = %29, %26
  %37 = load %struct.km_object_info*, %struct.km_object_info** %5, align 8
  %38 = icmp ne %struct.km_object_info* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* @seen_objects, align 4
  %41 = load %struct.km_object_info*, %struct.km_object_info** %5, align 8
  %42 = getelementptr inbounds %struct.km_object_info, %struct.km_object_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @unseen_objects, align 4
  %44 = load %struct.km_object_info*, %struct.km_object_info** %5, align 8
  %45 = getelementptr inbounds %struct.km_object_info, %struct.km_object_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i32, i32* @KEYMGR_GCC3_DW2_OBJ_LIST, align 4
  %48 = load %struct.km_object_info*, %struct.km_object_info** %5, align 8
  %49 = call i32 @_keymgr_set_and_unlock_processwide_ptr(i32 %47, %struct.km_object_info* %48)
  %50 = load i32*, i32** %6, align 8
  ret i32* %50
}

declare dso_local %struct.km_object_info* @_keymgr_get_and_lock_processwide_ptr(i32) #1

declare dso_local %struct.km_object_info* @calloc(i32, i32) #1

declare dso_local i32* @_Unwind_Find_registered_FDE(i8*, %struct.dwarf_eh_bases*) #1

declare dso_local i32* @examine_objects(i8*, %struct.dwarf_eh_bases*, i32) #1

declare dso_local i32 @_keymgr_set_and_unlock_processwide_ptr(i32, %struct.km_object_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
