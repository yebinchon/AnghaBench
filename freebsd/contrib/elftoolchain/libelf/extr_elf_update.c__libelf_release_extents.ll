; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_update.c__libelf_release_extents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_update.c__libelf_release_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Elf_Extent_List = type { i32 }
%struct._Elf_Extent = type { i32 }

@ex_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._Elf_Extent_List*)* @_libelf_release_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_libelf_release_extents(%struct._Elf_Extent_List* %0) #0 {
  %2 = alloca %struct._Elf_Extent_List*, align 8
  %3 = alloca %struct._Elf_Extent*, align 8
  store %struct._Elf_Extent_List* %0, %struct._Elf_Extent_List** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct._Elf_Extent_List*, %struct._Elf_Extent_List** %2, align 8
  %6 = call %struct._Elf_Extent* @SLIST_FIRST(%struct._Elf_Extent_List* %5)
  store %struct._Elf_Extent* %6, %struct._Elf_Extent** %3, align 8
  %7 = icmp ne %struct._Elf_Extent* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load %struct._Elf_Extent_List*, %struct._Elf_Extent_List** %2, align 8
  %10 = load i32, i32* @ex_next, align 4
  %11 = call i32 @SLIST_REMOVE_HEAD(%struct._Elf_Extent_List* %9, i32 %10)
  %12 = load %struct._Elf_Extent*, %struct._Elf_Extent** %3, align 8
  %13 = call i32 @free(%struct._Elf_Extent* %12)
  br label %4

14:                                               ; preds = %4
  ret void
}

declare dso_local %struct._Elf_Extent* @SLIST_FIRST(%struct._Elf_Extent_List*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(%struct._Elf_Extent_List*, i32) #1

declare dso_local i32 @free(%struct._Elf_Extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
