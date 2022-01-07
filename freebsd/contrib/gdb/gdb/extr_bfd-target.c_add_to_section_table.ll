; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_bfd-target.c_add_to_section_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_bfd-target.c_add_to_section_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd = type { i32 }
%struct.bfd_section = type { i32 }
%struct.section_closure = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, %struct.bfd_section*, %struct.bfd* }

@SEC_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfd*, %struct.bfd_section*, i8*)* @add_to_section_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_section_table(%struct.bfd* %0, %struct.bfd_section* %1, i8* %2) #0 {
  %4 = alloca %struct.bfd*, align 8
  %5 = alloca %struct.bfd_section*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.section_closure*, align 8
  %8 = alloca i32, align 4
  store %struct.bfd* %0, %struct.bfd** %4, align 8
  store %struct.bfd_section* %1, %struct.bfd_section** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.section_closure*
  store %struct.section_closure* %10, %struct.section_closure** %7, align 8
  %11 = load %struct.bfd*, %struct.bfd** %4, align 8
  %12 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %13 = call i32 @bfd_get_section_flags(%struct.bfd* %11, %struct.bfd_section* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @SEC_ALLOC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %60

19:                                               ; preds = %3
  %20 = load %struct.bfd*, %struct.bfd** %4, align 8
  %21 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %22 = call i64 @bfd_section_size(%struct.bfd* %20, %struct.bfd_section* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %60

25:                                               ; preds = %19
  %26 = load %struct.bfd*, %struct.bfd** %4, align 8
  %27 = load %struct.section_closure*, %struct.section_closure** %7, align 8
  %28 = getelementptr inbounds %struct.section_closure, %struct.section_closure* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store %struct.bfd* %26, %struct.bfd** %30, align 8
  %31 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %32 = load %struct.section_closure*, %struct.section_closure** %7, align 8
  %33 = getelementptr inbounds %struct.section_closure, %struct.section_closure* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store %struct.bfd_section* %31, %struct.bfd_section** %35, align 8
  %36 = load %struct.bfd*, %struct.bfd** %4, align 8
  %37 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %38 = call i64 @bfd_section_vma(%struct.bfd* %36, %struct.bfd_section* %37)
  %39 = load %struct.section_closure*, %struct.section_closure** %7, align 8
  %40 = getelementptr inbounds %struct.section_closure, %struct.section_closure* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %38, i64* %42, align 8
  %43 = load %struct.section_closure*, %struct.section_closure** %7, align 8
  %44 = getelementptr inbounds %struct.section_closure, %struct.section_closure* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.bfd*, %struct.bfd** %4, align 8
  %49 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %50 = call i64 @bfd_section_size(%struct.bfd* %48, %struct.bfd_section* %49)
  %51 = add nsw i64 %47, %50
  %52 = load %struct.section_closure*, %struct.section_closure** %7, align 8
  %53 = getelementptr inbounds %struct.section_closure, %struct.section_closure* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i64 %51, i64* %55, align 8
  %56 = load %struct.section_closure*, %struct.section_closure** %7, align 8
  %57 = getelementptr inbounds %struct.section_closure, %struct.section_closure* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 1
  store %struct.TYPE_2__* %59, %struct.TYPE_2__** %57, align 8
  br label %60

60:                                               ; preds = %25, %24, %18
  ret void
}

declare dso_local i32 @bfd_get_section_flags(%struct.bfd*, %struct.bfd_section*) #1

declare dso_local i64 @bfd_section_size(%struct.bfd*, %struct.bfd_section*) #1

declare dso_local i64 @bfd_section_vma(%struct.bfd*, %struct.bfd_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
