; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_ia64_target_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_ia64_target_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@OUTPUT_FLAVOR = common dso_local global i64 0, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EF_IA_64_BE = common dso_local global i32 0, align 4
@EF_IA_64_ABI64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"elf64-ia64-big\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"elf32-ia64-big\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"elf64-ia64-little\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"elf32-ia64-little\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"unknown-format\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ia64_target_format() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @OUTPUT_FLAVOR, align 8
  %3 = load i64, i64* @bfd_target_elf_flavour, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %24

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @md, i32 0, i32 0), align 4
  %7 = load i32, i32* @EF_IA_64_BE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @md, i32 0, i32 0), align 4
  %12 = load i32, i32* @EF_IA_64_ABI64, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %25

16:                                               ; preds = %10
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %25

17:                                               ; preds = %5
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @md, i32 0, i32 0), align 4
  %19 = load i32, i32* @EF_IA_64_ABI64, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %25

23:                                               ; preds = %17
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %25

24:                                               ; preds = %0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %25

25:                                               ; preds = %24, %23, %22, %16, %15
  %26 = load i8*, i8** %1, align 8
  ret i8* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
