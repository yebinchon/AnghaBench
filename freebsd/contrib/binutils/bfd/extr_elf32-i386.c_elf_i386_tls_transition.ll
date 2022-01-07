; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_elf_i386_tls_transition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-i386.c_elf_i386_tls_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }

@R_386_TLS_LE_32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_link_info*, i32, i32)* @elf_i386_tls_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_i386_tls_transition(%struct.bfd_link_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bfd_link_info* %0, %struct.bfd_link_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %9 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %4, align 4
  br label %33

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %31 [
    i32 133, label %16
    i32 132, label %16
    i32 134, label %16
    i32 129, label %16
    i32 130, label %22
    i32 131, label %22
    i32 128, label %29
  ]

16:                                               ; preds = %14, %14, %14, %14
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @R_386_TLS_LE_32, align 4
  store i32 %20, i32* %4, align 4
  br label %33

21:                                               ; preds = %16
  store i32 129, i32* %4, align 4
  br label %33

22:                                               ; preds = %14, %14
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @R_386_TLS_LE_32, align 4
  store i32 %26, i32* %4, align 4
  br label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %14
  %30 = load i32, i32* @R_386_TLS_LE_32, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %14
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %29, %27, %25, %21, %19, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
