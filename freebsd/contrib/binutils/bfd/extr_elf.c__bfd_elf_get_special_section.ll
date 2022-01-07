; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_get_special_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_get_special_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_elf_special_section = type { i32, i32, i64, i32* }

@SHT_REL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfd_elf_special_section* @_bfd_elf_get_special_section(i8* %0, %struct.bfd_elf_special_section* %1, i32 %2) #0 {
  %4 = alloca %struct.bfd_elf_special_section*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfd_elf_special_section*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.bfd_elf_special_section* %1, %struct.bfd_elf_special_section** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %127, %3
  %15 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bfd_elf_special_section, %struct.bfd_elf_special_section* %15, i64 %17
  %19 = getelementptr inbounds %struct.bfd_elf_special_section, %struct.bfd_elf_special_section* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %130

22:                                               ; preds = %14
  %23 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bfd_elf_special_section, %struct.bfd_elf_special_section* %23, i64 %25
  %27 = getelementptr inbounds %struct.bfd_elf_special_section, %struct.bfd_elf_special_section* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %127

33:                                               ; preds = %22
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.bfd_elf_special_section, %struct.bfd_elf_special_section* %35, i64 %37
  %39 = getelementptr inbounds %struct.bfd_elf_special_section, %struct.bfd_elf_special_section* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @memcmp(i8* %34, i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %127

45:                                               ; preds = %33
  %46 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.bfd_elf_special_section, %struct.bfd_elf_special_section* %46, i64 %48
  %50 = getelementptr inbounds %struct.bfd_elf_special_section, %struct.bfd_elf_special_section* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %92

54:                                               ; preds = %45
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %127

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 46
  br i1 %73, label %74, label %90

74:                                               ; preds = %66
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, -2
  br i1 %76, label %89, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.bfd_elf_special_section, %struct.bfd_elf_special_section* %81, i64 %83
  %85 = getelementptr inbounds %struct.bfd_elf_special_section, %struct.bfd_elf_special_section* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SHT_REL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80, %74
  br label %127

90:                                               ; preds = %80, %77, %66
  br label %91

91:                                               ; preds = %90, %54
  br label %122

92:                                               ; preds = %45
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %94, %95
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %127

99:                                               ; preds = %92
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 0, %105
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.bfd_elf_special_section, %struct.bfd_elf_special_section* %108, i64 %110
  %112 = getelementptr inbounds %struct.bfd_elf_special_section, %struct.bfd_elf_special_section* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %10, align 4
  %118 = call i64 @memcmp(i8* %107, i32* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %99
  br label %127

121:                                              ; preds = %99
  br label %122

122:                                              ; preds = %121, %91
  %123 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %6, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.bfd_elf_special_section, %struct.bfd_elf_special_section* %123, i64 %125
  store %struct.bfd_elf_special_section* %126, %struct.bfd_elf_special_section** %4, align 8
  br label %131

127:                                              ; preds = %120, %98, %89, %65, %44, %32
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %14

130:                                              ; preds = %14
  store %struct.bfd_elf_special_section* null, %struct.bfd_elf_special_section** %4, align 8
  br label %131

131:                                              ; preds = %130, %122
  %132 = load %struct.bfd_elf_special_section*, %struct.bfd_elf_special_section** %4, align 8
  ret %struct.bfd_elf_special_section* %132
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
