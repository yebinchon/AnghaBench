; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_got.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_got.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i64, i32, %struct.section* }
%struct.section = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c".got\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*)* @elf_print_got to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_got(%struct.elfdump* %0) #0 {
  %2 = alloca %struct.elfdump*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i64, align 8
  store %struct.elfdump* %0, %struct.elfdump** %2, align 8
  %5 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %6 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %5, i32 0, i32 1
  %7 = call i64 @STAILQ_EMPTY(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %53

10:                                               ; preds = %1
  store %struct.section* null, %struct.section** %3, align 8
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %50, %10
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %14 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %11
  %18 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %19 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %18, i32 0, i32 2
  %20 = load %struct.section*, %struct.section** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.section, %struct.section* %20, i64 %21
  store %struct.section* %22, %struct.section** %3, align 8
  %23 = load %struct.section*, %struct.section** %3, align 8
  %24 = getelementptr inbounds %struct.section, %struct.section* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %17
  %28 = load %struct.section*, %struct.section** %3, align 8
  %29 = getelementptr inbounds %struct.section, %struct.section* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @strncmp(i64 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %27
  %34 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %35 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %34, i32 0, i32 1
  %36 = call i64 @STAILQ_EMPTY(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %40 = load %struct.section*, %struct.section** %3, align 8
  %41 = getelementptr inbounds %struct.section, %struct.section* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @find_name(%struct.elfdump* %39, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38, %33
  %46 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %47 = load %struct.section*, %struct.section** %3, align 8
  %48 = call i32 @elf_print_got_section(%struct.elfdump* %46, %struct.section* %47)
  br label %49

49:                                               ; preds = %45, %38, %27, %17
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %4, align 8
  br label %11

53:                                               ; preds = %9, %11
  ret void
}

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @strncmp(i64, i8*, i32) #1

declare dso_local i64 @find_name(%struct.elfdump*, i64) #1

declare dso_local i32 @elf_print_got_section(%struct.elfdump*, %struct.section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
