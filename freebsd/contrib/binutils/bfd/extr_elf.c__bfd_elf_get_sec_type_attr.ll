; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_get_sec_type_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_get_sec_type_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_elf_special_section = type opaque
%struct.TYPE_3__ = type { i8*, i32 }
%struct.elf_backend_data = type { %struct.bfd_elf_special_section* }

@special_sections = common dso_local global %struct.bfd_elf_special_section** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_elf_special_section* @_bfd_elf_get_sec_type_attr(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.bfd_elf_special_section*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfd_elf_special_section*, align 8
  %8 = alloca %struct.elf_backend_data*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.bfd_elf_special_section* null, %struct.bfd_elf_special_section** %3, align 8
  br label %79

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %15)
  store %struct.elf_backend_data* %16, %struct.elf_backend_data** %8, align 8
  %17 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %18 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %17, i32 0, i32 0
  %19 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %18, align 8
  store %struct.bfd_elf_special_section* %19, %struct.bfd_elf_special_section** %7, align 8
  %20 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %7, align 8
  %21 = icmp ne %struct.bfd_elf_special_section* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %14
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %27 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %26, i32 0, i32 0
  %28 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.bfd_elf_special_section* @_bfd_elf_get_special_section(i8* %25, %struct.bfd_elf_special_section* %28, i32 %31)
  store %struct.bfd_elf_special_section* %32, %struct.bfd_elf_special_section** %7, align 8
  %33 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %7, align 8
  %34 = icmp ne %struct.bfd_elf_special_section* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %7, align 8
  store %struct.bfd_elf_special_section* %36, %struct.bfd_elf_special_section** %3, align 8
  br label %79

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %14
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 46
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store %struct.bfd_elf_special_section* null, %struct.bfd_elf_special_section** %3, align 8
  br label %79

47:                                               ; preds = %38
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = sub nsw i32 %53, 98
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %58, 18
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %47
  store %struct.bfd_elf_special_section* null, %struct.bfd_elf_special_section** %3, align 8
  br label %79

61:                                               ; preds = %57
  %62 = load %struct.bfd_elf_special_section**, %struct.bfd_elf_special_section*** @special_sections, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %62, i64 %64
  %66 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %65, align 8
  store %struct.bfd_elf_special_section* %66, %struct.bfd_elf_special_section** %7, align 8
  %67 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %7, align 8
  %68 = icmp eq %struct.bfd_elf_special_section* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store %struct.bfd_elf_special_section* null, %struct.bfd_elf_special_section** %3, align 8
  br label %79

70:                                               ; preds = %61
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %7, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.bfd_elf_special_section* @_bfd_elf_get_special_section(i8* %73, %struct.bfd_elf_special_section* %74, i32 %77)
  store %struct.bfd_elf_special_section* %78, %struct.bfd_elf_special_section** %3, align 8
  br label %79

79:                                               ; preds = %70, %69, %60, %46, %35, %13
  %80 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %3, align 8
  ret %struct.bfd_elf_special_section* %80
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local %struct.bfd_elf_special_section* @_bfd_elf_get_special_section(i8*, %struct.bfd_elf_special_section*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
