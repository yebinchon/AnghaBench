; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_blockvector_for_pc_sect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_block.c_blockvector_for_pc_sect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blockvector = type { i32 }
%struct.bfd_section = type { i32 }
%struct.symtab = type { i32 }
%struct.block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.blockvector* @blockvector_for_pc_sect(i64 %0, %struct.bfd_section* %1, i32* %2, %struct.symtab* %3) #0 {
  %5 = alloca %struct.blockvector*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bfd_section*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.symtab*, align 8
  %10 = alloca %struct.block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.blockvector*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.bfd_section* %1, %struct.bfd_section** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.symtab* %3, %struct.symtab** %9, align 8
  %15 = load %struct.symtab*, %struct.symtab** %9, align 8
  %16 = icmp eq %struct.symtab* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.bfd_section*, %struct.bfd_section** %7, align 8
  %20 = call %struct.symtab* @find_pc_sect_symtab(i64 %18, %struct.bfd_section* %19)
  store %struct.symtab* %20, %struct.symtab** %9, align 8
  %21 = load %struct.symtab*, %struct.symtab** %9, align 8
  %22 = icmp eq %struct.symtab* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.blockvector* null, %struct.blockvector** %5, align 8
  br label %85

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %4
  %26 = load %struct.symtab*, %struct.symtab** %9, align 8
  %27 = call %struct.blockvector* @BLOCKVECTOR(%struct.symtab* %26)
  store %struct.blockvector* %27, %struct.blockvector** %14, align 8
  %28 = load %struct.blockvector*, %struct.blockvector** %14, align 8
  %29 = call %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector* %28, i32 0)
  store %struct.block* %29, %struct.block** %10, align 8
  store i32 0, i32* %11, align 4
  %30 = load %struct.blockvector*, %struct.blockvector** %14, align 8
  %31 = call i32 @BLOCKVECTOR_NBLOCKS(%struct.blockvector* %30)
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %60, %25
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 %38, %39
  %41 = add nsw i32 %40, 1
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %13, align 4
  %43 = load %struct.blockvector*, %struct.blockvector** %14, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %44, %45
  %47 = call %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector* %43, i32 %46)
  store %struct.block* %47, %struct.block** %10, align 8
  %48 = load %struct.block*, %struct.block** %10, align 8
  %49 = call i64 @BLOCK_START(%struct.block* %48)
  %50 = load i64, i64* %6, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %37
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %60

56:                                               ; preds = %37
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %52
  br label %32

61:                                               ; preds = %32
  br label %62

62:                                               ; preds = %81, %61
  %63 = load i32, i32* %11, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load %struct.blockvector*, %struct.blockvector** %14, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector* %66, i32 %67)
  store %struct.block* %68, %struct.block** %10, align 8
  %69 = load %struct.block*, %struct.block** %10, align 8
  %70 = call i64 @BLOCK_END(%struct.block* %69)
  %71 = load i64, i64* %6, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.blockvector*, %struct.blockvector** %14, align 8
  store %struct.blockvector* %80, %struct.blockvector** %5, align 8
  br label %85

81:                                               ; preds = %65
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %11, align 4
  br label %62

84:                                               ; preds = %62
  store %struct.blockvector* null, %struct.blockvector** %5, align 8
  br label %85

85:                                               ; preds = %84, %79, %23
  %86 = load %struct.blockvector*, %struct.blockvector** %5, align 8
  ret %struct.blockvector* %86
}

declare dso_local %struct.symtab* @find_pc_sect_symtab(i64, %struct.bfd_section*) #1

declare dso_local %struct.blockvector* @BLOCKVECTOR(%struct.symtab*) #1

declare dso_local %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector*, i32) #1

declare dso_local i32 @BLOCKVECTOR_NBLOCKS(%struct.blockvector*) #1

declare dso_local i64 @BLOCK_START(%struct.block*) #1

declare dso_local i64 @BLOCK_END(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
