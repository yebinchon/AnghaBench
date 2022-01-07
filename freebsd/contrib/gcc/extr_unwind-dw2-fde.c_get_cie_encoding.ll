; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_get_cie_encoding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_get_cie_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf_cie = type { i8*, i32 }

@DW_EH_PE_absptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwarf_cie*)* @get_cie_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cie_encoding(%struct.dwarf_cie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwarf_cie*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwarf_cie* %0, %struct.dwarf_cie** %3, align 8
  %9 = load %struct.dwarf_cie*, %struct.dwarf_cie** %3, align 8
  %10 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 122
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @DW_EH_PE_absptr, align 4
  store i32 %18, i32* %2, align 4
  br label %83

19:                                               ; preds = %1
  %20 = load i8*, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @read_uleb128(i8* %26, i32* %7)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @read_sleb128(i8* %28, i32* %8)
  store i8* %29, i8** %5, align 8
  %30 = load %struct.dwarf_cie*, %struct.dwarf_cie** %3, align 8
  %31 = getelementptr inbounds %struct.dwarf_cie, %struct.dwarf_cie* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  br label %40

37:                                               ; preds = %19
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @read_uleb128(i8* %38, i32* %7)
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i8* @read_uleb128(i8* %43, i32* %7)
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %40, %80
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 82
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  store i32 %53, i32* %2, align 4
  br label %83

54:                                               ; preds = %45
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 80
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 127
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = call i8* @read_encoded_value_with_base(i8 zeroext %64, i32 0, i8* %66, i32* %6)
  store i8* %67, i8** %5, align 8
  br label %79

68:                                               ; preds = %54
  %69 = load i8*, i8** %4, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 76
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  br label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @DW_EH_PE_absptr, align 4
  store i32 %77, i32* %2, align 4
  br label %83

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %59
  br label %80

80:                                               ; preds = %79
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %4, align 8
  br label %45

83:                                               ; preds = %76, %50, %17
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @read_uleb128(i8*, i32*) #1

declare dso_local i8* @read_sleb128(i8*, i32*) #1

declare dso_local i8* @read_encoded_value_with_base(i8 zeroext, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
