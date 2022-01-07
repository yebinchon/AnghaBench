; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_get_bfd_for_interworking.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_elf32_arm_get_bfd_for_interworking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.bfd_link_info = type { i64 }
%struct.elf32_arm_link_hash_table = type { %struct.TYPE_3__* }

@TRUE = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf32_arm_get_bfd_for_interworking(%struct.TYPE_3__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.elf32_arm_link_hash_table*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %7 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %8 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DYNAMIC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BFD_ASSERT(i32 %21)
  %23 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %24 = call %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info* %23)
  store %struct.elf32_arm_link_hash_table* %24, %struct.elf32_arm_link_hash_table** %6, align 8
  %25 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %26 = icmp ne %struct.elf32_arm_link_hash_table* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @BFD_ASSERT(i32 %27)
  %29 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %30 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %13
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %13
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = load %struct.elf32_arm_link_hash_table*, %struct.elf32_arm_link_hash_table** %6, align 8
  %38 = getelementptr inbounds %struct.elf32_arm_link_hash_table, %struct.elf32_arm_link_hash_table* %37, i32 0, i32 0
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %38, align 8
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %33, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local %struct.elf32_arm_link_hash_table* @elf32_arm_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
