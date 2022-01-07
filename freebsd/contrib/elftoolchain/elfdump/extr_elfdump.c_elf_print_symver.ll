; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_symver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_symver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i64, i32, %struct.section* }
%struct.section = type { i64, i32 }

@SHT_SUNW_verdef = common dso_local global i64 0, align 8
@SHT_SUNW_verneed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*)* @elf_print_symver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_symver(%struct.elfdump* %0) #0 {
  %2 = alloca %struct.elfdump*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i64, align 8
  store %struct.elfdump* %0, %struct.elfdump** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %50, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %8 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %53

11:                                               ; preds = %5
  %12 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %13 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %12, i32 0, i32 2
  %14 = load %struct.section*, %struct.section** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.section, %struct.section* %14, i64 %15
  store %struct.section* %16, %struct.section** %3, align 8
  %17 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %18 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %17, i32 0, i32 1
  %19 = call i32 @STAILQ_EMPTY(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %11
  %22 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %23 = load %struct.section*, %struct.section** %3, align 8
  %24 = getelementptr inbounds %struct.section, %struct.section* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @find_name(%struct.elfdump* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %50

29:                                               ; preds = %21, %11
  %30 = load %struct.section*, %struct.section** %3, align 8
  %31 = getelementptr inbounds %struct.section, %struct.section* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SHT_SUNW_verdef, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %37 = load %struct.section*, %struct.section** %3, align 8
  %38 = call i32 @elf_print_verdef(%struct.elfdump* %36, %struct.section* %37)
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.section*, %struct.section** %3, align 8
  %41 = getelementptr inbounds %struct.section, %struct.section* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SHT_SUNW_verneed, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %47 = load %struct.section*, %struct.section** %3, align 8
  %48 = call i32 @elf_print_verneed(%struct.elfdump* %46, %struct.section* %47)
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %4, align 8
  br label %5

53:                                               ; preds = %5
  ret void
}

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @find_name(%struct.elfdump*, i32) #1

declare dso_local i32 @elf_print_verdef(%struct.elfdump*, %struct.section*) #1

declare dso_local i32 @elf_print_verneed(%struct.elfdump*, %struct.section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
