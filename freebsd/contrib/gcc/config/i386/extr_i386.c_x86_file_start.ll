; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_file_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_file_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_FILE_START_VERSION_DIRECTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"\09.version\09\2201.01\22\0A\00", align 1
@asm_out_file = common dso_local global i32 0, align 4
@X86_FILE_START_FLTUSED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"\09.global\09__fltused\0A\00", align 1
@ix86_asm_dialect = common dso_local global i64 0, align 8
@ASM_INTEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"\09.intel_syntax\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @x86_file_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86_file_start() #0 {
  %1 = call i32 (...) @default_file_start()
  %2 = load i64, i64* @X86_FILE_START_VERSION_DIRECTIVE, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @asm_out_file, align 4
  %6 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i64, i64* @X86_FILE_START_FLTUSED, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @asm_out_file, align 4
  %12 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i64, i64* @ix86_asm_dialect, align 8
  %15 = load i64, i64* @ASM_INTEL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @asm_out_file, align 4
  %19 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @default_file_start(...) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
