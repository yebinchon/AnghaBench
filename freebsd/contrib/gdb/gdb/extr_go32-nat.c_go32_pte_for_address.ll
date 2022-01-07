; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_go32_pte_for_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_go32_pte_for_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"linear address\00", align 1
@pdbr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Access to Page Tables is not supported on this system.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Page Table entry for address 0x%llx:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @go32_pte_for_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @go32_pte_for_address(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isspace(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  br label %18

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @parse_and_eval_address(i8* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %12, %2
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = call i32 @error_no_arg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = call i32 (...) @get_cr3()
  store i32 %47, i32* @pdbr, align 4
  %48 = load i32, i32* @pdbr, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = call i32 @puts_filtered(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %70

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = ashr i32 %53, 22
  %55 = and i32 %54, 1023
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %5, align 4
  %57 = ashr i32 %56, 12
  %58 = and i32 %57, 1023
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 4095
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = call i32 @printf_filtered(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @get_pde(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @get_pte(i32 %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @display_ptable_entry(i32 %67, i32 0, i32 1, i32 %68)
  br label %70

70:                                               ; preds = %52, %50
  ret void
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @parse_and_eval_address(i8*) #1

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local i32 @get_cr3(...) #1

declare dso_local i32 @puts_filtered(i8*) #1

declare dso_local i32 @printf_filtered(i8*, i64) #1

declare dso_local i32 @display_ptable_entry(i32, i32, i32, i32) #1

declare dso_local i32 @get_pte(i32, i32) #1

declare dso_local i32 @get_pde(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
