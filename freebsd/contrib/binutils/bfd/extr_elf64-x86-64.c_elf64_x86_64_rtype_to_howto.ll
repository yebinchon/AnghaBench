; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_elf64_x86_64_rtype_to_howto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-x86-64.c_elf64_x86_64_rtype_to_howto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@R_X86_64_GNU_VTINHERIT = common dso_local global i64 0, align 8
@R_X86_64_max = common dso_local global i64 0, align 8
@R_X86_64_standard = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"%B: invalid relocation type %d\00", align 1
@R_X86_64_NONE = common dso_local global i32 0, align 4
@R_X86_64_vt_offset = common dso_local global i64 0, align 8
@x86_64_elf_howto_table = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32)* @elf64_x86_64_rtype_to_howto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @elf64_x86_64_rtype_to_howto(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i64, i64* @R_X86_64_GNU_VTINHERIT, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i64, i64* @R_X86_64_max, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp uge i32 %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %10, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i64, i64* @R_X86_64_standard, align 8
  %18 = trunc i64 %17 to i32
  %19 = icmp uge i32 %16, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @_bfd_error_handler(i32 %21, i32* %22, i32 %23)
  %25 = load i32, i32* @R_X86_64_NONE, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %5, align 4
  br label %33

28:                                               ; preds = %10
  %29 = load i32, i32* %4, align 4
  %30 = load i64, i64* @R_X86_64_vt_offset, align 8
  %31 = trunc i64 %30 to i32
  %32 = sub i32 %29, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @x86_64_elf_howto_table, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BFD_ASSERT(i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @x86_64_elf_howto_table, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  ret %struct.TYPE_4__* %47
}

declare dso_local i32 @_bfd_error_handler(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
