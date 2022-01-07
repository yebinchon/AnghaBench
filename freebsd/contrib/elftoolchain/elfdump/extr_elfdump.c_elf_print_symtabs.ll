; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_symtabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_symtabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@SHT_SYMTAB = common dso_local global i64 0, align 8
@SHT_DYNSYM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*)* @elf_print_symtabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_symtabs(%struct.elfdump* %0) #0 {
  %2 = alloca %struct.elfdump*, align 8
  %3 = alloca i64, align 8
  store %struct.elfdump* %0, %struct.elfdump** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %51, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %7 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %54

10:                                               ; preds = %4
  %11 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %12 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SHT_SYMTAB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %10
  %21 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %22 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SHT_DYNSYM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %20, %10
  %31 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %32 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %31, i32 0, i32 2
  %33 = call i64 @STAILQ_EMPTY(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %37 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %38 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @find_name(%struct.elfdump* %36, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35, %30
  %47 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @elf_print_symtab(%struct.elfdump* %47, i64 %48)
  br label %50

50:                                               ; preds = %46, %35, %20
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %4

54:                                               ; preds = %4
  ret void
}

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i64 @find_name(%struct.elfdump*, i32) #1

declare dso_local i32 @elf_print_symtab(%struct.elfdump*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
