; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c_sparc_elf_tls_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c_sparc_elf_tls_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.TYPE_2__ = type { i32 }

@R_SPARC_REV32 = common dso_local global i32 0, align 4
@R_SPARC_TLS_LE_HIX22 = common dso_local global i32 0, align 4
@R_SPARC_TLS_LE_LOX10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, i32*, i32, i32)* @sparc_elf_tls_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_elf_tls_transition(%struct.bfd_link_info* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @ABI_64_P(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 133
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.TYPE_2__* @_bfd_sparc_elf_tdata(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @R_SPARC_REV32, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %16, %13, %4
  %25 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %26 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %5, align 4
  br label %65

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %63 [
    i32 133, label %33
    i32 132, label %39
    i32 131, label %45
    i32 130, label %52
    i32 129, label %59
    i32 128, label %61
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @R_SPARC_TLS_LE_HIX22, align 4
  store i32 %37, i32* %5, align 4
  br label %65

38:                                               ; preds = %33
  store i32 131, i32* %5, align 4
  br label %65

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @R_SPARC_TLS_LE_LOX10, align 4
  store i32 %43, i32* %5, align 4
  br label %65

44:                                               ; preds = %39
  store i32 130, i32* %5, align 4
  br label %65

45:                                               ; preds = %31
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @R_SPARC_TLS_LE_HIX22, align 4
  store i32 %49, i32* %5, align 4
  br label %65

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %5, align 4
  br label %65

52:                                               ; preds = %31
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @R_SPARC_TLS_LE_LOX10, align 4
  store i32 %56, i32* %5, align 4
  br label %65

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %5, align 4
  br label %65

59:                                               ; preds = %31
  %60 = load i32, i32* @R_SPARC_TLS_LE_HIX22, align 4
  store i32 %60, i32* %5, align 4
  br label %65

61:                                               ; preds = %31
  %62 = load i32, i32* @R_SPARC_TLS_LE_LOX10, align 4
  store i32 %62, i32* %5, align 4
  br label %65

63:                                               ; preds = %31
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %61, %59, %57, %55, %50, %48, %44, %42, %38, %36, %29
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @ABI_64_P(i32*) #1

declare dso_local %struct.TYPE_2__* @_bfd_sparc_elf_tdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
