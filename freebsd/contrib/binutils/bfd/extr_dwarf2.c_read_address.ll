; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_read_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_read_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comp_unit*, i32*)* @read_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_address(%struct.comp_unit* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comp_unit*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.comp_unit* %0, %struct.comp_unit** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %8 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_2__* @get_elf_backend_data(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %17 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %37 [
    i32 8, label %19
    i32 4, label %25
    i32 2, label %31
  ]

19:                                               ; preds = %15
  %20 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %21 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @bfd_get_signed_64(i32 %22, i32* %23)
  store i32 %24, i32* %3, align 4
  br label %63

25:                                               ; preds = %15
  %26 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %27 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @bfd_get_signed_32(i32 %28, i32* %29)
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %15
  %32 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %33 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @bfd_get_signed_16(i32 %34, i32* %35)
  store i32 %36, i32* %3, align 4
  br label %63

37:                                               ; preds = %15
  %38 = call i32 (...) @abort() #3
  unreachable

39:                                               ; preds = %2
  %40 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %41 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %61 [
    i32 8, label %43
    i32 4, label %49
    i32 2, label %55
  ]

43:                                               ; preds = %39
  %44 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %45 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @bfd_get_64(i32 %46, i32* %47)
  store i32 %48, i32* %3, align 4
  br label %63

49:                                               ; preds = %39
  %50 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %51 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @bfd_get_32(i32 %52, i32* %53)
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %39
  %56 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %57 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @bfd_get_16(i32 %58, i32* %59)
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %39
  %62 = call i32 (...) @abort() #3
  unreachable

63:                                               ; preds = %55, %49, %43, %31, %25, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_2__* @get_elf_backend_data(i32) #1

declare dso_local i32 @bfd_get_signed_64(i32, i32*) #1

declare dso_local i32 @bfd_get_signed_32(i32, i32*) #1

declare dso_local i32 @bfd_get_signed_16(i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @bfd_get_64(i32, i32*) #1

declare dso_local i32 @bfd_get_32(i32, i32*) #1

declare dso_local i32 @bfd_get_16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
