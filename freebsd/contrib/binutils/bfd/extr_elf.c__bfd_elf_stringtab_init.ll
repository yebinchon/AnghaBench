; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_stringtab_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_stringtab_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_strtab_hash = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_strtab_hash* @_bfd_elf_stringtab_init() #0 {
  %1 = alloca %struct.bfd_strtab_hash*, align 8
  %2 = alloca i64, align 8
  %3 = call %struct.bfd_strtab_hash* (...) @_bfd_stringtab_init()
  store %struct.bfd_strtab_hash* %3, %struct.bfd_strtab_hash** %1, align 8
  %4 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %1, align 8
  %5 = icmp ne %struct.bfd_strtab_hash* %4, null
  br i1 %5, label %6, label %26

6:                                                ; preds = %0
  %7 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %1, align 8
  %8 = load i32, i32* @TRUE, align 4
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i64 @_bfd_stringtab_add(%struct.bfd_strtab_hash* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = load i64, i64* %2, align 8
  %15 = icmp eq i64 %14, -1
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi i1 [ true, %6 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @BFD_ASSERT(i32 %18)
  %20 = load i64, i64* %2, align 8
  %21 = icmp eq i64 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %1, align 8
  %24 = call i32 @_bfd_stringtab_free(%struct.bfd_strtab_hash* %23)
  store %struct.bfd_strtab_hash* null, %struct.bfd_strtab_hash** %1, align 8
  br label %25

25:                                               ; preds = %22, %16
  br label %26

26:                                               ; preds = %25, %0
  %27 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %1, align 8
  ret %struct.bfd_strtab_hash* %27
}

declare dso_local %struct.bfd_strtab_hash* @_bfd_stringtab_init(...) #1

declare dso_local i64 @_bfd_stringtab_add(%struct.bfd_strtab_hash*, i8*, i32, i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @_bfd_stringtab_free(%struct.bfd_strtab_hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
