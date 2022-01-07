; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_set_vfp11_fix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_set_vfp11_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf32_arm_link_hash_table = type { i32 }
%struct.TYPE_3__ = type { i64 }

@Tag_CPU_arch = common dso_local global i64 0, align 8
@TAG_CPU_ARCH_V7 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [88 x i8] c"%B: warning: selected VFP11 erratum workaround is not necessary for target architecture\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_elf32_arm_set_vfp11_fix(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf32_arm_link_hash_table*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %7 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %8 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %7)
  store %struct.elf32_arm_link_hash_table* %8, %struct.elf32_arm_link_hash_table** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_3__* @elf_known_obj_attributes_proc(i32* %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = load i64, i64* @Tag_CPU_arch, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TAG_CPU_ARCH_V7, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %20 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %25 [
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %18, %18
  %23 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %24 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %23, i32 0, i32 0
  store i32 128, i32* %24, align 4
  br label %29

25:                                               ; preds = %18
  %26 = call i32 @_(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @_bfd_error_handler(i32 %26, i32* %27)
  br label %29

29:                                               ; preds = %25, %22
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %32 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %5, align 8
  %37 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %36, i32 0, i32 0
  store i32 128, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38, %29
  ret void
}

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_3__* @elf_known_obj_attributes_proc(i32*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
