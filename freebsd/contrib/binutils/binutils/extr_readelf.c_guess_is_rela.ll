; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_guess_is_rela.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_guess_is_rela.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Don't know about relocations on this machine architecture\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @guess_is_rela to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guess_is_rela(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  switch i64 %4, label %10 [
    i64 207, label %5
    i64 206, label %5
    i64 199, label %5
    i64 196, label %5
    i64 181, label %5
    i64 190, label %5
    i64 179, label %5
    i64 165, label %5
    i64 164, label %5
    i64 186, label %5
    i64 153, label %5
    i64 152, label %5
    i64 146, label %5
    i64 201, label %7
    i64 200, label %7
    i64 198, label %7
    i64 197, label %7
    i64 195, label %7
    i64 194, label %7
    i64 193, label %7
    i64 192, label %7
    i64 191, label %7
    i64 180, label %7
    i64 189, label %7
    i64 178, label %7
    i64 188, label %7
    i64 187, label %7
    i64 176, label %7
    i64 175, label %7
    i64 174, label %7
    i64 173, label %7
    i64 172, label %7
    i64 171, label %7
    i64 170, label %7
    i64 169, label %7
    i64 168, label %7
    i64 167, label %7
    i64 185, label %7
    i64 162, label %7
    i64 161, label %7
    i64 184, label %7
    i64 160, label %7
    i64 183, label %7
    i64 159, label %7
    i64 158, label %7
    i64 157, label %7
    i64 154, label %7
    i64 149, label %7
    i64 150, label %7
    i64 148, label %7
    i64 147, label %7
    i64 145, label %7
    i64 144, label %7
    i64 143, label %7
    i64 142, label %7
    i64 141, label %7
    i64 133, label %7
    i64 182, label %7
    i64 132, label %7
    i64 131, label %7
    i64 130, label %7
    i64 129, label %7
    i64 128, label %7
    i64 205, label %9
    i64 204, label %9
    i64 203, label %9
    i64 202, label %9
    i64 177, label %9
    i64 166, label %9
    i64 163, label %9
    i64 156, label %9
    i64 155, label %9
    i64 151, label %9
    i64 140, label %9
    i64 139, label %9
    i64 138, label %9
    i64 137, label %9
    i64 136, label %9
    i64 135, label %9
    i64 134, label %9
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %2, align 4
  br label %14

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %2, align 4
  br label %14

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %10

10:                                               ; preds = %1, %9
  %11 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @warn(i32 %11)
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %10, %7, %5
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i32 @warn(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
