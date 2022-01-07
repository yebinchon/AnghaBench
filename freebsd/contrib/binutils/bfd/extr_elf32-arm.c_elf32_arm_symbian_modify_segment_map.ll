; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_symbian_modify_segment_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_elf32_arm_symbian_modify_segment_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.elf_segment_map = type { i64, %struct.elf_segment_map* }
%struct.TYPE_2__ = type { %struct.elf_segment_map* }

@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@PT_DYNAMIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*)* @elf32_arm_symbian_modify_segment_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf32_arm_symbian_modify_segment_map(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.elf_segment_map*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32* @bfd_get_section_by_name(i32* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %49

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_2__* @elf_tdata(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.elf_segment_map*, %struct.elf_segment_map** %14, align 8
  store %struct.elf_segment_map* %15, %struct.elf_segment_map** %5, align 8
  br label %16

16:                                               ; preds = %27, %11
  %17 = load %struct.elf_segment_map*, %struct.elf_segment_map** %5, align 8
  %18 = icmp ne %struct.elf_segment_map* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.elf_segment_map*, %struct.elf_segment_map** %5, align 8
  %21 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PT_DYNAMIC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %31

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.elf_segment_map*, %struct.elf_segment_map** %5, align 8
  %29 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %28, i32 0, i32 1
  %30 = load %struct.elf_segment_map*, %struct.elf_segment_map** %29, align 8
  store %struct.elf_segment_map* %30, %struct.elf_segment_map** %5, align 8
  br label %16

31:                                               ; preds = %25, %16
  %32 = load %struct.elf_segment_map*, %struct.elf_segment_map** %5, align 8
  %33 = icmp eq %struct.elf_segment_map* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call %struct.elf_segment_map* @_bfd_elf_make_dynamic_segment(i32* %35, i32* %36)
  store %struct.elf_segment_map* %37, %struct.elf_segment_map** %5, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call %struct.TYPE_2__* @elf_tdata(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.elf_segment_map*, %struct.elf_segment_map** %40, align 8
  %42 = load %struct.elf_segment_map*, %struct.elf_segment_map** %5, align 8
  %43 = getelementptr inbounds %struct.elf_segment_map, %struct.elf_segment_map* %42, i32 0, i32 1
  store %struct.elf_segment_map* %41, %struct.elf_segment_map** %43, align 8
  %44 = load %struct.elf_segment_map*, %struct.elf_segment_map** %5, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = call %struct.TYPE_2__* @elf_tdata(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.elf_segment_map* %44, %struct.elf_segment_map** %47, align 8
  br label %48

48:                                               ; preds = %34, %31
  br label %49

49:                                               ; preds = %48, %2
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %52 = call i32 @elf32_arm_modify_segment_map(i32* %50, %struct.bfd_link_info* %51)
  ret i32 %52
}

declare dso_local i32* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local %struct.TYPE_2__* @elf_tdata(i32*) #1

declare dso_local %struct.elf_segment_map* @_bfd_elf_make_dynamic_segment(i32*, i32*) #1

declare dso_local i32 @elf32_arm_modify_segment_map(i32*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
