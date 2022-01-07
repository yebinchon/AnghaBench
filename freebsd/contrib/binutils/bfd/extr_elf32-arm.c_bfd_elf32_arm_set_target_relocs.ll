; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_set_target_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_set_target_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd = type { i32 }
%struct.bfd_link_info = type { i32 }
%struct.elf32_arm_link_hash_table = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"rel\00", align 1
@R_ARM_REL32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@R_ARM_ABS32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got-rel\00", align 1
@R_ARM_GOT_PREL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Invalid TARGET2 relocation type '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_elf32_arm_set_target_relocs(%struct.bfd* %0, %struct.bfd_link_info* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.bfd*, align 8
  %11 = alloca %struct.bfd_link_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.elf32_arm_link_hash_table*, align 8
  store %struct.bfd* %0, %struct.bfd** %10, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load %struct.bfd_link_info*, %struct.bfd_link_info** %11, align 8
  %21 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %20)
  store %struct.elf32_arm_link_hash_table* %21, %struct.elf32_arm_link_hash_table** %19, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %19, align 8
  %24 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i8*, i8** %13, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %9
  %29 = load i32, i32* @R_ARM_REL32, align 4
  %30 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %19, align 8
  %31 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  br label %54

32:                                               ; preds = %9
  %33 = load i8*, i8** %13, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @R_ARM_ABS32, align 4
  %38 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %19, align 8
  %39 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  br label %53

40:                                               ; preds = %32
  %41 = load i8*, i8** %13, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @R_ARM_GOT_PREL, align 4
  %46 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %19, align 8
  %47 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %40
  %49 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @_bfd_error_handler(i32 %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %36
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %19, align 8
  %57 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %19, align 8
  %60 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %19, align 8
  %65 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %19, align 8
  %68 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.bfd*, %struct.bfd** %10, align 8
  %71 = call %struct.TYPE_2__* @elf32_arm_tdata(%struct.bfd* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  ret void
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @_bfd_error_handler(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_2__* @elf32_arm_tdata(%struct.bfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
