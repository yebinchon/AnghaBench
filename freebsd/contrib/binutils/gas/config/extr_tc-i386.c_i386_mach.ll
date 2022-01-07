; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_i386_mach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_i386_mach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_arch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@bfd_mach_x86_64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@bfd_mach_i386_i386 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Unknown architecture\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i386_mach() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @default_arch, align 4
  %3 = call i32 @strcmp(i32 %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @bfd_mach_x86_64, align 8
  store i64 %6, i64* %1, align 8
  br label %17

7:                                                ; preds = %0
  %8 = load i32, i32* @default_arch, align 4
  %9 = call i32 @strcmp(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* @bfd_mach_i386_i386, align 8
  store i64 %12, i64* %1, align 8
  br label %17

13:                                               ; preds = %7
  %14 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @as_fatal(i32 %14)
  br label %16

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %5, %11, %16
  %18 = load i64, i64* %1, align 8
  ret i64 %18
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @as_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
