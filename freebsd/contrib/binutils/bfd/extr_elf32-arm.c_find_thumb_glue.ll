; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_find_thumb_glue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_find_thumb_glue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { i32 }
%struct.bfd_link_info = type { i32 }
%struct.elf32_arm_link_hash_table = type { i32 }

@THUMB2ARM_GLUE_ENTRY_NAME = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unable to find THUMB glue '%s' for '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elf_link_hash_entry* (%struct.bfd_link_info*, i8*, i8**)* @find_thumb_glue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elf_link_hash_entry* @find_thumb_glue(%struct.bfd_link_info* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.elf_link_hash_entry*, align 8
  %9 = alloca %struct.elf32_arm_link_hash_table*, align 8
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %11 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %10)
  store %struct.elf32_arm_link_hash_table* %11, %struct.elf32_arm_link_hash_table** %9, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i8*, i8** @THUMB2ARM_GLUE_ENTRY_NAME, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = add nsw i64 %13, %15
  %17 = add nsw i64 %16, 1
  %18 = call i8* @bfd_malloc(i64 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @BFD_ASSERT(i8* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** @THUMB2ARM_GLUE_ENTRY_NAME, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @sprintf(i8* %21, i8* %22, i8* %23)
  %25 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %9, align 8
  %26 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %25, i32 0, i32 0
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32* %26, i8* %27, i32 %28, i32 %29, i32 %30)
  store %struct.elf_link_hash_entry* %31, %struct.elf_link_hash_entry** %8, align 8
  %32 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  %33 = icmp eq %struct.elf_link_hash_entry* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load i8**, i8*** %6, align 8
  %36 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @asprintf(i8** %35, i32 %36, i8* %37, i8* %38)
  br label %40

40:                                               ; preds = %34, %3
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %8, align 8
  ret %struct.elf_link_hash_entry* %43
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i8* @bfd_malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @BFD_ASSERT(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local %struct.elf_link_hash_entry* @elf_link_hash_lookup(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @asprintf(i8**, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
