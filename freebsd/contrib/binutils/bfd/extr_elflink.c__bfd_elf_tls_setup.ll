; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_tls_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c__bfd_elf_tls_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_section = type { i32, i32, %struct.bfd_section* }
%struct.TYPE_4__ = type { %struct.bfd_section* }
%struct.bfd_link_info = type { i32 }
%struct.TYPE_5__ = type { %struct.bfd_section* }

@SEC_THREAD_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_section* @_bfd_elf_tls_setup(%struct.TYPE_4__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  %5 = alloca %struct.bfd_section*, align 8
  %6 = alloca %struct.bfd_section*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.bfd_section*, %struct.bfd_section** %9, align 8
  store %struct.bfd_section* %10, %struct.bfd_section** %5, align 8
  br label %11

11:                                               ; preds = %23, %2
  %12 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %13 = icmp ne %struct.bfd_section* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %16 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %27

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %25 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %24, i32 0, i32 2
  %26 = load %struct.bfd_section*, %struct.bfd_section** %25, align 8
  store %struct.bfd_section* %26, %struct.bfd_section** %5, align 8
  br label %11

27:                                               ; preds = %21, %11
  %28 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  store %struct.bfd_section* %28, %struct.bfd_section** %6, align 8
  br label %29

29:                                               ; preds = %52, %27
  %30 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %31 = icmp ne %struct.bfd_section* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %34 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %32, %29
  %40 = phi i1 [ false, %29 ], [ %38, %32 ]
  br i1 %40, label %41, label %56

41:                                               ; preds = %39
  %42 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %43 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %49 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %41
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %54 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %53, i32 0, i32 2
  %55 = load %struct.bfd_section*, %struct.bfd_section** %54, align 8
  store %struct.bfd_section* %55, %struct.bfd_section** %5, align 8
  br label %29

56:                                               ; preds = %39
  %57 = load %struct.bfd_section*, %struct.bfd_section** %6, align 8
  %58 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %59 = call %struct.TYPE_5__* @elf_hash_table(%struct.bfd_link_info* %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store %struct.bfd_section* %57, %struct.bfd_section** %60, align 8
  %61 = load %struct.bfd_section*, %struct.bfd_section** %6, align 8
  %62 = icmp ne %struct.bfd_section* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.bfd_section*, %struct.bfd_section** %6, align 8
  %66 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.bfd_section*, %struct.bfd_section** %6, align 8
  ret %struct.bfd_section* %68
}

declare dso_local %struct.TYPE_5__* @elf_hash_table(%struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
