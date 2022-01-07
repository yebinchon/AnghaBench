; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_section_from_bfd_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_section_from_bfd_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_section = type { i32, %struct.bfd_section* }
%struct.TYPE_3__ = type { %struct.bfd_section* }

@N_ABS = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global %struct.bfd_section* null, align 8
@N_UNDEF = common dso_local global i32 0, align 4
@bfd_und_section_ptr = common dso_local global %struct.bfd_section* null, align 8
@N_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_section* @coff_section_from_bfd_index(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.bfd_section*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfd_section*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.bfd_section*, %struct.bfd_section** %8, align 8
  store %struct.bfd_section* %9, %struct.bfd_section** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @N_ABS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.bfd_section*, %struct.bfd_section** @bfd_abs_section_ptr, align 8
  store %struct.bfd_section* %14, %struct.bfd_section** %3, align 8
  br label %45

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @N_UNDEF, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load %struct.bfd_section*, %struct.bfd_section** @bfd_und_section_ptr, align 8
  store %struct.bfd_section* %20, %struct.bfd_section** %3, align 8
  br label %45

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @N_DEBUG, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load %struct.bfd_section*, %struct.bfd_section** @bfd_abs_section_ptr, align 8
  store %struct.bfd_section* %26, %struct.bfd_section** %3, align 8
  br label %45

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %39, %27
  %29 = load %struct.bfd_section*, %struct.bfd_section** %6, align 8
  %30 = icmp ne %struct.bfd_section* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.bfd_section*, %struct.bfd_section** %6, align 8
  %33 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.bfd_section*, %struct.bfd_section** %6, align 8
  store %struct.bfd_section* %38, %struct.bfd_section** %3, align 8
  br label %45

39:                                               ; preds = %31
  %40 = load %struct.bfd_section*, %struct.bfd_section** %6, align 8
  %41 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %40, i32 0, i32 1
  %42 = load %struct.bfd_section*, %struct.bfd_section** %41, align 8
  store %struct.bfd_section* %42, %struct.bfd_section** %6, align 8
  br label %28

43:                                               ; preds = %28
  %44 = load %struct.bfd_section*, %struct.bfd_section** @bfd_und_section_ptr, align 8
  store %struct.bfd_section* %44, %struct.bfd_section** %3, align 8
  br label %45

45:                                               ; preds = %43, %37, %25, %19, %13
  %46 = load %struct.bfd_section*, %struct.bfd_section** %3, align 8
  ret %struct.bfd_section* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
