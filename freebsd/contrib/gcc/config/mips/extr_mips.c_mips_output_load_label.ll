; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_output_load_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_output_load_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_EXPLICIT_RELOCS = common dso_local global i64 0, align 8
@mips_abi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%[lw\09%@,%%got_page(%0)(%+)\0A\09addiu\09%@,%@,%%got_ofst(%0)\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"%[ld\09%@,%%got_page(%0)(%+)\0A\09daddiu\09%@,%@,%%got_ofst(%0)\00", align 1
@ISA_HAS_LOAD_DELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"%[lw\09%@,%%got(%0)(%+)%#\0A\09addiu\09%@,%@,%%lo(%0)\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%[lw\09%@,%%got(%0)(%+)\0A\09addiu\09%@,%@,%%lo(%0)\00", align 1
@Pmode = common dso_local global i64 0, align 8
@DImode = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"%[dla\09%@,%0\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%[la\09%@,%0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mips_output_load_label() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @TARGET_EXPLICIT_RELOCS, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i32, i32* @mips_abi, align 4
  switch i32 %5, label %8 [
    i32 128, label %6
    i32 129, label %7
  ]

6:                                                ; preds = %4
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %19

7:                                                ; preds = %4
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %19

8:                                                ; preds = %4
  %9 = load i32, i32* @ISA_HAS_LOAD_DELAY, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %19

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %19

13:                                               ; preds = %0
  %14 = load i64, i64* @Pmode, align 8
  %15 = load i64, i64* @DImode, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %19

18:                                               ; preds = %13
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %19

19:                                               ; preds = %18, %17, %12, %11, %7, %6
  %20 = load i8*, i8** %1, align 8
  ret i8* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
