; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_final_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_final_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i8*)* }
%struct.spu_link_hash_table = type { i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"%X%P: stack analysis error: %E\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @spu_elf_final_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_elf_final_link(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.spu_link_hash_table*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %6 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %7 = call %struct.spu_link_hash_table* @spu_hash_table(%struct.bfd_link_info* %6)
  store %struct.spu_link_hash_table* %7, %struct.spu_link_hash_table** %5, align 8
  %8 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %5, align 8
  %9 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %15 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %5, align 8
  %16 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @spu_elf_stack_analysis(i32* %13, %struct.bfd_link_info* %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %22 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i8*)*, i32 (i8*)** %24, align 8
  %26 = call i32 %25(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %20, %12, %2
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %30 = call i32 @bfd_elf_final_link(i32* %28, %struct.bfd_link_info* %29)
  ret i32 %30
}

declare dso_local %struct.spu_link_hash_table* @spu_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @spu_elf_stack_analysis(i32*, %struct.bfd_link_info*, i32) #1

declare dso_local i32 @bfd_elf_final_link(i32*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
