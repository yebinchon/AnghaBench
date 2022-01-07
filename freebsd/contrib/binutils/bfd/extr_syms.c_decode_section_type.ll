; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_syms.c_decode_section_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_syms.c_decode_section_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_section = type { i32 }

@SEC_CODE = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_SMALL_DATA = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_DEBUGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.bfd_section*)* @decode_section_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @decode_section_type(%struct.bfd_section* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.bfd_section*, align 8
  store %struct.bfd_section* %0, %struct.bfd_section** %3, align 8
  %4 = load %struct.bfd_section*, %struct.bfd_section** %3, align 8
  %5 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SEC_CODE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8 116, i8* %2, align 1
  br label %75

11:                                               ; preds = %1
  %12 = load %struct.bfd_section*, %struct.bfd_section** %3, align 8
  %13 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SEC_DATA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %11
  %19 = load %struct.bfd_section*, %struct.bfd_section** %3, align 8
  %20 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SEC_READONLY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i8 114, i8* %2, align 1
  br label %75

26:                                               ; preds = %18
  %27 = load %struct.bfd_section*, %struct.bfd_section** %3, align 8
  %28 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SEC_SMALL_DATA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i8 103, i8* %2, align 1
  br label %75

34:                                               ; preds = %26
  store i8 100, i8* %2, align 1
  br label %75

35:                                               ; preds = %11
  %36 = load %struct.bfd_section*, %struct.bfd_section** %3, align 8
  %37 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.bfd_section*, %struct.bfd_section** %3, align 8
  %44 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SEC_SMALL_DATA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i8 115, i8* %2, align 1
  br label %75

50:                                               ; preds = %42
  store i8 98, i8* %2, align 1
  br label %75

51:                                               ; preds = %35
  %52 = load %struct.bfd_section*, %struct.bfd_section** %3, align 8
  %53 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SEC_DEBUGGING, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i8 78, i8* %2, align 1
  br label %75

59:                                               ; preds = %51
  %60 = load %struct.bfd_section*, %struct.bfd_section** %3, align 8
  %61 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.bfd_section*, %struct.bfd_section** %3, align 8
  %68 = getelementptr inbounds %struct.bfd_section, %struct.bfd_section* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SEC_READONLY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i8 110, i8* %2, align 1
  br label %75

74:                                               ; preds = %66, %59
  store i8 63, i8* %2, align 1
  br label %75

75:                                               ; preds = %74, %73, %58, %50, %49, %34, %33, %25, %10
  %76 = load i8, i8* %2, align 1
  ret i8 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
