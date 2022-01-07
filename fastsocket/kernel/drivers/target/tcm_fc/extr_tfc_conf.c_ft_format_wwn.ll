; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_conf.c_ft_format_wwn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_conf.c_ft_format_wwn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ft_format_wwn(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %10 = call i32 @put_unaligned_be64(i32 %8, i32* %9)
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %14 = load i32, i32* %13, align 16
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %22 = load i32, i32* %21, align 16
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snprintf(i8* %11, i64 %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %18, i32 %20, i32 %22, i32 %24, i32 %26, i32 %28)
  ret i32 %29
}

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
