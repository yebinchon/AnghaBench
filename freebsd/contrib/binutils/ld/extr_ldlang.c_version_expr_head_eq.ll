; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_version_expr_head_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_version_expr_head_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_elf_version_expr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @version_expr_head_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @version_expr_head_eq(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfd_elf_version_expr*, align 8
  %6 = alloca %struct.bfd_elf_version_expr*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.bfd_elf_version_expr*
  store %struct.bfd_elf_version_expr* %8, %struct.bfd_elf_version_expr** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bfd_elf_version_expr*
  store %struct.bfd_elf_version_expr* %10, %struct.bfd_elf_version_expr** %6, align 8
  %11 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %5, align 8
  %12 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %6, align 8
  %15 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strcmp(i32 %13, i32 %16)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
